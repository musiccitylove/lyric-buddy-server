const express = require('express')
const SongsService = require('./songs-services')
const { requireAuth } = require('../middleware/jwt-auth')

const songsRouter = express.Router()

songsRouter
  .route('/')
  .get((req, res, next) => {
    SongsService.getAllThings(req.app.get('db'))
      .then(things => {
        res.json(SongsService.serializeThings(things))
      })
      .catch(next)
  })

songsRouter
  .route('/:song_id')
  .all(requireAuth)
  .all(checkSongsExists)
  .get((req, res) => {
    res.json(SongsService.serializeSongs(res.song))
  })

// songsRouter.route('/:songs_id/reviews/')
//   .all(requireAuth)
//   .all(checkThingExists)
//   .get((req, res, next) => {
//     ThingsService.getReviewsForThing(
//       req.app.get('db'),
//       req.params.thing_id
//     )
//       .then(reviews => {
//         res.json(ThingsService.serializeThingReviews(reviews))
//       })
//       .catch(next)
//   })

/* async/await syntax for promises */
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
