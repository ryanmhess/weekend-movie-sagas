-- CREATE DATABASE "saga_movies_weekend"

CREATE TABLE "movies" (
  "id" SERIAL PRIMARY KEY,
  "title" VARCHAR(120) NOT NULL,
  "poster"  VARCHAR(120) NOT NULL,
  "description" TEXT NOT NULL,
  "trailer" VARCHAR DEFAULT 'Pending Admin Review'
);

CREATE TABLE "genres" (
  "id" SERIAL PRIMARY KEY,
  "name" VARCHAR(80) NOT NULL
);

-- JUNCTION TABLE
-- Movies can have multiple genres and each genre can be applied to multiple movies
-- This is many-to-many!
CREATE TABLE "movies_genres" (
  "id" SERIAL PRIMARY KEY,
  "movie_id" INT REFERENCES "movies" NOT NULL,
  "genre_id" INT REFERENCES "genres" NOT NULL
);

--------[ DATA! ]---------

-- starter movies
INSERT INTO "movies" ("title", "poster", "description", "trailer")
VALUES 
('Alien', 'images/alien.webp', 'In the distant future, the crew of the commercial spaceship Nostromo are on their way home when they pick up a distress call from a distant moon. The crew are under obligation to investigate and the spaceship descends on the moon afterwards. After a rough landing, three crew members leave the spaceship to explore the area on the moon. At the same time as they discover a hive colony of some unknown creature, the ship''s computer deciphers the message to be a warning, not a distress call. When one of the eggs is disturbed, the crew realizes that they are not alone on the spaceship and they must deal with the consequences.', 'https://www.youtube.com/embed/LjLamj-b0I8?controls=0'),
('Aliens', 'images/aliens.webp', '57 years after Ellen Ripley had a close encounter with the reptilian alien creature from the first movie, she is called back, this time, to help a group of highly trained colonial marines fight off against the sinister extraterrestrials. But this time, the aliens have taken over a space colony on the moon LV-426. When the colonial marines are called upon to search the deserted space colony, they later find out that they are up against more than what they bargained for. Using specially modified machine guns and enough firepower, it''s either fight or die as the space marines battle against the aliens. As the Marines do their best to defend themselves, Ripley must attempt to protect a young girl who is the sole survivor of the nearly wiped out space colony.', 'https://www.youtube.com/embed/oSeQQlaCZgU?controls=0'),
('Back to the Future', 'images/back-to-the-future.jpg', 'Marty McFly, a typical American teenager of the Eighties, is accidentally sent back to 1955 in a plutonium-powered DeLorean "time machine" invented by a slightly mad scientist. During his often hysterical, always amazing trip back in time, Marty must make certain his teenage parents-to-be meet and fall in love - so he can get back to the future.', 'https://www.youtube.com/embed/qvsgGtivCgs?controls=0'),
('The Beastmaster', 'images/beastmaster.webp', 'Dar, the son of a king, is hunted by a priest after his birth, but his new adoptive father rescues him from a cult ritual and taken to be raised in a humble village, where he learns that he has the ability to communicate with animals. Years later when he''s all grown up, the priest''s followers murder his adoptive father and other villagers, and Dar begins his quest for revenge, befriending several animals along the way.', 'https://www.youtube.com/embed/XYvILyXjSaY?controls=0'),
('Blade Runner', 'images/blade-runner.webp', 'In the early twenty-first century, the Tyrell Corporation, during what was called the Nexus phase, developed robots, called "replicants", that were supposed to aid society, the replicants which looked and acted like humans. When the superhuman generation Nexus 6 replicants, used for dangerous off-Earth endeavors, began a mutiny on an off-Earth colony, replicants became illegal on Earth. Police units, called "blade runners", have the job of destroying - or in their parlance "retiring" - any replicant that makes its way back to or created on Earth, with anyone convicted of aiding or assisting a replicant being sentenced to death. It''s now November, 2019 in Los Angeles, California. Rick Deckard, a former blade runner, is called out of retirement when four known replicants, most combat models, have made their way back to Earth, with their leader being Roy Batty. One, Leon Kowalski, tried to infiltrate his way into the Tyrell Corporation as an employee, but has since been able to escape. Beyond following Leon''s trail in hopes of finding and retiring them all, Deckard believes part of what will help him is figuring out what the replicants wanted with the Tyrell Corporation in trying to infiltrate it. The answer may lie with Tyrell''s fail-safe backup mechanism. Beyond tracking the four, Deckard faces a possible dilemma in encountering a fifth replicant: Rachael, who works as Tyrell''s assistant. The issue is that Dr. Elden Tyrell is experimenting with her, to provide her with fake memories so as to be able to better control her. With those memories, Rachael has no idea that she is not human. The problem is not only Rachael''s assistance to Deckard, but that he is beginning to develop feelings for her.', 'https://www.youtube.com/embed/eogpIG53Cis?controls=0'),
('Conan the Barbarian', 'images/conan-the-barbarian.webp', 'Beyond the mists of time, having witnessed the brutal death of his blacksmith father and the massacre of the entire village by the murderous followers of Thulsa Doom, the undead evil wizard and servant of the serpent-god, Set, Conan, the orphaned young Cimmerian, is condemned to a life of slavery. Chained to the perpetual Wheel of Pain, the helpless boy grows into a man, and after years of rigorous training as a fierce gladiator, Conan, now an unstoppable mountain of muscle, regains his precious freedom. But, with the image of the blood-soaked raid etched on his mind, Conan teams up with Subotai, the Hyrkanian thief, and Valeria, the Queen of the Bandits, and embarks on a peril-laden journey to the mysterious Mountain of Power, and the impregnable Snake Cult Temple. Will Conan avenge his parents?', 'https://www.youtube.com/embed/Nok-jOYn6Dg?controls=0'),
('Conan the Destroyer', 'images/conan-the-destroyer.webp', 'The wandering barbarian, Conan, alongside his goofy rogue pal, Malak, are tasked with escorting Queen Taramis'' virgin niece, Princess Jehnna and her bodyguard, Bombaata, to a mystical island fortress. They must retrieve a magical crystal that will help them procure the horn that legends say can awaken the god of dreams, Dagoth. Along the way, Conan reunites with the wise wizard, Akiro and befriends the fierce female fighter, Zula. Together the heroes face ancient traps, powerful Wizards, plots of betrayal, and even the dream god, Dagoth, himself!', 'https://www.youtube.com/embed/wbjjhKaoZKs?controls=0'),
('The Dark Crystal', 'images/the-dark-crystal.webp', 'Another planet, another time. One thousand years ago, the mysterious Dark Crystal was damaged by one of the Urskeks and an age of chaos has began. The evil race of grotesque birdlike lizards, the Skeksis, gnomish dragons who rule their fantastic planet with an iron claw. Meanwhile, orphan Jen, raised in solitude by a race of the peace-loving wizards called the Mystics, embarks on a quest to find the missing shard of the Dark Crystal which gives the Skeksis their power and restore the balance of the universe.', 'https://www.youtube.com/embed/9PTjIWyRmls?controls=0'),
('Dune', 'images/dune.webp', 'In the distant year of 10191, all the planets of the known Universe are under the control of Padishah Emperor Shaddam IV and the most important commodity in the Universe is a substance called the spice "MELANGE" which is said to have the power of extending life, expanding the consciousness and even to "fold space" ; being able to travel to any distance without physically moving. This spice "MELANGE" is said to only be produced in the desert planet of Arrakis, where the FREMEN people have the prophecy of a man who will lead them to true freedom. This "desert planet"of Arrakis is also known as DUNE. A secret report of the space "GUILD" talks about some circumstances and plans that could jeopardize the production of "SPICE" with four planets involved: ARRAKIS, CALADAN, GIEDI PRIME and KAITAIN, a world at least visually very alike to Earth and house of the Emperor of the known Universe. The "GUILD" sends a third stage navigator to KAITAIN to ask details from the Emperor and to demand him the killing of young Paul Atreides, son of the Duke Leto Atreides of CALADAN.', 'https://www.youtube.com/embed/hzUlXEyvJeA?controls=0'),
('The Goonies', 'images/the-goonies.webp', 'Mikey and his friends have always wanted to go on an adventure. One night they are all in Mikey''s attic and Mikey stumbles across an old map. Mikey has always wanted to know if One-eyed Willy ever was a real person and now he might. They set off and later realize that they have to go through the evil Mama Fratelli''s restaurant to get to a secret passage to the caves. As they try to get into the caves Mama Fratelli catches Chunk and he is left behind. He then meets Sloth one of Mama Fratelli''s sons with a messed up face. He befriends Sloth. Meanwhile Mama Fratelli and her sons are trying to get to the treasure too. Will the kids make it there before Mama Fratelli does? Will Chuck ever get out of her basement?', 'https://www.youtube.com/embed/hJ2j4oWdQtU?controls=0'),
('Gremlins', 'images/gremlins.webp', 'Minature green monsters tear through the small town of Kingston Falls. Hijinks ensue as a mild-mannered bank teller releases these hideous loonies after gaining a new pet and violating two of three simple rules: No water (violated), no food after midnight (violated), and no bright light. Hilarious mayhem and destruction in a town straight out of Norman Rockwell. So, when your washing machine blows up or your TV goes on the fritz, before you call the repair man, turn on all the lights and look under all the beds. ''Cause you never can tell, there just might be a gremlin in your house.', 'https://www.youtube.com/embed/XBEVwaJEgaA?controls=0'),
('Labyrinth', 'images/labyrinth.webp', 'Sarah is forced by her father and her stepmother to babysit her baby stepbrother, Toby, while they are out. He does not stop crying and she wishes that he would be taken away. Out of the blue, he stops crying and when she looks for him in his crib, she learns that her wish was granted, and the Goblin King Jareth has taken him to his castle in the Goblin City in the middle of a labyrinth. Sarah repents and asks Jareth to give him back, but Jareth tells her that she has to rescue him before midnight. Soon she teams up with some allies. Will they rescue Toby in time?', 'https://www.youtube.com/embed/O2yd4em1I6M'),
('Mad Max Beyond Thunderdome', 'images/mad-max.jpg', 'Left for dead in the unforgiving deserts of post-nuclear Australia, after defeating Lord Humungus'' barbarian horde of bikers in The Road Warrior (1981), the former officer of the tough Main Force Patrol, Max Rockatansky, happens upon Bartertown: the remote market-town outpost in the middle of the dry Wasteland, and the realm of the autocratic Queen Aunty Entity. There, a lethal challenge awaits Max, who, in return for his freedom and provisions, must engage in a bloody match to the death with the grotesque symbiotic being, the Master/Blaster. However, an unforeseen complication after the brutal fight in the stronghold''s combat arena, The Thunderdome, will banish, once more, Max into the vast wilderness, only to discover the peaceful haven of The Lost Tribe: a community of marooned children who survive on their own, waiting for the arrival of the legendary Captain Walker. Is "Mad" Max, indeed, their saviour? Can he overthrow Bartertown''s ruthless tyrant?', 'https://www.youtube.com/embed/9JKZKjFjHDM'),
('Monty Python and the Holy Grail', 'images/monty-python-holy-grail.webp', 'History is turned on its comic head when, in tenth-century England, King Arthur travels the countryside to find knights who will join him at the Round Table in Camelot. Gathering up the men is a tale in itself but after a bit of a party at Camelot, many decide to leave only to be stopped by God, who sends them on a quest: to find the Holy Grail. After a series of individual adventures, the knights are reunited but must face a wizard named Tim the Enchanter, killer rabbits and lessons in the use of holy hand grenades. Their quest comes to an end however when the Police intervene - just what you would expect in a Monty Python movie.', 'https://www.youtube.com/embed/urRkGvhXc8w'),
('The Princess Bride', 'images/princess-bride.webp', 'An elderly man reads the book "The Princess Bride" to his sick and thus currently bedridden adolescent grandson, the reading of the book which has been passed down within the family for generations. The grandson is sure he won''t like the story, with a romance at its core, he prefers something with lots of action and "no kissing", but he lets grandfather continue, because he doesn''t want to hurt his feelings. The story centers on Buttercup, a former farm girl who has been chosen as the princess bride to Prince Humperdinck of Florian. Buttercup does not love him, she who still laments the death of her one true love, Westley, five years ago. Westley was a hired hand on the farm, his stock answer of "as you wish" to any request she made of him which she came to understand was his way of saying that he loved her. But Westley went away to sea, only to be killed by the Dread Pirate Roberts. On a horse ride to clear her mind of her upcoming predicament of marriage, Buttercup is kidnapped by a band of bandits: Vizzini who works on his wits, and his two associates, a giant named Fezzik who works on his brawn, and a Spaniard named Inigo Montoya, who has trained himself his entire life to be an expert swordsman. They in turn are chased by the Dread Pirate Roberts himself. But chasing them all is the Prince, and his men led by Count Tyrone Rugen. What happens to these collectives is dependent partly on Buttercup, who does not want to marry the Prince, and may see other options as lesser evils, and partly on the other motives of individuals within the groups. But a larger question is what the grandson will think of the story as it proceeds and at its end, especially as he sees justice as high a priority as action.', 'https://www.youtube.com/embed/O3CIXEAjcc8'),
('Star Wars: Episode IV - A New Hope', 'images/a-new-hope.jpeg', 'The Imperial Forces, under orders from cruel Darth Vader, hold Princess Leia hostage in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker and Han Solo, captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 and C-3PO to rescue the beautiful princess, help the Rebel Alliance and restore freedom and justice to the Galaxy.', 'https://www.youtube.com/embed/vZ734NWnAHA'),
('Star Wars: Episode V - The Empire Strikes Back', 'images/empire-strikes-back.jpeg', 'Luke Skywalker, Han Solo, Princess Leia and Chewbacca face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi Master''s help will Luke survive when the Dark Side of the Force beckons him into the ultimate duel with Darth Vader.', 'https://www.youtube.com/embed/JNwNXF9Y6kY'),
('Star Wars: Episode VI - Return of the Jedi', 'images/return-of-the-jedi.jpeg', 'Luke Skywalker battles Jabba the Hutt and Darth Vader to save his comrades in the Rebel Alliance and triumph over the Galactic Empire. Han Solo and Princess Leia reaffirm their love, and team with Chewbacca, Lando Calrissian, the Ewoks, and droids C-3PO and R2-D2 to aid in the disruption of the Dark Side, and the defeat of the evil emperor.', 'https://www.youtube.com/embed/7L8p7_SLzvU'),
('The Terminator', 'images/the-terminator.webp', 'Sent back from a dystopian 2029--where the cold machines have conquered the entire world--to 1984 Los Angeles, the indestructible cyborg-assassin known as the "Terminator" commences his deadly mission to kill humankind''s most important woman: the unsuspecting Sarah Connor. However, from the same war-torn post-apocalyptic future comes a battle-scarred defender--Kyle Reese, a brave soldier of the human Resistance Army--bent on stopping the cybernetic killer from eliminating the world''s last hope. But, the Terminator has no feelings, he doesn''t sleep, and above all, he won''t stop until he carries out his grim task. Does our future lie in our past?', 'https://www.youtube.com/embed/k64P4l2Wmeg'),
('WarGames', 'images/wargames.webp', 'A young computer whiz kid accidentally connects into a top secret super-computer which has complete control over the U.S. nuclear arsenal. It challenges him to a game between America and Russia, and he innocently starts the countdown to World War III. Can he convince the computer he wanted to play a game and not the real thing?', 'https://www.youtube.com/embed/hbqMuvnx5MU');

