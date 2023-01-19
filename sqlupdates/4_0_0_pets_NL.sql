DROP TABLE IF EXISTS `pet_actions`;
CREATE TABLE IF NOT EXISTS `pet_actions` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `pet_type` int(11) NOT NULL,
    `pet_name` varchar(32) NOT NULL,
    `offspring_type` int(11) NOT NULL DEFAULT -1,
    `happy_actions` varchar(100) NOT NULL DEFAULT '',
    `tired_actions` varchar(100) NOT NULL DEFAULT '',
    `random_actions` varchar(100) NOT NULL DEFAULT '',
    `can_swim` enum('1','0') DEFAULT '0',
    PRIMARY KEY (`ID`) USING BTREE
    ) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `pet_actions` (`id`, `pet_type`, `pet_name`, `offspring_type`, `happy_actions`, `tired_actions`, `random_actions`, `can_swim`) VALUES
	(0, 0, 'Dog', -1, '', '', '', '0'),
	(1, 1, 'Cat', -1, '', '', '', '0'),
	(2, 2, 'Crocodile', -1, '', '', '', '0'),
	(3, 3, 'Terrier', -1, '', '', '', '0'),
	(4, 4, 'Bear', -1, '', '', '', '0'),
	(5, 5, 'Pig', -1, '', '', '', '0'),
	(6, 6, 'Lion', -1, '', '', '', '0'),
	(7, 7, 'Rhino', -1, '', '', '', '0'),
	(8, 8, 'Spider', -1, '', '', '', '0'),
	(9, 9, 'Turtle', -1, '', '', '', '1'),
	(10, 10, 'Chicken', -1, '', '', '', '0'),
	(11, 11, 'Frog', -1, '', '', '', '0'),
	(12, 12, 'Dragon', -1, '', '', '', '0'),
	(13, 13, '', -1, '', '', '', '0'),
	(14, 14, 'Monkey', -1, '', '', '', '1'),
	(15, 15, 'Horse', -1, '', '', '', '0'),
	(16, 16, 'Monsterplant', -1, '', '', '', '0'),
	(17, 17, 'Bunny', -1, '', '', '', '0'),
	(18, 18, 'Evil Bunny', -1, '', '', '', '0'),
	(19, 19, 'Bored Bunny', -1, '', '', '', '0'),
	(20, 20, 'Love Bunny', -1, '', '', '', '0'),
	(21, 21, 'Wise Pidgeon', -1, '', '', '', '0'),
	(22, 22, 'Cunning Pidgeon', -1, '', '', '', '0'),
	(23, 23, 'Evil Monkey', -1, '', '', '', '1'),
	(24, 24, 'Baby Bear', -1, '', '', '', '1'),
	(25, 25, 'Baby Terrier', -1, '', '', '', '1'),
	(26, 26, 'Gnome', -1, '', '', '', '0'),
	(27, 27, 'Leprechaun', -1, '', '', '', '0'),
	(28, 28, 'Baby Cat', -1, '', '', '', '1'),
	(29, 29, 'Baby Dog', -1, '', '', '', '1'),
	(30, 30, 'Baby Pig', -1, '', '', '', '1'),
	(31, 31, 'Haloompa', -1, '', '', '', '0'),
	(32, 32, 'Fools', -1, '', '', '', '1'),
	(33, 33, 'Pterodactyl', -1, '', '', '', '0'),
	(34, 34, 'Velociraptor', -1, '', '', '', '0'),
	(35, 35, 'Cow', -1, '', '', '', '0');

