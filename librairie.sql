-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 21 juil. 2021 à 16:18
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `librairie`
--

-- --------------------------------------------------------

--
-- Structure de la table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_book` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `editor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `opinion_average` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookseller_opinion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recap_book` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `availability_book` tinyint(1) NOT NULL,
  `if_is_commanded` tinyint(1) NOT NULL,
  `command_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `books`
--

INSERT INTO `books` (`id`, `picture`, `title_book`, `author`, `editor`, `price`, `opinion_average`, `bookseller_opinion`, `recap_book`, `availability_book`, `if_is_commanded`, `command_status_id`) VALUES
(1, 'etonnanteFamilleAppenzel.jpeg', 'L\'ÉTONNANTE FAMILLE APPENZELL', 'Perez/Lacombe', 'Margot', 19.9, '2.5/5', 'Excellent', 'Ma grand-mère se nommait Eugénie. Eugénie Appenzell. D\'elle, je tiens mes longs cheveux bouclés et, dit-on, mon caractère bien trempé. Peu de jours avant ma naissance, grand-mère Eugénie quitta les siens. En héritage, elle me laissa une boîte remplie de photographies et de lettres. Pour que tu connaisses ta famille, m\'avait-elle écrit. Durant des années, j\'ai démêlé les liens et les intrigues qui unissent ces personnes extraordinaires.\r\nJ\'ai pleuré et j\'ai ri... Aujourd\'hui, je vous livre leur histoire. Mon histoire. Celle de l\'étonnante famille Appenzell.', 1, 0, NULL),
(2, 'GastonGrognon.jpeg', 'GASTON GROGNON - T02 - C\'EST LA FÊTE !', 'LANG', 'les alloums casterman', 13.9, '4/5', 'esprit satirique, et bien écrit', 'N\'avez-vous jamais été un peu inquiet en allant à une fête ? c\'est le cas de Gaston. Son ami Porc-Epic organise une fiesta de folie, et tous les animaux n\'ont qu\'une hâte... danser jusqu\'au bout de la nuit ! Il est HORS DE QUESTION pour Gaston de mettre un pied sur la piste de danse. D\'abord, il ne sait même pas comment bouger son corps. Et puis, qu\'est-ce qu\'ils ont tous à vouloir lui apprendre ? Pourquoi n\'aurait-il pas droit de ne pas aimer ça ?', 0, 1, NULL),
(3, 'LaFamillePassiflore.jpeg', 'LA FAMILLE PASSIFLORE, PIROUETTE & NYMPHÉAS', 'JOUANNIGOT LOIC', 'DM', 13, '3/5', 'Très coloré, mais s\'il n\'y a que de la couleur on pourrait trouver cela stérile', 'Au pays multicolore des nymphéas, vit la famille Blanche. La maman est une artiste peintre très connue. Ses deux enfants Ajonc et Genet veulent construire une cabane parmi les nymphéas, aidés par leurs jeunes invités : les Passiflore. 1987, premier livre pour enfants aux éditions Milan : Le Premier Bal d\'Agaric Passiflore, texte de Geneviève Huriet. C\'est le succès. Succès couronné par des prix littéraires et des récompenses diverses (prix Saint-Exupéry).\r\nS\'ensuivra une longue série (24 titres parus), pour le plus grand plaisir des enfants (à partir de quatre ans). Aujourd\'hui, les petits lapins Passiflore sont traduits en 28 langues et font l\'objet d\'une série télé, 52 épisodes de 26 minutes (production Euro Visual TF1) et diffusée depuis 2004 (TF1, Disney Chanel, etc.). En 2012, chez Dargaud, Loïc Jouannigot reprend seul les personnages des Passiflore en bande dessinée avec deux albums : L\'Anniversaire de Dendelion et La Chorale.\r\nSuivent deux autres titres avec les textes de Michel Plessix, Mélodie potagère et La Chasse au trésor. Depuis l\'arrêt en 2007 de l\'édition, la sympathique et néanmoins célèbre Famille Passiflore est rééditée aux éditions Maghen. Ce nouvel album, Pirouette & Nymphéas, contient une histoire inédite de la famille Passiflore écrite et dessinée par Loïc Jouannigot.', 1, 1, NULL),
(4, 'LesGestesBarière.jpeg', 'LES GESTES BARRIÈRES EXPLIQUÉS AUX ENFANTS', 'JALBERT PHILIPPE', 'deux coos d\'or', 2.95, '2/5', 'Allergique', 'Un petit ouvrage documentaire à destination des enfants de l\'école maternelle pour leur expliquer simplement les gestes barrières pour qu\'ils puissent se protéger et protéger les autres du coronavirus et des virus en général. Un dessin animé conçu par l\'auteur et adapté de ce livre est également disponible sur YouTube et a dépassé les 100 000 vues en à peine quelques jours.', 1, 1, NULL),
(5, 'MamanOursALaRescousse.jpeg', 'MAMAN OIE OURS À LA RESCOUSSE', 'HIGGINS RYAN T.', 'ALBIN JEUNESSE MICHEL', 12, '4.5/5', 'Octavius lui-même apprécierait ce livre tellement il est à couper le souffle', 'Michel, l\'ours grincheux, ne supporte pas ses voisins. Ils sont bruyants, envahissants, collants, et ils sont partout, tout le temps. Heureusement, son sale caractère lui assure une paix relative... jusqu\'au jour où une énorme tempête se déclare. Tout le monde se réfugie alors chez Michel, qui doit même participer à une chaîne humaine géante pour sauver un petit lapin des bourrasques ! L\'ours ronchon, horripilé par cette invasion, risque pourtant bien de changer d\'avis : parfois, l\'entraide appelle...\r\nl\'entraide. A partir de 5 ans', 0, 1, NULL),
(6, 'cacheeOuPasJarrive.jpeg', 'CACHÉE OU PAS, J\'ARRIVE - UNE AVENTURE SANS AVENTURE DE BARTOK BILOBA', 'SECHAN/JOURDY', 'Actes du Sud', 13.5, '3/5', 'Amusant et réjouissant comme les premiers Mickey', 'Une partie de cache-cache écrite et dessinée à quatre mains. Lolita Séchan et Camille Jourdy s\'amusent à faire jouer leur personnages respectifs dans l\'univers de la famille Biloba. à partir de 4 ans.', 0, 1, NULL),
(7, 'la-cantoche.jpeg', 'LA CANTOCHE, TOME 05 - EN AVANT, MACHE !', 'NOB', 'BD KIDS', 9.95, '2.95/5', 'Manque d\'originalité mais bien', 'La cloche a sonné, c\'est l\'heure du repas, direction... la cantoche ! Tous les enfants se retrouvent dans ce lieu mythique, qu\'on connaît forcément de près ou de loin. Entre les batailles de nourriture, les disputes, les chutes et les réclamations auprès du cuisiner fan de légumes, la pause déjeuner peut rapidement se transformer... en catastrophe ! Toujours pas de héros récurrent mais les gags s\'enchaînent autour de cet univers délicieux. L\'auteur de \"Dad\" et de \"Mamette\" permet à chacun de retrouver, avec tendresse et parfois un brin de nostalgie, les mots d\'enfants à la cantine, la philosophie de réfectoire et surtout les plats gastronomiques du cuistot ! Notes Biographiques : Quand il était petit, Nob voulait devenir pâtissier, pour pouvoir manger des gâteaux toute la journée. C\'est finalement vers la bande dessinée qu\'il s\'est tourné, pour le plus grand plaisir des petits et des grands... Mais il est toujours aussi gourmand !', 0, 0, NULL),
(8, 'LeChatRitable.jpeg', 'LE CHAT RITABLE', 'DUNAND-PALLAZ/TURREL', 'balivernes éditions', 8.5, '4/5', 'Livre bien écrit et plein de légèreté', 'Il était une fois un petit chat bienveillant, qui toujours secourait les pauvres et les mendiants. Le coeur sur la patte, généreux et fort aimable, ce chat exceptionnel, c\'était le chat Ritable.', 1, 1, NULL),
(9, 'MimoseEtSam.jpeg', 'MIMOSE ET SAM, TOME 01 - BASILIC EN PANIQUE ! - HISTOIRE COMPLÈTE', 'CATHON', 'BD KIDS', 7.95, '2/5', 'Livre très bien qui sera émerveillé la curiosité des enfants, par contre appeler votre fils Baptiste plutôt que Basile serait une idée qui mériterait son intérêt malgré votre amour pour les plantes', '\"Où étiez-vous la nuit dernière ? \" Mimose et Sam ont lancé leur enquête. Ils veulent découvrir qui a grignoté les feuilles de leur ami Basile. Aucun des insectes interrogés n\'admet être le coupable. Les deux amis doivent trouver des moyens pour le démasquer. Mais cela est plus facile à dire qu\'à faire ! Il faudra user de beaucoup d\'ingéniosité.', 0, 1, NULL),
(10, 'VengeanceCornebidouille.jpeg', 'LA VENGEANCE DE CORNEBIDOUILLE', 'BERTRAND/BONNIOL', 'BD KIDS', 12.7, '1/5', 'Livre intriguant et éducatif', 'Ses parents l’ont envoyé au lit pour avoir renâclé devant sa soupe de légumes. Mais Pierre est décidé à ruser et à trouver un moyen imparable pour éliminer non seulement Cornebidouille, la sorcière coincée dans les cabinets, mais aussi l’horrible potage de sa propre mère!', 1, 1, NULL),
(11, 'LesPtitesPoules.jpeg', 'LES P\'TITES POULES - ALBUM COLLECTOR (TOMES 1 A 4) - VOL01', 'JOLIBOIS/HEINRICH', 'PKJ', 15.1, '5/5', 'Une folle lecture a picoré pour les petits voir même les plus grands', 'Connaissez-vous Carmen, la petite poulette qui en a sous la crête ? Son frère Carmélito, le téméraire petit poulet rose ? Leurs copains Coquenpâte, Coqsix, Molédecoq, Hucocotte et les autres agités du poulailler ? Voyages, humour, émotion, frisson et fantaisie... Voilà ce que vous trouverez dans le collector des quatre premières aventures des P\'tites Poules.', 0, 0, NULL),
(12, 'Coraline.jpeg', 'Coraline', 'GAIMAN/NEYRET', 'ALBIN MICHEL', 19.9, '1.5/5', 'Livre sortant de l\'ordinaire', 'Coraline vient d\'emménager dans une étrange maison et, comme ses parents n\'ont pas le temps de s\'occuper d\'elle, elle décide de jouer les exploratrices. Ouvrant une porte condamnée, elle pénètre dans un appartement identique au sien. Identique, et pourtant... Dans la droite ligne d\'Alice au pays des merveilles, ce roman à l\'atmosphère inoubliable a déjà conquis des millions de lecteurs. A partir de 13 ans', 1, 0, NULL),
(13, 'Ickabog.jpeg', 'L\'ICKABOG', 'ROWLING J.K.', 'GALLIMARD JEUNESSE', 20, '3/5', 'Prenez un gars banal mettez lui un fardeau, et en sortie du four vous avez... pas un zéro, mais un héro !!!', 'Description : Haut comme deux chevaux. Des boules de feu étincelantes à la place des yeux. De longues griffes acérées telles des lames. L\'Ickabog arrive...La Cornucopia était un petit royaume heureux. On n\'y manquait de rien, le roi portait la plus élégante des moustaches, et le pays était célèbre pour ses mets délicieux : Délice-des-Ducs ou Nacelles-de-Fées, nul ne pouvait goûter ses gâteaux divins sans pleurer de joie ! Mais dans tout le royaume, un monstre rôde : selon la légende, l\'Ickabog habitait les Marécages brumeux et froids du nord du pays. On disait de cette créature qu\'elle avait de formidables pouvoirs et sortait la nuit pour dévorer les moutons comme les enfants. Des histoires pour les petits et les naïfs ? Parfois, les mythes prennent vie de façon étonnante...Alors, si vous êtes courageux et voulez connaître la vérité, ouvrez ce livre, suivez deux jeunes héros déterminés et perspicaces dans une folle aventure qui changera pour toujours le sort de la Cornucopia. Notes Biographiques : J.K. Rowling est l\'autrice des sept livres de Harry Potter, initialement parus entre 1997 et 2007. C\'est à bord d\'un train en retard que l\'idée de Harry Potter lui est venue pour la première fois. L\'écriture de la saga s\'étalera ensuite sur plusieurs années et dans plusieurs pays : l\'Angleterre, le Portugal et enfin l\'Ecosse.Les aventures de Harry, Ron et Hermione à Poudlard, la célèbre école de sorcellerie, se sont vendues à plus de 500 millions d\'exemplaires, ont été traduites en plus de 80 langues et ont été adaptées au cinéma en huit films qui ont tous connu un vaste succès. Parallèlement, J.K. Rowling a rédigé trois brefs guides destinés à soutenir des actions caritatives : Le Quidditch à travers les âges, Les Animaux fantastiques et Les Contes de Beedle le Barde. Les Animaux fantastiques ont par la suite donné naissance à une série de films dont J.K. Rowling a signé le scénario, qui mettent en scène le magizoologiste Norbert Dragonneau. Le dernier en date, Les Animaux fantastiques : les Crimes de Grindelwald, est sorti en 2018.J.K. Rowling a aussi poursuivi l\'histoire de Harry Potter adulte dans une pièce de théâtre, Harry Potter et l\'enfant maudit, qu\'elle a co-écrit avec le dramaturge Jack Thorne et le metteur en scène John Tiffany. La pièce a reçu un excellent accueil, que ce soit en Europe, en Amérique du Nord ou en Australie.Elle écrit également des romans pour adultes et, sous le nom de plume Robert Galbraith, a signé la série policière Les Enquêtes de Cormoran Strike, qui a été adaptée à la télévision.J.K. Rowling a reçu de nombreuses récompenses et distinctions, dont l\'Ordre de l\'Empire Britannique et le titre de Compagnon d\'honneur, la Légion d\'honneur, le prix Hans Christian Andersen, le Robert F. Kennedy Ripple of Hope Award et un Blue Peter Gold Badge. Elle soutient plusieurs causes à travers son association caritative, Volant, et a fondé l\'ONG Lumos, qui se bat pour que les enfants soient élevés par leur famille, et non dans des orphelinats.D\'aussi loin qu\'elle s\'en souvienne, elle a toujours rêvé d\'être écrivaine et elle n\'est jamais aussi heureuse qu\'enfermée dans une pièce, en train d\'inventer des histoires. Elle vit en Ecosse avec sa famille. Clémentine Beauvais est autrice et traductrice de nombreux livres pour la jeunesse, et enseignante-chercheuse en sciences de l\'éducation à l\'université de York (Royaume-Uni).Elle est la traductrice en français, entre autres, de Sarah Crossan (Inséparables, Swimming-Pool, Moon Brothers, Toffee et moi, aux éditions Rageot) et Elizabeth Acevedo (Signé Poète X), toutes deux gagnantes de la Carnegie Medal et, pour Elizabeth Acevedo du National Book Award. Elle a également traduit deux romans de Meg Rosoff. Sa traduction la plus récente estWoman World, une bande dessinée d\'Aminder Dhaliwal, pour les éditions la ville brûle.Ses propres romans et albums, dontLes petites reines(Sarbacane, 2015),Songe à la douceur(Sarbacane, 2016),La louve(Alice, 2015, illustré par Antoine Déprez) ouBrexit Romance(Sarbacane, 2018) sont traduits en une quinzaine de langues et ont remporté nombre de récompenses nationales et internationales, dont le Prix Sorcières, le Prix des Incorruptibles, le Prix Libr\'à Nous, et la liste White Ravens de la bibilothèque internationale de Munich.Clémentine Beauvais enseigne la littérature jeunesse, l\'écriture créative et la pratique de la traduction avec les enfants dans le département de sciences de l\'éducation de l\'université de York, et mène dans les écoles françaises et britanniques de nombreux ateliers de traduction littéraire et d\'écriture créative.', 0, 1, NULL),
(14, 'leChateauHurle.jpeg', 'LE CHÂTEAU DE HURLE', 'WYNNE JONES DIANA', 'ROMANS YNNIS', 14.95, '2.5/5', 'Fuyez pour vos misérables vie ! Beaucoup ! Beaucoup d\'actions !', 'La trilogie arrive enfin dans son intégralité en France ! Découvrez le roman qui a inspiré le chef d\'oeuvre acclamé de Miyazaki, Le Château ambulant ? ! Au coeur de la contrée magique d\'Ingarie, la jeune Sophie s\'est résignée à un avenir morne dans sa petite chapellerie de quartier. Mais lorsqu\'elle a le malheur d\'offusquer la sorcière des Steppes, celle-ci lui dérobe 60 ans de sa vie, la laissant vieille et démunie.\r\nCherchant désespérément un moyen de briser le sortilège, Sophie rejoindra alors l\'équipe haute en couleur du grand mage Hurle. C\'est au sein de son mystérieux château ambulant qu\'elle se retrouvera à pactiser avec le malicieux démon de feu Calcifer. C\'est une aventure extraordinaire à la recherche de sa jeunesse volée qui commence alors pour Sophie, prête à reprendre en main son destin... Autrice acclamée de littérature fantastique, Diana Wynne Jones (1934-2011) a remporté de nombreux prix, dont le Guardian Award for Children\'s Fiction et deux Mythopoeic Fantasy Awards. Elle est plus connue pour ses séries Chrestomanci, L\'Odyssée DaleMark et, bien entendu, pour sa trilogie du Château.', 1, 1, NULL),
(15, 'PetitVampire.jpeg', 'PETIT VAMPIRE', 'SFAR JOANN', 'ALBIN MICHEL', 9.5, '4.1/5', 'Un bon petit livre.', 'Tout a commencé par un film d\'horreur. « Ce n\'est pas de ton âge, Michel », m\'avait pourtant prévenu Petit Vampire. Mais on est quand même allés voir Le Commando des morts vivants. Les zombies nazis étaient effrayants, mais comme c\'était du cinéma, ça allait. Le problème, c\'est que ces affreux sont revenus le soir, dans mon rêve. J\'ai inventé une porte et ils sont partis, ouf ! Sauf que je ne savais pas où menait cette porte. Et puis Marguerite est arrivé pour me dire de venir vite, parce que d\'horribles zombies avaient débarqué chez Petit Vampire... 4e de couverture : Tout a commencé par un film d\'horreur. « Ce n\'est pas de ton âge, Michel », m\'avait pourtant prévenu Petit Vampire. Mais on est quand même allés voir Le Commando des morts vivants. Les zombies nazis étaient effrayants, mais comme c\'était du cinéma, ça allait. Le problème, c\'est que ces affreux sont revenus le soir, dans mon rêve. J\'ai inventé une porte et ils sont partis, ouf ! Sauf que je ne savais pas où menait cette porte. Et puis Marguerite est arrivé pour me dire de venir vite, parce que d\'horribles zombies avaient débarqué chez Petit Vampire... Notes Biographiques : Joann Sfar, né le 28 août 1971 à Nice (France), est un auteur de bande dessinée, illustrateur, romancier et réalisateur français. Auteur de très nombreuses bandes dessinées, il est notamment connu pour ses séries Le Chat du rabbin, qu\'il a ensuite adaptée au cinéma, et Donjon. Il a également illustré de nombreux ouvrages. Depuis 2010 et son film Gainsbourg, vie héroïque, il est également réalisateur. Depuis 2013, il s\'est mis à l\'écriture de romans, comme Le Plus Grand Philosophe de France. Joann Sfar interroge tout particulièrement les rapports qu\'entretiennent entre elles les religions. Il traite de questions existentielles, identitaires et philosophiques à travers les différents supports qu\'il emploie', 0, 1, NULL),
(16, 'AgeDOr.jpeg', 'L\'ÂGE D\'OR - TOME 2', 'PEDROSA', 'AIRE LIBRE', 32, '2.5/5', 'Univers intéressant et histoire palpitante', 'Avec l\'hiver, la guerre a commencé. Tandis que les insurgés rassemblent leurs troupes et remontent depuis la Péninsule, la princesse Tilda assiège le château de son frère pour reconquérir son trône. En haut des remparts, en première ligne, les \"gueux\" se préparent à l\'assaut.Ce deuxième tome conclut en majesté l\'épopée flamboyante de \" L\'Age d\'or \", ce livre assez puissant pour déchaîner la tempête et la révolution, la force d\'une utopie qui donne envie de croire en l\'avenir.', 0, 0, NULL),
(17, 'ailefroide.jpg', 'AILEFROIDE - ALTITUDE 3954', 'ROCHETTE/BOCQUET/REY', 'casterman', 28, '4.75/5', 'Un BD qui a su transcendé le genre littéraire', 'Avec l\'hiver, la guerre a commencé. Tandis que les insurgés rassemblent leurs troupes et remontent depuis la Péninsule, la princesse Tilda assiège le château de son frère pour reconquérir son trône. En haut des remparts, en première ligne, les \"gueux\" se préparent à l\'assaut.Ce deuxième tome conclut en majesté l\'épopée flamboyante de \" L\'Age d\'or \", ce livre assez puissant pour déchaîner la tempête et la révolution, la force d\'une utopie qui donne envie de croire en l\'avenir.', 1, 0, NULL),
(18, 'Geante.jpeg', 'GEANTE - ONE-SHOT - GÉANTE - HISTOIRE DE CELLE QUI PARCOURUT LE MONDE À LA RECHERCHE DE LA LIBERTÉ', 'DEVENEY/TAMARIT', 'éditions delcourt', 27.95, '4/5', 'Histoire touchante et passionnante', 'Description : Elle était une fois Céleste, géante véritable, orpheline recueillie au coeur de la montagne, petite dernière d\'une famille de six frères. Et quand vient le temps où chacun s\'envole du cocon familial, Céleste veut elle aussi arpenter de nouveaux horizons. De la Vallée aux Marais en passant par Dorsodoro, elle découvrira l\'hostilité créée par la différence, les injustices de la guerre ou de la religion mais aussi l\'amour et pourquoi pas, au bout du chemin, la liberté d\'être elle-même ?', 1, 1, NULL),
(19, 'LeMondeAuBalcon.jpeg', 'LE MONDE AU BALCON - CARNET DESSINÉ D\'UN PRINTEMPS CONFINÉ', 'LAMBDA SOPHIE', 'ALBIN MICHEL', 18.9, '4/5', 'Style littéraire opiniâtre et innovant pour une bande dessinée', 'J\'ai commencé ce carnet en janvier 2020, je voulais dessiner mon quotidien avec légèreté, sans objectif précis... Qui aurait pu prévoir que ce petit projet insouciant allait se changer en journal de bord de l\'événement mondial le plus inédit du 21e siècle ? Dessinatrice vedette d\'instagram, Sophie Lambda est l\'autrice de la remarquable bd tant pis pour l\'amour, parue en 2019. Dans le monde au balcon, elle donne aux petites histoires personnelles et grandes réalités collectives un coup de crayon libérateur.', 0, 1, NULL),
(20, 'radiumGirls.jpeg', 'RADIUM GIRLS', 'CY', 'glénat', 22, '2.75/5', 'Relatation sincère de la société tel qu\'un Lautrec', 'Des destins de femmes sacrifiées sur l’autel du progrès. New Jersey, 1918. Edna Bolz entre comme ouvrière à l’United State Radium Corporation, une usine qui fournit l’armée en montres. Aux côtés de Katherine, Mollie, Albina, Quinta et les autres, elle va apprendre le métier qui consiste à peindre des cadrans à l’aide de la peinture Undark (une substance luminescente très précieuse et très chère) à un rythme constant. Mais bien que la charge de travail soit soutenue, l’ambiance à l’usine est assez bonne. Les filles s’entendent bien et sortent même ensemble le soir. Elles se surnomment les « Ghost Girls » : par jeu, elles se peignent les ongles, les dents ou le visage afin d’éblouir (littéralement) les autres une fois la nuit tombée. Mais elles ignorent que, derrière ses propriétés étonnantes, le Radium, cette substance qu’elles manipulent toute la journée et avec laquelle elles jouent, est en réalité mortelle. Et alors que certaines d’entre elles commencent à souffrir d’anémie, de fractures voire de tumeur, des voix s’élèvent pour comprendre. D’autres, pour étouffer l’affaire...\r\nLa dessinatrice Cy nous raconte le terrible destin des Radium Girls, ces jeunes femmes injustement sacrifiées sur l’autel du progrès technique. Un parcours de femmes dans la turbulente Amérique des années 1920 où, derrière l’insouciance lumineuse de la jeunesse, se joue une véritable tragédie des temps modernes.\r\nNotes Biographiques : Autrice de bande dessinée, Cy. est, à la base, graphiste de formation. Après plusieurs années en tant que directrice artistique, elle se lance en freelance pour développer ses projets. Elle publie aux éditions Lapin Le vrai sexe de la vraie vie (tome 1 et 2) où elle prend le parti de montrer des bribes de sexualité sur base de témoignages. Son leitmotiv ; montrer pour déculpabiliser. Sa BD suivante ne parle pas de sexualité, mais de luttes de femmes dans les années 20 aux États-Unis : Radium Girls parait chez Glénat en avril 2020. Réside en région parisienne.', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `command_status`
--

CREATE TABLE `command_status` (
  `id` int(11) NOT NULL,
  `in_expectation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `dimensions`
--

CREATE TABLE `dimensions` (
  `id` int(11) NOT NULL,
  `dimensions_info_id` int(11) DEFAULT NULL,
  `width_info` double NOT NULL,
  `height_info` double NOT NULL,
  `weight_info` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `picture_event_author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_event` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_event` date NOT NULL,
  `place_event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_event_age` int(11) NOT NULL,
  `necessary_reservation` tinyint(1) NOT NULL,
  `meeting_free` tinyint(1) NOT NULL,
  `picture_book_id` int(11) DEFAULT NULL,
  `nb_max_registration_event` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `picture_event_author`, `title_event`, `date_event`, `place_event`, `public_event_age`, `necessary_reservation`, `meeting_free`, `picture_book_id`, `nb_max_registration_event`) VALUES
(1, '515-auteur_auteur_default.jpg', 'Atelier', '2020-01-10', 'La librairie', -4, 1, 1, NULL, 20),
(2, 'OIP.dTvPtTroftj3k1NbQdlkMwHaIn.jpg', 'Dédicace', '2020-03-17', 'La librairie', 14, 1, 1, NULL, 25),
(3, 'storyTime.jpg', 'Atelier', '2020-10-31', 'La librairie', -8, 1, 1, NULL, 30),
(4, 'WP_20161109_19_13_07_Pro_LI-169x300.jpg', 'Présentation', '2021-04-17', 'la librairie', -18, 0, 0, NULL, 40),
(5, '3ae7a450579dc485d98929f561de02b7.jpg', 'Lecture', '2021-04-18', 'la librairie', 14, 0, 0, NULL, 41),
(6, 'WP_20161109_19_13_07_Pro_LI-169x300.jpg', 'Présentation', '2021-08-06', 'la librairie', -14, 1, 1, 1, 20),
(7, 'Animation-300x300.jpg', 'Présentation', '2021-09-07', 'la librairie', -14, 1, 1, 2, 20),
(8, 'Animation-300x300.jpg', 'Animation', '2021-10-07', 'la librairie', -14, 1, 1, 3, 20),
(9, 'Animation-300x300.jpg', 'Présentation', '2021-11-20', 'la librairie', -14, 1, 1, 4, 20);

-- --------------------------------------------------------

--
-- Structure de la table `informations_books`
--

CREATE TABLE `informations_books` (
  `id` int(11) NOT NULL,
  `informations_books_books_id` int(11) DEFAULT NULL,
  `code_ean` int(11) NOT NULL,
  `code_isbn` int(11) NOT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nb_pages` int(11) NOT NULL,
  `publishment` date NOT NULL,
  `language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_language` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information_kg` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `reservation_event_id` int(11) DEFAULT NULL,
  `price_reservation` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `reservation_event_id`, `price_reservation`) VALUES
(1, 9, 10),
(2, 8, 10);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`) VALUES
(1, 'yus@yu.co'),
(2, 'yas@ya.uk'),
(3, 'yes@uk.co'),
(4, 'yop@po.co'),
(5, 'yap@pa.co'),
(6, 'test@test.fr'),
(7, 'bat@man.fr'),
(8, 'yyy@yyy.co'),
(9, '44@44.co'),
(10, 'yu@uy.co');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A1B2A92ECC64FB6` (`command_status_id`);

--
-- Index pour la table `command_status`
--
ALTER TABLE `command_status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E27D8BA5A4D7FDC5` (`dimensions_info_id`);

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5387574AB844753` (`picture_book_id`);

--
-- Index pour la table `informations_books`
--
ALTER TABLE `informations_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4E8E60F68B640958` (`informations_books_books_id`);

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4DA239EC420A9F` (`reservation_event_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `command_status`
--
ALTER TABLE `command_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `informations_books`
--
ALTER TABLE `informations_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_4A1B2A92ECC64FB6` FOREIGN KEY (`command_status_id`) REFERENCES `command_status` (`id`);

--
-- Contraintes pour la table `dimensions`
--
ALTER TABLE `dimensions`
  ADD CONSTRAINT `FK_E27D8BA5A4D7FDC5` FOREIGN KEY (`dimensions_info_id`) REFERENCES `informations_books` (`id`);

--
-- Contraintes pour la table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_5387574A5D56CB29` FOREIGN KEY (`picture_book_id`) REFERENCES `books` (`id`);

--
-- Contraintes pour la table `informations_books`
--
ALTER TABLE `informations_books`
  ADD CONSTRAINT `FK_4E8E60F68B640958` FOREIGN KEY (`informations_books_books_id`) REFERENCES `books` (`id`);

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `FK_4DA239EC420A9F` FOREIGN KEY (`reservation_event_id`) REFERENCES `events` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