-- starter genres
INSERT INTO "genres" ("name")
VALUES 
('Action'),       -- 1
('Adventure'),    -- 2
('Comedy'),       -- 3
('Drama'),        -- 4
('Family'),       -- 5
('Fantasy'),      -- 6
('Horror'),       -- 7
('Sci-Fi');       -- 8

-- starter movies and genres data
INSERT INTO "movies_genres" ("movie_id", "genre_id")
VALUES 
(1,7), (1,8),             -- Alien
(2,1), (2,7), (2,8),      -- Aliens
(3,2), (3,3), (3,8),      -- Back to the Future
(4,1), (4,2), (4,6),      -- The Beastmaster
(5,1), (5,4), (5,8),      -- Blade Runner
(6,1), (6,2), (6,6),      -- Conan the Barbarian
(7,1), (7,2), (7,6),      -- Conan the Destroyer
(8,2), (8,5), (8,6),      -- The Dark Crystal
(9,1), (9,2), (9,8),      -- Dune
(10,2), (10,3), (10,5),   -- The Goonies
(11,3), (11,6), (11,7),   -- Gremlins
(12,2), (12,5), (12,6),   -- Labyrinth
(13,1), (13,2), (13,8),   -- Mad Max Beyond Thunderdome
(14,2), (14,3), (14,6),   -- Monty Python and the Holy Grail
(15,2), (15,5), (15,6),   -- The Princess Bride
(16,1), (16,2), (16,6),   -- Star Wars: Episode IV - A New Hope
(17,1), (17,2), (17,6),   -- Star Wars: Episode V - The Empire Strikes Back
(18,1), (18,2), (18,6),   -- Star Wars: Episode VI - Return of the Jedi
(19,1), (19,8),           -- The Terminator
(20,1), (20,4), (20,8);   -- WarGames