DROP TABLE IF EXISTS `pet_commands`;
CREATE TABLE IF NOT EXISTS `pet_commands` (
  `pet_id` int(11) NOT NULL,
  `command_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

REPLACE INTO `pet_commands` (`pet_id`, `command_id`) VALUES (0, 46),(0, 0),(0, 1),(0, 14),(0, 43),(0, 2),(0, 3),(0, 17),(0, 5),(0, 6),(0, 7),(0, 8),(0, 19),(0, 10),(0, 12),(0, 13),(0, 4),(0, 15),(0, 16),(0, 24),(0, 25),(0, 26),(1, 46),(1, 0),(1, 1),(1, 14),(1, 43),(1, 2),(1, 3),(1, 17),(1, 5),(1, 6),(1, 7),(1, 8),(1, 19),(1, 10),(1, 12),(1, 13),(1, 4),(1, 15),(1, 16),(1, 24),(1, 25),(1, 26),(2, 0),(2, 1),(2, 43),(2, 2),(2, 18),(2, 4),(2, 17),(2, 5),(2, 6),(2, 7),(2, 8),(2, 10),(2, 11),(2, 12),(2, 13),(2, 15),(2, 16),(2, 24),(2, 25),(2, 26),(3, 46),(3, 0),(3, 1),(3, 14),(3, 43),(3, 2),(3, 3),(3, 17),(3, 5),(3, 6),(3, 7),(3, 8),(3, 19),(3, 10),(3, 12),(3, 13),(3, 4),(3, 15),(3, 16),(3, 24),(3, 25),(3, 26),(4, 46),(4, 0),(4, 1),(4, 14),(4, 43),(4, 2),(4, 3),(4, 17),(4, 5),(4, 6),(4, 7),(4, 8),(4, 19),(4, 10),(4, 12),(4, 13),(4, 4),(4, 15),(4, 16),(4, 24),(4, 25),(4, 26),(5, 46),(5, 0),(5, 1),(5, 14),(5, 43),(5, 2),(5, 3),(5, 17),(5, 5),(5, 6),(5, 7),(5, 8),(5, 19),(5, 10),(5, 12),(5, 13),(5, 4),(5, 15),(5, 16),(5, 24),(5, 25),(5, 26),(6, 0),(6, 1),(6, 43),(6, 2),(6, 18),(6, 4),(6, 17),(6, 5),(6, 6),(6, 7),(6, 8),(6, 10),(6, 11),(6, 12),(6, 13),(6, 15),(6, 16),(6, 24),(6, 25),(6, 26),(7, 0),(7, 1),(7, 43),(7, 2),(7, 18),(7, 4),(7, 17),(7, 5),(7, 6),(7, 7),(7, 8),(7, 10),(7, 11),(7, 12),(7, 13),(7, 15),(7, 16),(7, 24),(7, 25),(7, 26),(8, 0),(8, 20),(8, 18),(8, 17),(8, 5),(8, 6),(8, 7),(8, 23),(8, 19),(8, 10),(8, 11),(8, 24),(8, 25),(8, 26),(8, 13),(8, 14),(8, 19),(8, 20),(8, 22),(8, 21),(8, 15),(8, 16),(9, 0),(9, 14),(9, 43),(9, 18),(9, 29),(9, 2),(9, 13),(9, 6),(9, 17),(9, 5),(9, 7),(9, 8),(9, 10),(9, 11),(9, 15),(9, 16),(9, 24),(9, 25),(9, 26),(11, 0),(11, 1),(11, 2),(11, 3),(11, 6),(11, 4),(11, 28),(11, 5),(11, 30),(11, 9),(11, 7),(11, 27),(11, 13),(11, 17),(11, 29),(11, 21),(11, 15),(11, 16),(12, 0),(12, 35),(12, 5),(12, 3),(12, 36),(12, 37),(12, 38),(12, 2),(12, 6),(12, 7),(12, 40),(12, 8),(12, 19),(12, 41),(12, 10),(12, 11),(12, 12),(12, 13),(12, 14),(12, 15),(12, 16),(12, 42),(14, 0),(14, 1),(14, 43),(14, 14),(14, 3),(14, 6),(14, 4),(14, 5),(14, 2),(14, 9),(14, 7),(14, 29),(14, 10),(14, 11),(14, 21),(14, 13),(14, 15),(14, 16),(15, 0),(15, 14),(15, 43),(15, 44),(15, 2),(15, 3),(15, 6),(15, 7),(15, 10),(15, 12),(15, 11),(15, 15),(15, 16),(15, 24),(15, 25),(15, 26),(15, 45),(33, 0),(33, 1),(33, 14),(33, 43),(33, 6),(33, 13),(33, 3),(33, 17),(33, 2),(33, 10),(33, 8),(33, 12),(33, 7),(33, 16),(33, 15),(33, 25),(33, 26),(34, 0),(34, 1),(34, 14),(34, 43),(34, 6),(34, 13),(34, 3),(34, 17),(34, 2),(34, 10),(34, 8),(34, 12),(34, 7),(34, 16),(34, 15),(34, 25),(34, 26),(17, 0),(17, 2),(17, 3),(17, 6),(17, 11),(17, 17),(17, 15),(17, 16),(18, 0),(18, 2),(18, 3),(18, 6),(18, 11),(18, 17),(18, 15),(18, 16),(19, 16),(19, 2),(19, 3),(19, 6),(19, 11),(19, 17),(19, 15),(19, 0),(20, 0),(20, 3),(20, 6),(20, 11),(20, 17),(20, 15),(20, 16),(21, 0),(21, 1),(21, 2),(21, 3),(21, 10),(21, 5),(21, 9),(21, 7),(21, 11),(21, 13),(21, 15),(21, 16),(21, 34),(21, 32),(21, 33),(22, 0),(22, 1),(22, 2),(22, 3),(22, 10),(22, 5),(22, 9),(22, 7),(22, 11),(22, 13),(22, 15),(22, 16),(22, 34),(22, 32),(22, 33),(24, 0),(24, 1),(24, 14),(24, 43),(24, 2),(24, 3),(24, 4),(24, 17),(24, 6),(24, 7),(24, 8),(24, 10),(24, 11),(24, 12),(24, 13),(24, 15),(24, 16),(24, 25),(24, 26),(25, 0),(25, 1),(25, 14),(25, 43),(25, 2),(25, 3),(25, 17),(25, 5),(25, 6),(25, 7),(25, 8),(25, 9),(25, 10),(25, 11),(25, 12),(25, 13),(25, 15),(25, 16),(25, 25),(25, 26),(26, 0),(26, 1),(26, 14),(26, 43),(26, 6),(26, 13),(26, 3),(26, 2),(26, 4),(26, 8),(26, 7),(26, 16),(26, 15),(26, 17),(26, 25),(26, 26),(27, 0),(27, 1),(27, 14),(27, 43),(27, 6),(27, 13),(27, 3),(27, 2),(27, 4),(27, 8),(27, 7),(27, 16),(27, 15),(27, 17),(27, 25),(27, 26),(28, 0),(28, 1),(28, 14),(28, 43),(28, 2),(28, 3),(28, 4),(28, 17),(28, 6),(28, 7),(28, 8),(28, 11),(28, 13),(28, 12),(28, 15),(28, 16),(28, 24),(28, 25),(28, 26),(29, 0),(29, 1),(29, 14),(29, 43),(29, 2),(29, 3),(29, 4),(29, 17),(29, 6),(29, 7),(29, 11),(29, 13),(29, 15),(29, 16),(29, 24),(29, 25),(29, 26),(30, 0),(30, 1),(30, 14),(30, 43),(30, 2),(30, 3),(30, 4),(30, 11),(30, 17),(30, 6),(30, 7),(30, 8),(30, 10),(30, 12),(30, 13),(30, 15),(30, 16),(30, 25),(30, 26),(31, 0),(31, 1),(31, 14),(31, 43),(31, 6),(31, 13),(31, 3),(31, 2),(31, 4),(31, 8),(31, 7),(31, 16),(31, 15),(31, 17),(31, 25),(31, 26),(35, 34),(35, 14),(35, 6),(35, 0),(35, 3),(35, 30),(35, 27),(35, 4),(35, 2),(35, 13),(35, 7),(35, 15),(35, 16),(35, 25),(35, 26),(23, 0),(23, 1),(23, 43),(23, 14),(23, 3),(23, 6),(23, 4),(23, 5),(23, 2),(23, 19),(23, 7),(23, 29),(23, 10),(23, 11),(23, 31),(23, 13),(23, 15),(23, 16),(23, 27),(20, 2);

DROP TABLE IF EXISTS `pet_commands_data`;
CREATE TABLE IF NOT EXISTS `pet_commands_data` (
    `command_id` int(11) NOT NULL,
    `text` varchar(25) NOT NULL,
    `required_level` int(11) NOT NULL,
    `reward_xp` int(11) NOT NULL DEFAULT 5,
    `cost_happiness` int(11) NOT NULL DEFAULT 0,
    `cost_energy` int(11) NOT NULL DEFAULT 0,
    PRIMARY KEY (`command_id`) USING BTREE
    ) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `pet_commands_data` (`command_id`, `text`, `required_level`, `reward_xp`, `cost_happiness`, `cost_energy`) VALUES
	(0, 'Geen', 1, 0, 0, 0),
	(1, 'Zit', 1, 10, 0, 0),
	(2, 'Lig', 2, 10, 0, 0),
	(3, 'Kom hier', 2, 10, 0, 0),
	(4, 'Bedel', 2, 10, 0, 0),
	(5, 'Lig dood', 3, 15, 0, 0),
	(6, 'Blijf', 4, 10, 0, 0),
	(7, 'Volg', 5, 15, 0, 0),
	(8, 'Sta', 6, 15, 0, 0),
	(9, 'Spring', 6, 15, 0, 0),
	(10, 'Spreek', 7, 10, 0, 0),
	(11, 'Speel', 8, 5, 0, 0),
	(12, 'Stil', 8, 25, 0, 0),
	(13, 'Nest', 5, 20, 0, 0),
	(14, 'Drink', 2, 10, 0, 0),
	(15, 'Volg links', 15, 35, 0, 0),
	(16, 'Volg Rechts', 15, 35, 0, 0),
	(17, 'Speel voetbal', 10, 5, 0, 0),
	(18, 'Kom hier', 9, 5, 0, 0),
	(19, 'Stuiter', 9, 5, 0, 0),
	(20, 'Plat', 11, 5, 0, 0),
	(21, 'Dans', 12, 5, 0, 0),
	(22, 'Pirouette', 10, 5, 0, 0),
	(23, 'Zet TV aan/uit', 12, 5, 0, 0),
	(24, 'Naar voren', 17, 5, 0, 0),
	(25, 'Draai links', 18, 5, 0, 0),
	(26, 'Draai rechts', 18, 5, 0, 0),
	(27, 'Relax', 13, 5, 0, 0),
	(28, 'Kwaak', 14, 5, 0, 0),
	(29, 'Duik', 14, 5, 0, 0),
	(30, 'Zwaai', 5, 5, 0, 0),
	(31, 'Dans', 18, 5, 0, 0),
	(32, 'Hoge sprong', 18, 35, 0, 0),
	(33, 'Vogeltjesdans', 7, 5, 0, 0),
	(34, 'Mega sprong', 9, 5, 0, 0),
	(35, 'Vleugels uit', 1, 5, 0, 0),
	(36, 'Adem vuur', 10, 5, 0, 0),
	(37, 'Hangen', 12, 5, 0, 0),
	(38, 'Werp vlam', 6, 5, 0, 0),
	(40, 'Schommelen', 13, 5, 0, 0),
	(41, 'Rollen', 10, 5, 0, 0),
	(42, 'Ring van vuur', 20, 5, 0, 0),
	(43, 'Eet', 2, 5, 0, 0),
	(44, 'Wapper met staart', 4, 5, 0, 0),
	(45, 'Tellen', 6, 5, 0, 0),
	(46, 'Fokken', 20, 35, 0, 0);

DROP TABLE IF EXISTS `pet_vocals`;
CREATE TABLE IF NOT EXISTS `pet_vocals` (
  `pet_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Leave 0 to have it apply to all pet types.',
  `type` enum('DISOBEY','DRINKING','EATING','GENERIC_HAPPY','GENERIC_NEUTRAL','GENERIC_SAD','GREET_OWNER','HUNGRY','LEVEL_UP','MUTED','PLAYFUL','SLEEPING','THIRSTY','TIRED','UNKNOWN_COMMAND') NOT NULL DEFAULT 'GENERIC_HAPPY',
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `pet_vocals` (`pet_id`, `type`, `message`) VALUES
	(15, 'DISOBEY', 'Afgekeurd. Dat wil zeggen dat ik het niet doe.'),
	(15, 'DISOBEY', 'Ik wilde dat ik naar je kon luisteren. Maar ik doe het lekker niet :P'),
	(15, 'DISOBEY', 'Zeg! Laat me nou eens met rust!'),
	(15, 'GENERIC_HAPPY', '*blij* In de wei?'),
	(15, 'GENERIC_HAPPY', 'Ik geloof dat ik iets voel bubbelen van blijdschap. Of heb ik last van gas in mijn maag.. :S'),
	(15, 'GENERIC_HAPPY', ':)'),
	(15, 'GENERIC_NEUTRAL', 'Hallo!'),
	(15, 'GENERIC_NEUTRAL', 'Hoe sta jij ervoor vandaag?'),
	(15, 'GENERIC_NEUTRAL', 'Bah....'),
	(15, 'GENERIC_SAD', 'Ik voel me vandaag niet helemaal mezelf...'),
	(15, 'GENERIC_SAD', 'Tranen.. Er biggelen tranen uit mijn ogen...'),
	(15, 'GREET_OWNER', 'Ha! Mijn eigenaar? Wat klinkt dat gek, eigenlijk....'),
	(15, 'GREET_OWNER', 'Ik vind het fantastisch je weer te zien! *high five*'),
	(15, 'HUNGRY', 'Ik heb honger.. als een paard. Maar dat is een inkoppertje.'),
	(15, 'LEVEL_UP', 'Woeps. Weer een level hoger!'),
	(15, 'MUTED', '*stilte*'),
	(15, 'PLAYFUL', 'Zullen we wat leuks doen vandaag?'),
	(15, 'PLAYFUL', 'Verveling.. de verveling slaat toe...'),
	(15, 'SLEEPING', 'ZzzzZZzzz.. er staat een... ZzzZZZ... schaap in de gang....Zzzz. Hey! Hooi!'),
	(15, 'SLEEPING', 'Zzzz...niemand kan mijn wilde hart temmen...zzZZzzz...'),
	(15, 'SLEEPING', 'Zzzz...en toen huppelde ik door de wei.. ZzzzZZ'),
	(15, 'THIRSTY', 'Dorst! Als een paard..'),
	(15, 'TIRED', 'Moe... Als een ...?  Ja, ik hou nu op! :P'),
	(15, 'UNKNOWN_COMMAND', 'I\'m sorry! Ik snap er helemaal niks van!'),
	(15, 'UNKNOWN_COMMAND', 'Whatever.. dat gehinnik van jou is zo moeilijk te verstaan ;)'),
	(15, 'DRINKING', 'Ah, zalig spul.. water.'),
	(15, 'EATING', 'Dit is zalig!!'),
	(35, 'DISOBEY', 'Tja, ik zou dat kunnen doen. Maar ik heb er gewoon geen zin in.'),
	(35, 'DISOBEY', 'Je valt in herhaling.'),
	(35, 'DISOBEY', 'Als ik dat deed, zou ik tegen mijn normen en waarden in gaan. Dus sorry, maar nee.'),
	(35, 'GENERIC_HAPPY', 'Vandaag is een goeie dag. Vandaag is geweldig.'),
	(35, 'GENERIC_HAPPY', 'In alle chaos van de wereld is het moeilijk om het goede te zien. Maar het is wel mogelijk!'),
	(35, 'GENERIC_HAPPY', 'Ik ben blij dat ik vanmorgen toch naar die yoga les ben gegaan: ik voel me nu geweldig.'),
	(35, 'GENERIC_NEUTRAL', 'Er zit altijd een beetje gekte in de liefde. Maar er zit ook altijd een beetje logica in de gekte.'),
	(35, 'GENERIC_NEUTRAL', 'Koeien hebben ook liefde nodig.'),
	(35, 'GENERIC_NEUTRAL', 'New York? Londen? Parijs? Tokyo? Doe mij maar Kathmandu.'),
	(35, 'GENERIC_SAD', 'Ik probeer het licht te zien, maar vandaag zie ik alleen maar de duisternis.'),
	(35, 'GENERIC_SAD', 'Ik ben een beetje depri vandaag... kom morgen maar terug.'),
	(35, 'GREET_OWNER', 'Goeiedag. Heb je die kool smoothie meegebracht waar ik om vroeg?'),
	(35, 'GREET_OWNER', 'Hallo nog een keer. Heb je dat Zen Wijsheid boek gelezen dat ik je geleend had?'),
	(35, 'HUNGRY', 'Ik ben hongerig, zo niet uitgehongerd.'),
	(35, 'LEVEL_UP', '*BOING* Alweer een level. Ben je trots?'),
	(35, 'MUTED', 'Het kan me echt niet schelen of ik op negeer word gezet. Ik ben hier gewoon lekker aan het luisteren naar mijn jungle dance muziek.'),
	(35, 'PLAYFUL', 'Je moet echt eens die podcast checken over Kunstmatige Intelligentie waar ik naar aan het luisteren ben.'),
	(35, 'PLAYFUL', 'Wist jij dat het universum meer dan 100 miljard sterrenstelsels heeft?'),
	(35, 'SLEEPING', '*Droomt van electronische schapen*'),
	(35, 'SLEEPING', '*Rolt zich om en heeft een mond vol gras terwijl hij slaapt*'),
	(35, 'SLEEPING', '*zzZZzz..zz..zzZZzz*'),
	(35, 'THIRSTY', 'Je kunt een koe naar het water brengen, en hij zal ALTIJD beginnen te drinken.'),
	(35, 'TIRED', 'Dat existentialistische debat heeft me echt gevloerd. Welterusten.'),
	(35, 'UNKNOWN_COMMAND', 'Oké. Je zult dit toch een beetje beter moeten uitleggen...'),
	(35, 'UNKNOWN_COMMAND', 'Sorry, ik snap het niet. Nog een keer.'),
	(35, 'DRINKING', 'Water drinken na een hele dag gras eten is gewoon hemels.'),
	(35, 'EATING', 'Veganisme is niet alleen voor tijdens de Kerst. Veganisme is voor het leven.'),
	(0, 'DISOBEY', '*kijkt uit de hoogte*'),
	(0, 'DISOBEY', '*gromt*'),
	(0, 'DISOBEY', '*fluit zachtjes voor zich uit*'),
	(0, 'DRINKING', '*drinkt als een dolle'),
	(0, 'EATING', '*ohh lekker!*'),
	(0, 'EATING', '*smikel smakel .... hmmmm!*'),
	(0, 'GENERIC_HAPPY', '*geniet*'),
	(0, 'GENERIC_HAPPY', 'Whooohoo! *ahem* ik bedoel. Tof.'),
	(0, 'GENERIC_HAPPY', '*wat is het weer een mooie dag vandaag, en wat ziet alles er mooi uit!*'),
	(0, 'GENERIC_NEUTRAL', '*wat gaan we vandaag weer eens doen....*'),
	(0, 'GENERIC_NEUTRAL', 'Het leven is leuk met een speeltje in je bek of poten...'),
	(0, 'GENERIC_NEUTRAL', '*kijkt eens wat om zich heen*'),
	(0, 'GENERIC_SAD', 'Ik ben een beetje sip.'),
	(0, 'GENERIC_SAD', 'Zou ik mijn dag niet hebben.'),
	(0, 'GENERIC_SAD', 'Alles zit tegen vandaag, wat een rot dag!'),
	(0, 'GREET_OWNER', 'Hey what\'s up !'),
	(0, 'GREET_OWNER', 'Welkom terug, was je op vakantie?'),
	(0, 'GREET_OWNER', 'Fijn je weer te zien ouwe ;)'),
	(0, 'HUNGRY', '*mag ik daar wat suiker op?*'),
	(0, 'HUNGRY', '*mijn buik rammelt.....*'),
	(0, 'HUNGRY', '*!!! H O N G E R !!!*'),
	(0, 'LEVEL_UP', '*yes! weer een stapje hoger*'),
	(0, 'LEVEL_UP', '*Heee! wat was dat nu, ik lijk wel ....*'),
	(0, 'LEVEL_UP', '*lang gewacht maar toch gekregen waar ik recht op had*'),
	(0, 'LEVEL_UP', '*top! op naar de volgende*'),
	(0, 'MUTED', '*Mmmmm...Mmmmmm.M....M...m....... .   .    .*'),
	(0, 'MUTED', '*Maar.......... ... .. .   .*'),
	(0, 'MUTED', '*... ... ... ... ...*'),
	(0, 'PLAYFUL', 'Zin in een spelletje? Eh.... waterpolo? Ofzo?'),
	(0, 'PLAYFUL', '*spelen! ah toe?*'),
	(0, 'PLAYFUL', '*zin in een speletje*'),
	(0, 'PLAYFUL', '*heeft zin in iets leuks*'),
	(0, 'GENERIC_SAD', 'Oooh ik moet alleen maar huilen....'),
	(0, 'SLEEPING', '*Zz.Zz.Zz....Zz.Zz.Zz....*'),
	(0, 'SLEEPING', '*droomt van eten*'),
	(0, 'SLEEPING', '*droomt van het baasje*'),
	(0, 'SLEEPING', '*droomt over iets moois*'),
	(0, 'SLEEPING', '*droomt van lange vakanties met het baasje*'),
	(0, 'SLEEPING', '*Zz.ZZZ...was ik maar een Olifant, dan had ik een slurf*'),
	(0, 'THIRSTY', '*Dorst!*'),
	(0, 'THIRSTY', 'Wahaaaater! dorstig'),
	(0, 'THIRSTY', '*zoekt naar wat drinken*'),
	(0, 'TIRED', '*gaapt en kijkt dromerig*'),
	(0, 'TIRED', '*gaapt en kijkt slaperig*'),
	(0, 'UNKNOWN_COMMAND', 'Ja, echt niet!'),
	(0, 'UNKNOWN_COMMAND', 'Ik snap je niet, wat wil je dat ik doe?'),
	(12, 'GENERIC_HAPPY', 'Whoohooo! Dit is te gek!'),
	(12, 'GENERIC_HAPPY', 'Joh, dit is veel leuker dan ik dacht!'),
	(12, 'GENERIC_NEUTRAL', 'Water! Het mooiste op aarde! Op mijn baasje na da'),
	(2, 'SLEEPING', '*droomt van mooie eilanden*'),
	(1, 'GENERIC_NEUTRAL', '*Zoekt naar vogels*'),
	(0, 'DRINKING', 'Sllrrppppp...'),
	(35, 'TIRED', 'Tijd voor mij om de dag af te sluiten, beste vriend.'),
	(35, 'TIRED', 'Bedtijd - een van mijn lievelingswoorden.'),
	(35, 'DRINKING', '*Glok* ..als er geen water was.. *Glok* ..zou er geen leven zijn op deze planeet..'),
	(35, 'EATING', '*Smak* Ik ben gewoon GEK op etenstijd. *Smak*'),
	(35, 'GREET_OWNER', 'Hallo. Je ziet er... stralend uit, als ik het mag zeggen.'),
	(35, 'HUNGRY', 'Hee, ik zou echt wel een beetje eten lusten, maatje.'),
	(35, 'HUNGRY', 'In mijn optiek moeten vegetariërs ook geen kaas meer eten of melk drinken.'),
	(35, 'LEVEL_UP', '*BOING* Ik ben net een level verder gekomen. Maar wat BETEKENT dat eigenlijk?'),
	(35, 'LEVEL_UP', '*BOING* Ik ga vooruit.'),
	(35, 'LEVEL_UP', '*BOING* Ik ben net een level verder gekomen. Maar wat BETEKENT dat eigenlijk?'),
	(35, 'THIRSTY', '97% van het water in de wereld is zout of niet drinkbaar. Trouwens, ik heb dorst.'),
	(35, 'THIRSTY', 'Zou je me een ENORM plezier kunnen doen en wat te drinken voor me kunnen pakken?'),
	(35, 'EATING', 'Mmmm. Gezond. *Smak*');