const xss = require('xss')
const Treeize = require('treeize')

const SongsService = {
  getAllSongs(db) {
    return db
      .from('buddy_songs AS sng')
      .select(
        'sng.id',
        'sng.title',
        // 'sng.date_created',
        'sng.content',
        'sng.songkey',
        ...userFields,

      )

      .leftJoin(
        'buddy_users AS usr',
        'sng.user_id',
        'usr.id',
      )
      .groupBy('sng.id', 'usr.id')
  },

  insertSong(knex, newSong) {
    return knex
      .insert(newSong)
      .into('buddy_songs')
      .returning('*')
      .then(rows => {
        return rows[0];
      });
  },

  getById(db, id) {
    return SongsService.getAllThings(db)
      .where('sng.id', id)
      .first()
  },



  serializeSongs(songs) {
    console.log(songs)
    return songs.map(this.serializeSong)
  },

  serializeSong(song) {
    console.log(song)

  

    return {
       id: song.id,
      title: xss(song.title),
      content: xss(song.content),
      songkey: xss(song.songkey),

    }
  },


}

const userFields = [
  'usr.id AS user:id',
  'usr.user_name AS user:user_name',
  'usr.full_name AS user:full_name',
  // 'usr.date_created AS user:date_created',
  // 'usr.date_modified AS user:date_modified',
]

module.exports = SongsService
