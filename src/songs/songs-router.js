const path = require('path');
const express = require('express')
const xss = require('xss');
const SongsService = require('./songs-services')
const { requireAuth } = require('../middleware/jwt-auth')

const songsRouter = express.Router()
const jsonParser = express.json();

const serializeSong = song => ({
  id: song.id,
  title: xss(song.title),
  content: xss(song.content),
  songkey: song.songkey
});

songsRouter
  .route('/')
  .get((req, res, next) => {
    SongsService.getAllSongs(req.app.get('db'))
      .then(songs => {
        res.json(SongsService.serializeSongs(songs))
      })
      .catch(next)
  })
  .post(jsonParser, (req, res, next) => {
    const { title, content, songkey } = req.body;
    const newSong = { title, content, songkey };

    for (const [key, value] of Object.entries(newSong)) {
      if (value == null) { // eslint-disable-line eqeqeq
        return res.status(400).json({
          error: { message: `Missing '${key}' in request body`}
        });
      }
    }


    SongsService.insertSong(
      req.app.get('db'),
      newSong
    )
      .then(song => {
        res
          .status(201)
          .location(path.posix.join(req.originalUrl, `${song.id}`))
          .json(serializeSong(song));
      })
      .catch(next);
  });

songsRouter
  .route('/:song_id')
  .all(requireAuth)
  .all(checkSongsExists)
  .get((req, res) => {
    res.json(serializeSongs(res.song))
  })


async function checkSongsExists(req, res, next) {
  try {
    const thing = await SongsService.getById(
      req.app.get('db'),
      req.params.song_id
    )

    if (!song)
      return res.status(404).json({
        error: `song doesn't exist`
      })

    res.song = song
    next()
  } catch (error) {
    next(error)
  }
}

module.exports = songsRouter
