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

-- INSERT INTO buddy_songs (title, songkey, user_id, content)
-- VALUES
--   ('Toxic by Britney Spears', 'D#/Cm', 1, 'Baby, can''t you see
-- I''m calling
-- A guy like you
-- Should wear a warning
-- It''s dangerous
-- I''m fallin''

-- There''s no escape
-- I can''t wait
-- I need a hit
-- Baby, give me it
-- You''re dangerous
-- I''m lovin'' it

-- Too high
-- Can''t come down
-- Losing my head
-- Spinning ‘round and ‘round
-- Do you feel me now?

-- With a taste of your lips I''m on a ride
-- You''re toxic I''m slipping under
-- With a taste of a poison paradise
-- I''m addicted to you
-- Don''t you know that you''re toxic
-- And I love what you do
-- Don''t you know that you''re toxic

-- It''s getting late
-- To give you up
-- I took a sip
-- From my devil''s cup
-- Slowly
-- It''s taking over me

-- Too high
-- Can''t come down
-- It''s in the air
-- And it''s all around
-- Can you feel me now

-- With a taste of your lips I''m on a ride
-- You''re toxic I''m slipping under
-- With a taste of a poison paradise
-- I''m addicted to you
-- Don''t you know that you''re toxic
-- And I love what you do
-- Don''t you know that you''re toxic

-- Don''t you know that you''re toxic

-- [x2]
-- With a taste of your lips I''m on a ride
-- You''re toxic I''m slipping under
-- With a taste of a poison paradise
-- I''m addicted to you
-- Don''t you know that you''re toxic

-- Intoxicate me now
-- With your lovin'' now
-- I think I''m ready now
-- I think I''m ready now
-- Intoxicate me now
-- With your lovin'' now
-- I think I''m ready now'),

--   ('So Sick by Ne-Yo', 'F#/D#m', 2, "Gotta change my answering machine
-- Now that I'm alone
-- 'Cause right now it says that we
-- Can't come to the phone
-- And I know it makes no sense
-- 'Cause you walked out the door
-- But it's the only way I hear your voice anymore

-- (It's ridiculous)
-- It's been months
-- And for some reason I just
-- (Can't get over us)
-- And I'm stronger than this

-- (Enough is enough)
-- No more walking round
-- With my head down
-- I'm so over being blue
-- Crying over you

-- And I'm so sick of love songs
-- So tired of tears
-- So done with wishing you were still here
-- Said I'm so sick of love songs, so sad and slow
-- So why can't I turn off the radio?

-- Gotta fix that calendar I have
-- That's marked July 15th
-- Because since there's no more you
-- There's no more anniversary
-- I'm so fed up with my thoughts of you
-- And your memory
-- And how every song reminds me of what used to be

-- That's the reason I'm so sick of love songs
-- So tired of tears
-- So done with wishing you were still here
-- Said I'm so sick of love songs, so sad and slow
-- So why can't I turn off the radio?

-- (Leave me alone)
-- Leave me alone
-- (Stupid love songs)
-- Don't make me think about her smile
-- Or having my first child
-- I'm letting go
-- Turning off the radio

-- 'Cause I'm so sick of love songs
-- So tired of tears
-- So done with wishing she was still here
-- Said I'm so sick of love songs, so sad and slow
-- So why can't I turn off the radio?
-- (Why can't I turn off the radio?)

-- Said I'm so sick of love songs
-- So tired of tears
-- So done with wishing she was still here
-- Said I'm so sick of love songs, so sad and slow
-- So why can't I turn off the radio?
-- (Why can't I turn off the radio?)

-- And I'm so sick of love songs
-- So tired of tears
-- So done with wishin' you were still here
-- Said I'm so sick of love songs, so sad and slow
-- So why can't I turn off the radio?
-- (Why can't I turn off the radio?)
-- Why can't I turn off the radio?"
-- ),

--   ("Don't Stand So Close To Me ● The Police", 'A#/Gm', 3, "Young teacher, the subject
-- Of schoolgirl fantasy
-- She wants him so badly
-- Knows what she wants to be
-- Inside her there's longing
-- This girl's an open page
-- Book marking - she's so close now
-- This girl is half his age

-- Don't stand, don't stand so
-- Don't stand so close to me
-- Don't stand, don't stand so
-- Don't stand so close to me

-- Her friends are so jealous
-- You know how bad girls get
-- Sometimes it's not so easy
-- To be the teacher's pet
-- Temptation, frustration
-- So bad it makes him cry
-- Wet bus stop, she's waiting
-- His car is warm and dry

-- Don't stand, don't stand so
-- Don't stand so close to me
-- Don't stand, don't stand so
-- Don't stand so close to me

-- Loose talk in the classroom
-- To hurt they try and try
-- Strong words in the staffroom
-- The accusations fly
-- It's no use, he sees her
-- He starts to shake and cough
-- Just like the old man in
-- That book by Nabokov

-- Don't stand, don't stand so
-- Don't stand so close to me
-- Don't stand, don't stand so
-- Don't stand so close to me

-- Don't stand, don't stand so
-- Don't stand so close to me
-- [Back:] (Please don't stand so close to me)
-- [Repeat to fade]"),

--   ('Staying Alive by The Bee Gees', 'G#/Fm', 4, "Well, you can tell by the way I use my walk,
-- I'm a woman's man: no time to talk.
-- Music loud and women warm,
-- I've been kicked around since I was born.

-- And now it's all right. It's OK.
-- And you may look the other way.
-- We can try to understand
-- The New York Times' effect on man.

-- Whether you're a brother
-- Or whether you're a mother,
-- You're stayin' alive, stayin' alive.
-- Feel the city breakin'
-- And everybody shakin',
-- And we're stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive.

-- Well, now, I get low and I get high,
-- And if I can't get either, I really try.
-- Got the wings of heaven on my shoes.
-- I'm a dancin' man and I just can't lose.

-- You know it's all right. It's OK.
-- I'll live to see another day.
-- We can try to understand
-- The New York Times' effect on man.

-- Whether you're a brother
-- Or whether you're a mother,
-- You're stayin' alive, stayin' alive.
-- Feel the city breakin'
-- And everybody shakin',
-- And we're stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive.

-- Life goin' nowhere. Somebody help me.
-- Somebody help me, yeah.
-- Life goin' nowhere. Somebody help me, yeah.
-- Stayin' alive.

-- Well, you can tell by the way I use my walk,
-- I'm a woman's man: no time to talk.
-- Music loud and women warm,
-- I've been kicked around since I was born.

-- And now it's all right. It's OK.
-- And you may look the other way.
-- We can try to understand
-- The New York Times' effect on man.

-- Whether you're a brother
-- Or whether you're a mother,
-- You're stayin' alive, stayin' alive.
-- Feel the city breakin'
-- And everybody shakin',
-- And we're stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive, stayin' alive.
-- Ah, ha, ha, ha, stayin' alive.

-- Life goin' nowhere. Somebody help me.
-- Somebody help me, yeah.
-- Life goin' nowhere. Somebody help me, yeah.
-- I'm stayin' alive.

-- Life goin' nowhere. Somebody help me.
-- Somebody help me, yeah.
-- Life goin' nowhere. Somebody help me, yeah.
-- I'm stayin' alive.

-- Life goin' nowhere. Somebody help me.
-- Somebody help me, yeah.
-- Life goin' nowhere. Somebody help me, yeah.
-- I'm stayin' alive.

-- Life goin' nowhere. Somebody help me.
-- Somebody help me, yeah.
-- Life goin' nowhere. Somebody help me, yeah.
-- I'm stayin' alive."),

--   ("Toxicity by System of a Down", 'D#/Cm', 5, "Conversion, software version 7.0
-- Looking at life through the eyes of a tire hub

-- Eating seeds as a pastime activity
-- The toxicity of our city, of our city

-- New, what do you own the world?
-- How do you own disorder, disorder
-- Now, somewhere between the sacred silence, sacred silence and sleep
-- Somewhere between the sacred silence and sleep
-- Disorder, disorder, disorder

-- More wood for their fires, loud neighbours
-- Flashlight reveries caught in the headlights of a truck

-- Eating seeds as a pastime activity
-- The toxicity of our city, of our city

-- New, what do you own the world?
-- How do you own disorder, disorder
-- Now, somewhere between the sacred silence, sacred silence and sleep
-- Somewhere between the sacred silence and sleep
-- Disorder, disorder, disorder

-- New, what do you own the world?
-- How do you own disorder
-- Now, somewhere between the sacred silence, sacred silence and sleep
-- Somewhere between the sacred silence and sleep
-- Disorder, disorder, disorder

-- When I became the sun
-- I shone life into the man's hearts
-- When I became the sun
-- I shone life into the man's hearts"
-- ),
  -- ('Personal EMP Generator', 'C', 6, 'With its guaranteed 10m radius, this discreet device will disable an entire busload of iPhones with the push of a button. It is recommended to include an analog camera which can record the entertaining looks on the faces of those affected, as well as a riot shield in case of mass hysteria.'),
  -- ('Foolproof Instant Wealth Pamphlet', 'C', 1, 'Purchase this pamphlet for $100. Sell this pamphlet to a billion people for $100. Acquisition of this pamphlet is indeed proof of foolishness!'),
  -- ('Story Water Spigot', 'C', 2, 'Once installed by a qualified leprechaun, this spigot will produce a steady stream of stories which can be later be adapted to motion pictures which will not be quite as good as the originals.'),
  -- ('Ruby Red Slippers', 'A', 3, 'Get home quicker than either Uber or Lyft! Three taps of the heels is all it takes. One size fits all.'),
  -- ( 'Magic Lamp', 'A', 4, 'May or may not produce a genie.');



COMMIT;
