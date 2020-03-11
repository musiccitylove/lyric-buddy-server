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
        ...userFields,
        db.raw(
          `count(DISTINCT rev) AS number_of_reviews`
        ),
        db.raw(
          `AVG(rev.rating) AS average_review_rating`
        ),
      )
      // .leftJoin(
      //   'thingful_reviews AS rev',
      //   'thg.id',
      //   'rev.thing_id',
      // )
      .leftJoin(
        'buddy_users AS usr',
        'sng.user_id',
        'usr.id',
      )
      .groupBy('sng.id', 'usr.id')
  },

  getById(db, id) {
    return SongsService.getAllThings(db)
      .where('thg.id', id)
      .first()
  },

  // getReviewsForThing(db, thing_id) {
  //   return db
  //     .from('thingful_reviews AS rev')
  //     .select(
  //       'rev.id',
  //       'rev.rating',
  //       'rev.text',
  //       'rev.date_created',
  //       ...userFields,
  //     )
  //     .where('rev.thing_id', thing_id)
  //     .leftJoin(
  //       'thingful_users AS usr',
  //       'rev.user_id',
  //       'usr.id',
  //     )
  //     .groupBy('rev.id', 'usr.id')
  // },

  serializeSongs(songs) {
    return songs.map(this.serializeSongs)
  },

  serializeSongs(songs) {
    const songsTree = new Treeize()

    // Some light hackiness to allow for the fact that `treeize`
    // only accepts arrays of objects, and we want to use a single
    // object.
    const songData = songTree.grow([ song ]).getData()[0]

    return {
      id: songData.id,
      title: xss(songData.title),
      content: xss(songData.content),
      // date_created: thingData.date_created,
      user: songData.user || {},
      // number_of_reviews: Number(thingData.number_of_reviews) || 0,
      // average_review_rating: Math.round(thingData.average_review_rating) || 0,
    }
  },

  // serializeThingReviews(reviews) {
  //   return reviews.map(this.serializeThingReview)
  // },

  // serializeThingReview(review) {
  //   const reviewTree = new Treeize()

  //   // Some light hackiness to allow for the fact that `treeize`
  //   // only accepts arrays of objects, and we want to use a single
  //   // object.
  //   const reviewData = reviewTree.grow([ review ]).getData()[0]

  //   return {
  //     id: reviewData.id,
  //     rating: reviewData.rating,
  //     thing_id: reviewData.thing_id,
  //     text: xss(reviewData.text),
  //     user: reviewData.user || {},
  //     date_created: reviewData.date_created,
  //   }
  // },
}

const userFields = [
  'usr.id AS user:id',
  'usr.user_name AS user:user_name',
  'usr.full_name AS user:full_name',
  // 'usr.date_created AS user:date_created',
  // 'usr.date_modified AS user:date_modified',
]

module.exports = SongsService
