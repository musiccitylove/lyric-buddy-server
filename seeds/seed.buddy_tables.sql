BEGIN;

TRUNCATE
  buddy_songs,
  buddy_users
  RESTART IDENTITY CASCADE;

INSERT INTO buddy_users (user_name, full_name, password)
VALUES
  ('corona', 'Corona Virus','$2a$12$V3dyfP/7983rgeM2VEehTuy.IRzGAHMmqcOATBHfuOdzdhwTjV/lO'),
  ('virus', 'CoronaVirus2', '$2a$12$6ICNOVGoMfLnA56V3xFGquTZxDknjVQxyKVyBV7/xo3HFp3CCuQEi'),
  ('cdc', 'Disease Control', '$2a$12$tNr41OU8do71W6Km7hF6O.rXtprHxiQ92DUk/OQXM9xSbgooCyTf.'),
  ('who', 'World Health', '$2a$12$sRnx3AOuF7LTRXbWEQUWk.dd8rB9u7InvboS1XgS0SU/F27Dcx0d2'),
  ('pandemic', 'Pandemic', '$2a$12$7.l7Gp8NgjERgigQrHzRYOlvfn5/C3xJG7EXk7KDX4/jCfFNl7C5y'),
  ('flu', 'Influenza', '$2a$12$760GLparKtz.oMeBo4rgi.uQzGNEvby6edFzwexQtDssvMpRpto5G');

COMMIT;
