BEGIN;

TRUNCATE
  buddy_songs,
  buddy_users
  RESTART IDENTITY CASCADE;

INSERT INTO buddy_users (user_name, full_name, password)
VALUES
  ('dunder', 'Dunder Mifflin','$2a$12$V3dyfP/7983rgeM2VEehTuy.IRzGAHMmqcOATBHfuOdzdhwTjV/lO'),
  ('b.deboop', 'Bodeep Deboop', '$2a$12$6ICNOVGoMfLnA56V3xFGquTZxDknjVQxyKVyBV7/xo3HFp3CCuQEi'),
  ('c.bloggs', 'Charlie Bloggs', '$2a$12$tNr41OU8do71W6Km7hF6O.rXtprHxiQ92DUk/OQXM9xSbgooCyTf.'),
  ('s.smith', 'Sam Smith', '$2a$12$sRnx3AOuF7LTRXbWEQUWk.dd8rB9u7InvboS1XgS0SU/F27Dcx0d2'),
  ('lexlor', 'Alex Taylor', '$2a$12$7.l7Gp8NgjERgigQrHzRYOlvfn5/C3xJG7EXk7KDX4/jCfFNl7C5y'),
  ('wippy', 'Ping Won In', '$2a$12$760GLparKtz.oMeBo4rgi.uQzGNEvby6edFzwexQtDssvMpRpto5G');

INSERT INTO buddy_songs (title, key, user_id, content)
VALUES
  ('Hand-Painted Rubber Ducky', 'Am', 1, 'This ducky has been hand-painted and is now art. Therefore it is useless and cannot be put in water.'),
  ('Cloning Machine', 'B', 2, '100% guaranteed to occasionally work every time! Requires a 167.23v power outlet or a dragonscale battery (obtained separately by solving a riddle).'),
  ('Kangaroo Carrier', 'Cm', 3, 'This convenient item can assist you in bringing your kangaroo to your favorite grocery store, or as a conversation starter at a first date or funeral.'),
  ('Love Potion #26', 'Dm', 4, 'While not as well known as its predecessor, Love Potion #9, this formulation has been proven to be effective in winning the affections of some small amphibians.'),
  ('My Freeze Ray', 'A', 5, 'With this freeze ray, you can stop the world.'),
  ('Personal EMP Generator', 'C', 6, 'With its guaranteed 10m radius, this discreet device will disable an entire busload of iPhones with the push of a button. It is recommended to include an analog camera which can record the entertaining looks on the faces of those affected, as well as a riot shield in case of mass hysteria.'),
  ('Foolproof Instant Wealth Pamphlet', 'C', 1, 'Purchase this pamphlet for $100. Sell this pamphlet to a billion people for $100. Acquisition of this pamphlet is indeed proof of foolishness!'),
  ('Story Water Spigot', 'C', 2, 'Once installed by a qualified leprechaun, this spigot will produce a steady stream of stories which can be later be adapted to motion pictures which will not be quite as good as the originals.'),
  ('Ruby Red Slippers', 'A', 3, 'Get home quicker than either Uber or Lyft! Three taps of the heels is all it takes. One size fits all.'),
  ( 'Magic Lamp', 'A', 4, 'May or may not produce a genie.');



COMMIT;
