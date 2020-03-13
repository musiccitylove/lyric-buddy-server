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
        'sng.key',
        ...userFields,

      )

      .leftJoin(
        'buddy_users AS usr',
        'sng.user_id',
        'usr.id',
      )
      .groupBy('sng.id', 'usr.id')
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
      key: xss(song.key),

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
