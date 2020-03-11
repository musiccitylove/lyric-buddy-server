CREATE TABLE buddy_users (
  id SERIAL PRIMARY KEY,
  user_name TEXT NOT NULL UNIQUE,
  full_name TEXT NOT NULL,
  password TEXT NOT NULL
);

ALTER TABLE buddy_songs
  ADD COLUMN
    user_id INTEGER REFERENCES buddy_users(id)
    ON DELETE SET NULL;


