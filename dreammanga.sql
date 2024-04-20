-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-08-2023 a las 17:25:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dreammanga`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `nacimiento` date NOT NULL,
  `mail_institucional` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `foto`, `nacimiento`, `mail_institucional`) VALUES
(2, 'García Lucas Emanuel', 'garcia-lucas.png', '2004-05-01', 'lucas.garcia@davinci.edu.ar'),
(3, 'Bianchi Martina', 'bianchi-martina.png', '2003-06-29', 'martina.bianchi@davinci.edu.ar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `usuario_nombre` varchar(255) NOT NULL,
  `usuario_apellido` varchar(255) NOT NULL,
  `usuario_mail` varchar(255) NOT NULL,
  `usuario_provincia` varchar(255) NOT NULL,
  `usuario_ciudad` varchar(255) NOT NULL,
  `usuario_calle` varchar(255) NOT NULL,
  `usuario_cpa` int(4) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `volumen` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_mail`, `usuario_provincia`, `usuario_ciudad`, `usuario_calle`, `usuario_cpa`, `titulo`, `volumen`, `cantidad`) VALUES
(61, 2, 'Lucas', 'García', 'lucas_07_boca@hotmail.com', 'Buenos Aires', 'Villa Ballester', 'Zárate 5539', 1653, 'Black Clover', 1, 1),
(62, 2, 'Lucas', 'García', 'lucas_07_boca@hotmail.com', 'Buenos Aires', 'Villa Ballester', 'Zárate 5539', 1653, 'Akame ga Kill!', 1, 1),
(63, 2, 'Lucas', 'García', 'lucas_07_boca@hotmail.com', 'Buenos Aires', 'Villa Ballester', 'Zárate 5539', 1653, 'Black Clover', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `origen` varchar(255) NOT NULL,
  `fundacion` year(4) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`id`, `nombre`, `origen`, `fundacion`, `logo`) VALUES
(1, 'Ivrea', 'Argentina', '1997', 'ivrea.png'),
(2, 'Panini', 'Italia', '1961', 'panini.png'),
(12, 'Editorial de Pruebas', 'Argentina', '2004', '64489-1648e6d9045e86.jpg'),
(35, 'Editorial de Pruebas 2', 'Argentina', '1999', 'F2JB-1648e8a8a074b8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritores`
--

CREATE TABLE `escritores` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `biografia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `escritores`
--

INSERT INTO `escritores` (`id`, `nombre`, `biografia`) VALUES
(1, 'Kōhei Horikoshi', 'Kōhei Horikoshi es un mangaka japonés conocido por ser el creador y autor del manga \"My Hero Academia\" (Boku no Hero Academia). Nació el 20 de noviembre de 1986 en la prefectura de Aichi, Japón. Desde joven, Horikoshi mostró un gran interés en el dibujo y los cómics. Durante su infancia, fue influenciado por las obras de otros mangakas y se inspiró para seguir una carrera en el mundo del manga.'),
(2, 'Takahiro', 'Takahiro es el seudónimo de un mangaka y escritor japonés conocido por su obra \"Akame ga Kill!\". Sin embargo, no hay mucha información disponible sobre la biografía personal de Takahiro, ya que prefiere mantener su identidad en privado. A pesar de esto, podemos hablar sobre su carrera profesional. Takahiro comenzó su carrera como escritor y mangaka en la industria del manga. En colaboración con el ilustrador Tetsuya Tashiro, creó la serie de manga \"Akame ga Kill!\", que se publicó en la revista Gangan Joker de Square Enix desde 2010 hasta 2016. La serie se volvió muy popular y generó una adaptación de anime, que se emitió en 2014.'),
(3, 'Yūki Tabata', 'Yūki Tabata es un mangaka japonés conocido principalmente por ser el autor del popular manga \"Black Clover\". Nació el 5 de julio de 1989 en la prefectura de Fukuoka, Japón. Desde una edad temprana, Tabata mostró un gran interés por el dibujo y la creación de historias. Comenzó a desarrollar su talento artístico y a estudiar manga mientras estaba en la escuela secundaria. Después de graduarse, decidió perseguir su sueño de convertirse en mangaka y comenzó a enviar sus trabajos a diversas editoriales.'),
(4, 'Eiichiro Oda', 'Eiichiro Oda es un mangaka japonés famoso por ser el creador y autor del manga \"One Piece\". Nació el 1 de enero de 1975 en Kumamoto, Japón. Desde muy joven, mostró un gran interés en el dibujo y comenzó a crear sus propias historias de manga. Oda se convirtió en asistente de varios mangakas antes de hacer su debut profesional en 1997 con su serie \"Wanted!\". Sin embargo, alcanzó la fama mundial con el lanzamiento de \"One Piece\" en 1999, que rápidamente se convirtió en uno de los mangas más populares y exitosos de todos los tiempos.'),
(5, 'Negi Haruba', 'Negi Haruba es un mangaka japonés conocido por ser el creador del popular manga \"Gotoubun no Hanayome\". La biografía personal de Negi Haruba es escasa y no hay mucha información disponible sobre su vida fuera del ámbito profesional.'),
(6, 'Aka Akasaka', 'Aka Akasaka es un mangaka japonés conocido por ser el autor del manga \"Kaguya-sama: Love is War\". No se tiene información pública sobre su fecha de nacimiento o su identidad personal, ya que Akasaka prefiere mantener su privacidad. Akasaka comenzó su carrera en el mundo del manga como asistente de otros mangakas. En 2015, hizo su debut profesional con la serie \"Kaguya-sama: Love is War\", que fue serializada en la revista Weekly Young Jump.'),
(7, 'Nanashi', 'Nanashi es un seudónimo utilizado por un ilustrador y mangaka japonés cuya identidad y detalles personales no están ampliamente conocidos o divulgados públicamente. \"Nanashi\" en japonés significa \"sin nombre\" o \"anónimo\", lo que refuerza la decisión del artista de mantener su identidad en privado. Nanashi se ha ganado reconocimiento y popularidad por su talento artístico y su trabajo en el ámbito del manga. Es conocido por su estilo de dibujo detallado y expresivo, así como por su habilidad para capturar emociones y transmitir narrativas poderosas a través de sus ilustraciones.'),
(8, 'Koyoharu Gotouge', 'Koyoharu Gotouge es una mangaka japonesa conocida por ser la autora del exitoso manga \"Demon Slayer: Kimetsu no Yaiba\". No se dispone de información pública sobre su fecha de nacimiento o detalles personales. Gotouge debutó como mangaka en 2013 con una serie de one-shots y trabajos cortos. Sin embargo, fue en 2016 cuando alcanzó el reconocimiento y éxito con el lanzamiento de \"Demon Slayer: Kimetsu no Yaiba\". La serie fue publicada en la revista Weekly Shonen Jump y rápidamente se convirtió en un fenómeno, ganando popularidad tanto en Japón como a nivel internacional.'),
(9, 'Reiji Miyajima', 'Reiji Miyajima es un mangaka japonés conocido por ser el autor del manga \"Kanojo, Okarishimasu\" (Rent-A-Girlfriend). No se dispone de información pública detallada sobre su fecha de nacimiento o su vida personal. Miyajima comenzó su carrera como mangaka en 2014 con la serie \"Kanojo, Okarishimasu\", que se serializó en la revista Weekly Shonen Magazine.'),
(10, 'Naoshi Arakawa', 'Naoshi Arakawa es un mangaka japonés conocido por ser el autor del manga \"Your Lie in April\" (Shigatsu wa Kimi no Uso). Nació el 7 de enero de 1989 en la prefectura de Nagano, Japón. Arakawa comenzó su carrera como mangaka en 2006 con su trabajo debut, \"Koikokoro Koushinchuu\" que fue publicado en la revista Weekly Shonen Magazine. Sin embargo, fue con \"Your Lie in April\" que alcanzó la fama y reconocimiento internacional.'),
(11, 'Haruichi Furudate', 'Haruichi Furudate es un mangaka japonés conocido por ser el autor del manga \"Haikyu!!\". No se dispone de información pública detallada sobre su fecha de nacimiento o su vida personal. Furudate debutó como mangaka en 2007 con la serie \"Kiben Gakuha, Yotsuya-senpai no Kaidan\", que fue publicada en la revista Weekly Shonen Jump. Sin embargo, alcanzó la fama con \"Haikyu!!\" en 2012.'),
(12, 'Takehiko Inoue', 'Takehiko Inoue es un mangaka japonés conocido por ser el autor de mangas aclamados como \"Slam Dunk\" y \"Vagabond\". Nació el 12 de enero de 1967 en la prefectura de Kagoshima, Japón. Desde una edad temprana, Inoue mostró un gran interés y habilidad en el dibujo. Estudió en la Universidad de Artes Musashino, donde se especializó en diseño y animación. Después de graduarse, comenzó su carrera en la industria del manga trabajando como asistente del mangaka Tsukasa Hojo.'),
(13, 'Ai Yazawa', 'Ai Yazawa es una mangaka japonesa conocida por ser la autora de mangas populares como \"Nana\" y \"Paradise Kiss\". Nació el 7 de marzo de 1967 en la prefectura de Hyogo, Japón. Desde joven, Yazawa mostró un gran interés en el arte y la moda. Se graduó de la Universidad de Moda de Osaka y trabajó en la industria de la moda antes de dedicarse por completo al manga.'),
(14, 'Sui Ishida', 'Sui Ishida es un mangaka japonés conocido por ser el autor del manga \"Tokyo Ghoul\". No se dispone de información pública detallada sobre su fecha de nacimiento o su vida personal. Ishida debutó como mangaka en 2010 con la serie \"Tokyo Ghoul\", que fue publicada en la revista Weekly Young Jump. La serie se desarrolla en un Tokio oscuro y distópico, donde humanos y ghouls, criaturas que se alimentan de carne humana, coexisten en una sociedad conflictiva. \"Tokyo Ghoul\" es conocido por su narrativa oscura, personajes complejos y exploración de temas como la identidad y la moralidad.'),
(15, 'Shinya Umemura', 'Shinya Umemura es un escritor y guionista japonés conocido por su trabajo en el manga \"Record of Ragnarok\" (Shuumatsu no Valkyrie). No se dispone de información pública detallada sobre su fecha de nacimiento o su vida personal. Umemura colaboró con el ilustrador Ajichika y el diseñador de personajes Takumi Fukui para crear \"Record of Ragnarok\". El manga, que comenzó a serializarse en 2017, presenta una historia épica en la que dioses de diversas mitologías se enfrentan a los mejores guerreros de la humanidad en una batalla por el destino de la humanidad.'),
(16, 'Yoshihiro Togashi', 'Yoshihiro Togashi es un mangaka japonés nacido el 27 de abril de 1966 en Shinjō, Prefectura de Yamagata, Japón. Es conocido por crear populares series de manga y anime, siendo su obra más reconocida \"Yu Yu Hakusho\" y \"Hunter x Hunter\". Togashi comenzó su carrera en el mundo del manga a una edad temprana. A los 22 años, debutó con su primer trabajo profesional titulado \"Buttobi Straight\", que fue publicado en 1986 en la revista Weekly Shonen Jump. Sin embargo, fue con la serie \"Yu Yu Hakusho\", lanzada en 1990, que Togashi alcanzó un gran éxito y reconocimiento a nivel internacional. La historia sigue las aventuras de Yusuke Urameshi, un joven delincuente que se convierte en detective espiritual y lucha contra fuerzas malignas.'),
(17, 'Akira Toriyama', 'Akira Toriyama es un mangaka y diseñador de personajes japonés, nacido el 5 de abril de 1955 en Nagoya, Japón. Es reconocido mundialmente como el creador de dos de las series de manga y anime más populares de todos los tiempos: \"Dragon Ball\" y \"Dr. Slump\". Comenzó su carrera en la industria del manga a finales de la década de 1970, trabajando en varias series cortas. Sin embargo, fue en 1984 cuando alcanzó el éxito con \"Dr. Slump\", una comedia de ciencia ficción protagonizada por una niña robot llamada Arale. La serie fue un gran éxito y catapultó a Toriyama a la fama. Sin embargo, fue con la creación de \"Dragon Ball\" en 1984 cuando Toriyama se convirtió en un nombre conocido en todo el mundo. \"Dragon Ball\" es un manga de acción y aventuras que sigue las aventuras de Son Goku, un poderoso luchador con habilidades especiales. La serie se convirtió en un fenómeno global y dio lugar a múltiples adaptaciones de anime, películas, videojuegos y merchandising.'),
(18, 'Tatsuya Endo', 'Tatsuya Endō, nacido el 23 de julio de 1980 es un mangaka japonés que es mejor conocido por ser el creador de la serie de manga Spy × Family. Endō tuvo éxito anterior con títulos como TISTA y Gekka Bijin, pero no a la misma escala que Spy × Family, que se publica en la revista en línea Shōnen Jump+ y que cuenta con más de diez millones de copias físicas y digitales en circulación dentro de sus primeros siete volúmenes.'),
(19, 'Tomohito Oda', 'Tomohito Oda es un mangaka japonés conocido por su trabajo en el manga y anime \"Komi Can\'t Communicate\" (también conocido como \"Komi-san wa, Komyushou desu.\"). Nacido el 1 de abril de 1989 en la prefectura de Saitama, Japón, Oda se interesó en el dibujo y la narración desde una edad temprana. Comenzó su carrera como asistente de mangaka antes de debutar como autor de manga en 2012 con la serie \"Digicon\", que se publicó en la revista Weekly Shonen Jump. Sin embargo, fue en 2016 cuando alcanzó un gran éxito con \"Komi Can\'t Communicate\", una comedia romántica que sigue la vida de Shoko Komi, una estudiante con dificultades para comunicarse con los demás debido a su apariencia imponente. El manga \"Komi Can\'t Communicate\" se ha vuelto extremadamente popular tanto en Japón como a nivel internacional, ganando reconocimiento por su historia conmovedora y personajes entrañables. La serie ha sido adaptada a un anime en 2021, lo que ha ampliado aún más su audiencia.'),
(20, 'Muneyuki Kaneshiro', 'Muneyuki Kaneshiro es un guionista y mangaka japonés conocido por su trabajo en el manga \"Blue Lock\". No se dispone de información sobre su fecha de nacimiento y detalles personales. Kaneshiro comenzó su carrera en la industria del manga trabajando como asistente de otros mangakas. Hizo su debut como autor de manga en 2009 con la serie \"Fûjin no Doukei\", pero fue con \"Blue Lock\" que ganó reconocimiento y popularidad.'),
(23, 'Yō Yoshinari', 'Yō Yoshinari es un reconocido animador y director de anime japonés. Nació el 7 de diciembre de 1971 en la ciudad de Mie, Japón. Desde una edad temprana, Yoshinari mostró talento en el dibujo y un gran interés por el mundo del anime y la animación. Después de completar su educación, comenzó a trabajar en la industria del anime como animador. Yoshinari ha trabajado en varios estudios de animación y ha colaborado en numerosas producciones de renombre. Uno de sus proyectos más destacados es su trabajo en Studio Gainax, donde participó en series de culto como \"Neon Genesis Evangelion\" y \"FLCL\".'),
(24, 'Naoko Takeuchi', 'Naoko Takeuchi es una famosa mangaka japonesa, reconocida principalmente por ser la creadora y autora del exitoso manga \"Sailor Moon\". Nació el 15 de marzo de 1967 en Kōfu, prefectura de Yamanashi, Japón. Desde muy joven, Takeuchi mostró un gran interés por el dibujo y la escritura. Durante su tiempo en la universidad, se especializó en química, pero su pasión por el manga la llevó a perseguir una carrera en la industria del entretenimiento. En 1991, Naoko Takeuchi lanzó su obra más conocida, \"Sailor Moon\", que se convirtió en un fenómeno cultural a nivel mundial. El manga cuenta la historia de un grupo de chicas guerreras, conocidas como las Sailor Scouts, que protegen al mundo de las fuerzas del mal. La serie fue adaptada a un exitoso anime y generó una gran cantidad de seguidores en todo el mundo.'),
(25, 'Ken Wakui', 'Ken Wakui es un mangaka japonés conocido por su obra más famosa, \"Tokyo Revengers\". Nació el 23 de septiembre de 1978 en la prefectura de Fukuoka, Japón. A lo largo de su carrera, ha trabajado en varios mangas, pero fue con \"Tokyo Revengers\" que alcanzó la fama internacional. Wakui comenzó su carrera como asistente del mangaka Yasuyuki Tsunami. Su primer trabajo como autor principal fue el manga \"Shinjuku Swan\", que se publicó desde 2005 hasta 2013 en la revista Young Animal de la editorial Hakusensha. Esta obra recibió una adaptación cinematográfica en 2015. Sin embargo, el mayor éxito de Ken Wakui llegó con \"Tokyo Revengers\". Este manga comenzó a publicarse en marzo de 2017 en la revista Weekly Shonen Magazine de la editorial Kodansha. La historia sigue a Takemichi Hanagaki, un joven que tiene la capacidad de viajar en el tiempo y regresar a su pasado. Con esta habilidad, intenta cambiar el curso de los eventos y evitar tragedias en la pandilla de delincuentes juveniles a la que pertenecía.'),
(26, 'Escritor de Pruebas', 'Escritor para pruebas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangas`
--

CREATE TABLE `mangas` (
  `id` int(10) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `genero` enum('accion','deportes','musical','romance') NOT NULL,
  `portada` varchar(255) NOT NULL,
  `escritor_id` int(10) UNSIGNED NOT NULL,
  `editorial_id` int(10) UNSIGNED NOT NULL,
  `estreno` year(4) NOT NULL,
  `bajada` text NOT NULL,
  `precio` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `mangas`
--

INSERT INTO `mangas` (`id`, `titulo`, `genero`, `portada`, `escritor_id`, `editorial_id`, `estreno`, `bajada`, `precio`) VALUES
(1, 'My Hero Academia', 'accion', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia01.jpg', 1, 1, '2014', 'Boku no Hero Academia es una serie creada por Kohei Horikoshi, basado en un one-shot anterior del mismo autor; la historia se ubica en una realidad en la que más del 80% de la población mundial ha desarrollado un “don”, es decir, superpoderes que les otorgan grandes habilidades. Eso es lo común, lo natural, lo que todos esperan obtener en algún momento. Como consecuencia, también son moneda corriente los superhéroes y supervillanos, y sus respectivos seguidores y detractores.\n\nEl pobre Izuku Midoriya, un mega fan de los superhéroes, se encuentra en la paradójica situación de pertenecer a esa fracción minoritaria de gente sin poderes. Eso no le impide soñar con estudiar en la Academia de Héroes y llegar a ser uno tan genial como su ídolo, el invencible All Might. A pesar de que la realidad lo golpea una y otra vez, un encuentro inesperado con su ídolo cambia el rumbo y si logra sobrevivir a una batalla mortal contra un supervillano, llevar a cabo un entrenamiento infernal y tragarse un pelo todopoderoso (?) se acercará a sus sueños. ¡Y eso es sólo el comienzo, ya que esta sinopsis ni siquiera cubre todo el primer tomo! Grandes dilemas, mucho humor y la mejor combinación de shonen de peleas y la tradición superheroica esperan en cada tomo, con muchas vueltas de tuerca en cada saga.\nEste imparable manga comenzó su andadura en el año 2014 en las páginas de la revista Shonen Jump (hogar de Dragon Ball, Bleach y Bakuman, entre otros tanques), hoy en día sigue publicándose y actualmente alcanza ya los 16 tomos recopilatorios. Cuenta además con varias adaptaciones, entre las que se destacan dos temporadas de anime para TV y numerosos videojuegos.', 2149.99),
(2, 'One Piece', 'accion', 'https://www.ivrea.com.ar/onepiece/onepiece01.jpg', 4, 1, '1997', 'One Piece relata las aventuras de Monkey D. Luffy, un joven que, inspirado en Shanks, un pirata que le salvó la vida, desea convertirse en el Rey de los Piratas y encontrar el tesoro conocido como One Piece, que pertenecía a Gol D. Roger. Antes de ser ejecutado, hace 24 años, este legendario pirata contó al mundo sobre la existencia de su tesoro. Esto dio inicio a lo que se conoce como \"la Gran era de los piratas\": innumerables piratas se dispusieron a buscar ese tesoro, causando grandes problemas al Gobierno Mundial. Luffy iniciará sus aventuras, reclutando amigos y nakamas que lo ayuden a cumplir su sueño.\r\n\r\nCreado por Eiichiro Oda, comenzó su publicación el 19 de Julio de 1997 en la Shonen Jump. Es el comic más vendido en el mundo, y también el más exitoso en la historia de Japón, rompiendo el record de Dragon Ball y otros tantos.', 2249.99),
(3, 'Black Clover', 'accion', 'https://www.ivrea.com.ar/blackclover/blackclover01.jpg', 3, 1, '2015', 'Cuenta la Historia que la humanidad estaba a punto de caer bajo el yugo del Rey Demonio, pero un mago solitario lo derrotó para traerle paz al mundo. Ese mago se convirtió en leyenda y fue nombrado el primer Rey Mago (sin relación con Melchor, Gaspar, ni Baltasar). El Reino del Trébol vivió en paz a través de las generaciones y los reyes magos y nueve órdenes mágicas subordinadas mantuvieron feliz al pueblo.\r\nPero esta no es la historia de este gran héroe, sino de Asta y Yuno, dos huérfanos que fueron criados juntos desde su nacimiento después de ser abandonados en la iglesia de Hage, ubicada en la zona olvidada del Reino del Trébol. En un mundo donde todos tienen poder mágico, que surge en las personas naturalmente, Asta es la única persona completamente incapaz de hacer magia, y por eso trata de compensarlo entrenando hasta que le salgan callos en el ojete. Por el contrario, Yuno es un prodigio nato, con inmenso poder mágico y el talento para controlarlo, además de una personalidad tranquila y contemplativa en contraste con el griterío e hiperactividad constantes de Asta.\r\nCuando cumplen 15 años, Asta y Yuno tienen la chance de convertirse en los denominados Caballeros Mágicos, al recibir sus respectivos grimorios, libros que canalizan la magia de su poseedor. Yuno recibe el grimorio del trébol de cuatro hojas (que canaliza la magia de viento), como el que tenía el primer rey mago del reino, mientras que Asta no liga ni un pin. Sin embargo, cuando un ladrón incapacita a Yuno para intentar vender su grimorio en el mercado negro, Asta convoca su propio grimorio, un extraño tomo deslucido que contiene un trébol de cinco hojas, ¡que esconde los secretos de la extraña Anti-Magia (que permite cancelar todos los efectos mágicos), para vencerlo! Como era de prever, Asta esconde mucha más fuerza de la que aparentaba y AHORA SÍ empieza la historia propiamente dicha. Ambos terminan en distintas órdenes de caballería (donde aparecen el 90% de los personajes secundarios y subtramas), mientras construyen una rivalidad amistosa para tratar de convertirse en Rey Mago; no sin antes alcanzar a ser los caballeros mágicos más fuertes del reino.', 2199.99),
(4, 'Akame ga Kill!', 'accion', 'https://www.ivrea.com.ar/akamegakill/akamegakill01.jpg', 2, 1, '2010', 'Tatsumi se aventura en la Capital en busca de fortuna para ayudar a su pueblo. Él vivía ignorante de la corrupción y manejos turbios que reinaban allí cuando una bella delincuente le roba. Por suerte, otra linda chica que forma parte de The Night Raid, un grupo de asesinos, lo rescata. Lo que no sabe Tatsumi es que esa joven va a recibir una visita de una familia de asesinos (incluida la chica ladrona) y que puede que ellos sean los buenos (o los menos malos)... y lo quieran reclutar. ¡Sumate al viaje de Tatsumi mientras se replantea su forma de ver el mundo de la mano de Akame, ¡La asesina de ojos rojos!!\r\n\r\nAkame ga Kill se publicó en Japón entre 2010 y 2016 en la revista Gangan Joker de la editorial Square Enix. Sus 15 tomos se publican en idéntico formato al original japonés.', 2099.99),
(5, 'Demon Slayer: Kimetsu no Yaiba', 'accion', 'https://www.ivrea.com.ar/demonslayer/demonslayer01.jpg', 8, 1, '2016', 'Esta obra de Koyoharu Gotouge, uno de los últimos megaéxitos de la Shonen Jump en Japón, transcurre en el Japón feudal de la Era Taisho, aunque en una versión con elementos fantásticos, como unos agradables demonios que morfan carne humana. Narra las aventuras de Tanjiro Kamado, un joven amable y de buen corazón que vive con su madre y cinco hermanos en las montañas, y se dedica a vender carbón para subsistir.\r\n\r\nUn día que Tanjiro estaba volviendo de sus labores, un aldeano le sugiere pasar la noche en su casa para prevenir que se lo morfe un Oni. Tanjiro acepta, pero cuando finalmente regresa a su hogar, descubre que aunque él zafó, toda su familia fue devorada por un demonio, salvo su hermanita Nezuko, ¡que terminó convertida en uno de ellos! En su desesperación por encontrar ayuda, Tanjiro se topa con un asesino de demonios llamado Giyu Tomioka (clásico amigo-rival con pinta de me tomé tres valiums), quien descubre que extrañamente Nezuko retiene suficiente de su humanidad para querer proteger a su hermano. Sorprendido por esto, y por las habilidades de combate del chico, le sugiere que vaya a visitar a su maestro… Así comienzan las aventuras de Tanjiro para convertirse en un asesino de demonios y lograr encontrar tanto una cura para su hermana, como al asesino de su familia, mientras se topa con amigos y rivales de lo más inesperados.\r\n\r\n¿En dónde destaca Kimetsu no Yaiba para llegar a ser tan popular? Prácticamente en todo. El mix justo de misterio, drama, acción, mitología y terror destilado, la hizo acaparar público muy amplio al saber mezclar los recursos y dispositivos típicos del género, protagonista bueno y -cada vez más- poderoso incluido. ¡Kimetsu no Yaiba es una historia de intensas aventuras que no da respiro, y ahora Ivrea te la encaja cual tarascón de demonio!\r\n\r\nEl manga de Kimetsu no Yaiba, de Koyoharu Gotoge, comenzó a serializarse en la Shonen Jump en febrero de 2016. Se adaptó a un anime magistralmente animado por Ufotable, estrenado en abril de 2019. Esta primera temporada de 26 episodios emitidos catapultó al manga a los primeros puestos de ventas semanales de la revista, y también a sus tomos recopilatorios. ¡Pero la caza recién comienza!', 2379.99),
(6, 'Tokyo Ghoul', 'accion', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul01.jpg', 14, 1, '2011', 'La mayoría de los habitantes de Tokyo ignoran una aterradora realidad: en las sombras de su ciudad acechan horribles seres que se camuflan entre la gente para darles caza y devorarlos, los ghouls...\r\n\r\nKen Kaneki es un estudiante tímido y recluido que que', 2299.99),
(7, 'Shuumatsu no Valkyrie', 'accion', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_01.jpg', 15, 1, '2017', '¡La humanidad está condenada! Los dioses de todas las religiones se reúnen cada 1.000 años en el Valhalla para decidir el destino de la raza humana y esta vez la humanidad se pasó de la raya: guerras, contaminación, destrucción de la naturaleza… La decisión de los dioses está tomada, los humanos tienen que extinguirse…\r\n\r\nPero hay una última esperanza: las valquirias proponen que se tenga en cuenta una antigua ley que le permite a la humanidad defenderse enfrentando a los dioses con los humanos más poderosos, el Ragnarök. Cada facción elegirá a sus 13 contendientes y tendrán que enfrentarse en un desigual combate que sólo puede tener un ganador y que se decidirá al mejor de siete.\r\n\r\nMientras que los dioses contarán en sus filas con seres de la talla de Zeus, Anubis, Shiva o Thor, los humanos tendrán entre sus defensores a Rasputin, Leónidas, Kojiro Sasaki o Jack el Destripador, entre otros. Aunque los dioses se burlen de sus débiles contrincantes, la astucia humana y la ayuda de las valquirias permitirá unos combates de lo más brutales y sorprendentes.\r\n\r\nLa serie cuenta hasta la fecha con 7 volúmenes en su edición japonesa y está escrita por Shinya Umemura y Takumi Fukui e ilustrada por Azychika, detallando de una manera atractiva aspectos de la mitología, la religión y la historia de la humanidad.', 2699.99),
(8, 'Hunter X Hunter', 'accion', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter01.jpg', 16, 1, '1998', '¡Y no nos interesan tus excusas; tanto que lo pediste, ahora lo tenés que comprar!\n\nLa edición argentina que realmente hacía falta. La edición es en el tradicional formato tankoubon con sobrecubierta, replicando íntegro el contenido de la edición recopilatoria original japonesa.\n\nSigue a… Digo, el protagonista es un chico de doce años de espíritu inquieto llamado Gon Freecss. Tras enterarse de que su papá no había muerto y que lo dejó al cuidado de su Tía Mito cuando era un bebé, Gon sueña con poder dar con él y con seguir sus pasos convirtiéndose en Hunter. Los Hunters son personas acreditadas y autorizadas para cazar objetos valiosos y difíciles de conseguir, tesoros, bestias exóticas e incluso a otras personas. A medida que avanza la historia, Gon se hace amigo de otros tres aspirantes a Hunter: Leorio, Kurapika y Killua, quienes lo acompañarán en sus aventuras. Por supuesto irán conociendo y topándose con una infinidad de personajes de lo más variopintos, a lo largo de los -hasta ahora- siete arcos: Examen del cazador, La familia Zoldyck y la Torre Celestial, En la Ciudad de York Shin, Greed Island, Las Hormigas Quimeras, Elecciones Presidenciales, Expedición al Continente Oscuro (en publicación en Japón actualmente).\n\nLa versatilidad de Togashi para cautivar con esta, una de sus obras magnas, es tal que queda manifiesta en esos diferentes arcos argumentales. Desde la clásica etapa de exámenes y graduaciones típica de tantos mangas shonen (incluso en la actualidad), pasando por la absoluta turbiedad y siniestro ambiente en torno al Gen’ei Ryodan, o el mundo de juegos y acertijos que presenta Greed Island. Nada deja de sorprender a lo largo de la historia y es notable cómo el autor se reinventa una y otra vez.', 1899.99),
(9, 'Dragon Ball', 'accion', 'https://www.ivrea.com.ar/dragonball/dragonball_01.jpg', 17, 1, '1985', 'DragonBall es uno de los mangas más reconocidos a nivel mundial, que originalmente fue publicado en la Shonen Jump de Shueisha entre 1984 y 1995. Cuenta lahistoria de Son Goku, el guerrero que, junto a sus amigos, protege a la Tierra de los más diversos y poderosos enemigos desde que es un chico hasta que', 2499.99),
(10, 'Spy × Family', 'accion', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily01.jpg', 18, 1, '2019', 'Los países de Westalis y Ostania libran desde hace años una guerra fría donde el espionaje y los asesinatos son moneda corriente. El inigualable espía conocido como \"Twilight\" es el mejor agente de Westalis que tiene por objetivo encargarse del poderoso Donovan Desmond. El problema es que Desmond es un ermitaño antisocial cuyas únicas apariciones públicas son en los actos escolares de su hijo. Twilight deberá acercarse al objetivo lo suficiente como para desbaratar su agenda secreta. Para ello, sólo deberá simular que es un hombre de familia... con el pequeño detalle de que sólo tiene 7 días para conseguir la familia ideal.\r\n\r\nEs por eso que bajo la identidad del psiquiatra Loid Forger, Twilight reclutará a Yor Briar, una civil ostaniana que quiere tener bajo perfil y Anya, una huerfanita que sólo busca una familia cariñosa, para hacer las partes de esposa e hija respectivamente. Pero resulta que este par tampoco es nada normal, especialmente si tenemos en cuenta que Yor es una asesina profesional buscada por ambos bandos y Anya es una prófuga de un laboratorio secreto donde consiguió poderes telepáticos. La típica familia normal dirán…. Si pasa, pasa…\r\n\r\nEs así como los tres sapos de otro pozo deberán cumplir con sus respectivos objetivos, por obligación o por deseo, mientras intentan llevar una vida cotidiana lo más normal que les permita sus situaciones.', 2299.99),
(11, 'Little Witch Academia', 'accion', 'https://www.ivrea.com.ar/littlewitchacademia/littlewitchacademia1.jpg', 23, 1, '2013', 'Little Witch Academia es una popular franquicia de anime japonesa creada por Yo Yoshinari, producida por Trigger, y compuesta por dos largometrajes emitidos en 2013 más una serie de Tv que adapta ambos, y que puede verse en Argentina por Netflix.\r\n\r\nIvrea se complace de confirmar la publicación de la más reciente de las adaptaciones a manga, que sigue fielmente la trama original del anime. Con ilustraciones de Keisuke Sato, y serializada por la Shonen Ace de Kadokawa Shoten, Little Witch Academia sigue la historia de Atsuko Kagari, una chica que sueña con convertirse en una bruja desde que era una niña. Para cumplirlo se inscribe en la Escuela Mágica Luna Nova. Sin embargo, como no procede de una familia con vínculos mágicos, todo se vuelve un auténtico desafío para ella. Esto empezará a cambiar cuando descubra el Shiny Rod, una poderosa reliquia mágica. Atsuko y sus amigas lucharán en un entorno hostil, ya que la magia está menguando paulatinamente en todo el mundo, y Luna Nova pugna por seguir existiendo mientras el público la considera como algo perteneciente al pasado.', 2999.99),
(12, 'Sailor Moon', 'accion', 'https://www.ivrea.com.ar/sailormoon/sailormoon01.jpg', 24, 1, '1991', 'Uno de los mayores anhelos de la historia de Ivrea (y del mercado argentino) se hace realidad por fin!! SAILOR MOON saldrá en edición argentina, completando así el trío de series más populares que inició el fenómeno del anime en Argentina a mediados de los 90s (junto con Saint Seiya y Dragon Ball).\r\n\r\nUsagi Tsukino (sí, vamos a usar los nombres originales japoneses) era una chica de secundaria común y corriente hasta que una gata parlante llamada Luna le dice que ella es Sailor Moon y le confiere los poderes para transformarse en su nueva identidad. Como tal, debe enfrentar a diversos enemigos e impartir justicia en el nombre de la luna y de la misteriosa Princesa de la Luna. El transcurso de la historia va llevando a Usagi a conocer a otras chicas destinadas a ser Sailor Senshi (Sailor Scouts), las que forman equipo con ella y las que prefieren actuar por su cuenta. También surge el clásico personaje masculino que la salva a último momento, Tuxedo Mask (Tuxedo Kamen), por el que Usagi se vuelve loca, y la historia va desentrañando el por qué de que todos hayan sido predestinados a pelear por la justicia.\r\n\r\nSailor Moon fue publicado originalmente en Japón entre 1991 y 1997, recopilándose en 18 tomos. La edición de Ivrea está basada en la edición shinsoban japonesa, que re-recopila esos 18 tomos en 12, logrando así que cada tomo tenga entre 240 y 270 páginas. Además, la autora dibujó nuevas portadas especialmente para esa edición, como así también realizó algunas correcciones al argumento y a lo dibujos. Cada tomo además incluye páginas a color.\r\nAdemás del clásico anime de los 90s, existe en la actualidad una nueva versión llamada Sailor Moon Crystal, que es mucho más fiel al manga y en la actualidad continúa emitiéndose en Japón. En Argentina este anime se puede ver por la plataforma online Crunchyroll.', 2299.99),
(13, 'Tokyo Revengers', 'accion', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers01.jpg', 25, 1, '2017', 'Resignado a vivir su vida de mierda, Takemichi Hangaki se sorprende con la noticia de que Hinata Tachibana fue asesinada por una especie de mafia, la Tokyo Manji. Cuando pensaba que no podía empeorar aún más, repentinamente alguien lo empuja a las vías, pero acto seguido viaja en el tiempo y despierta ¡¡doce años atrás, durante su etapa en la escuela secundaria cuando era un intento de patotero!!\r\n\r\nA partir de ahí, y tras chequear que lo que hace durante su regreso al pasado sí cambia lo que pasa en el futuro, Takemichi empieza su desesperada carrera por corregir todo lo que lo volvió un fracasado de adulto. El tema es que si bien tiene un par de golpes de suerte, hay cosas con las que no va a poder lidiar y que no va a poder evitar que ocurran.', 2599.99),
(16, 'Haikyuu!!', 'deportes', 'https://www.ivrea.com.ar/haikyu/haikyu01.jpg', 11, 1, '2012', 'Shoyo Hinata es un estudiante que se fanatiza con el vóley después de ver un partido en el que la rompía un jugador petiso como él. Esto lo inspira a seguir sus pasos y convertirse en un as aunque tenga que arrancar bien de abajo.', 1899.99),
(17, 'Slam Dunk', 'deportes', 'https://www.ivrea.com.ar/slamdunk/slamdunk01.jpg', 12, 1, '1990', 'La obra más conocida del famosísimo Takehiko Inoue, narra la historia de Hanamichi Sakuragi, el típico quilombero de instituto japonés (clásico de los mangas de peleas de estudiantes) con el giro argumental de que quiere convertirse en jugador de básquetbol. La razón? No es amor al deporte, no... Es para levantarse una mina!!\r\n\r\nHanamichi tendrá tres grandes problemas para conquistar a la dulce y amable Haruko: su compañero de equipo y rival a muerte, el super-habilidoso Kaede Rukawa (del que ella está enamorada); el estrictísimo capitán del equipo (que por cierto es hermano de la mina en cuestión); y el problema más difícil de superar: su explosivo carácter.\r\n\r\nNota: las ediciones tradicional y kanzenban se encuentran descatalogadas actualmente. Sólo se consigue la deluxe.', 1799.99),
(18, 'Blue Lock', 'deportes', 'https://www.ivrea.com.ar/bluelock/bluelock01.jpg', 20, 1, '2018', 'La eliminación del seleccionado japonés del Mundial de 2018 impulsa a la Asociación de Fútbol de Japón a iniciar un programa para captar jugadores de los equipos de escuelas secundarias y prepararlos para la próxima Copa del Mundo en 2022. Pero no de la forma más habitual…\r\n\r\nEl objetivo es destruir la mentalidad perdedora de los futbolistas japoneses. Para eso, introduce un nuevo y radical régimen de entrenamiento: aislar a 300 jóvenes delanteros en una escuela/prisión llamada “Blue Lock” para que entrenen rigurosamente y, así, producir al delantero más egoísta del mundo.\r\n\r\n', 2022.12),
(21, 'Nana', 'musical', 'https://www.ivrea.com.ar/nana/nana_01.jpg', 13, 1, '2000', 'Nana Oosaki y Nana Komatsu son dos chicas de caracter completamente opuesto pero con más que el nombre en común. Se conocen en un tren camino a Tokyo, a donde se estan yendo a vivir para cumplir aquello que quieren. La dura y fria Nana Oosaki, busca convertirse en una estrella de Rock; mientras que la efusiva y poco centrada Nana Komatsu, quiere volver a reunirse con su novio, quien se había ido a vivir a Tokyo antes que ella. Este Shojo complejo y sofisticado para adultos es uno de los éxitos más grandes del manga en las últimas decadas. Cuenta también con adaptaciones al anime y a películas live action.', 1999.99),
(22, 'Oshi no Ko', 'musical', 'https://www.ivrea.com.ar/oshinoko/oshinoko01.jpg', 6, 1, '2019', 'Ai Hoshino es una talentosa y hermosa idol de 16 años. Está en el mejor momento de su carrera, sus fanáticos la adoran y hacen lo que sea por ella. Repentinamente, decide tomarse un descanso del mundo del espectáculo debido a algunos problemas de salud. Resulta que, en realidad, está embarazada de gemelos. Haciendo caso omiso a los consejos de su representante, Ai llega a la oficina de Goro Honda, un ginecólogo de una zona rural de Japón que, para su sorpresa, es fanático suyo. Pero este encuentro fortuito se verá interrumpido por otro fan como él y muere… ¡para renacer como Aquamarine Hoshino, uno de los hijos recién nacidos de Ai!\r\n\r\n¿Esto va a desatar una comedia de enredos? Pues no, todo lo contrario. Oshi no Ko es especialmente crudo al revelar todo el costado negativo de la industria del entretenimiento en Japón. Y por si fuera poco la relación entre los gemelos y su madre revelará más de una sorpresa con el correr de los capítulos', 2799.99),
(26, 'Somos Quintillizas', 'romance', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas01.jpg', 5, 1, '2017', 'Futaro Uesugi es un joven decidido y trabajador y hoy está más feliz que nunca: se está por casar con el amor de su vida, una hermosa mujer de la prestigiosa familia Nakano y todo es color de rosa. Excepto que todavía faltan años para ese momento de felicidad…\r\nFutaro Uesugi es un adolescente honesto y con notas perfectas, pero acomplejado, antisocial y terriblemente pobre. Su madre murió cuando era chico y él se pasa los días contando las monedas para que su hermanita tenga una niñez normal. Su rutina cambia por completo el día en que un magnate le encarga que le dé clases particulares a sus cinco hermosas pero irresponsables hijas quintillizas (idénticas, por esos milagros de la genética del manga), que además de su enorme parecido sólo tienen en común que todas son pésimas estudiantes. Así conocerá a -sin repetir y sin soplar- a Itsuki, Ichika, Yotsuba, Miku y Nino Nakano, a quienes tendrá que convencer de agarrar los libros y explotar sus puntos fuerte si quiere llevar unos mangos más a casa. Las chicas en principio no se lo bancan y lo esquivan como a la peste, así que Futaro deberá aprender a lidiar con sus cinco personalidades al tiempo que los sentimientos tanto de las chicas como las suyas van mutando. Todo se complica cuando a través de una misteriosa foto de una de las hermanas cuando era chica, se da cuenta de que ya conoció a una de las cinco en la infancia, en un momento clave que cambió el rumbo de su vida. ¿Cuál de las cinco será esta chica que le movió el piso años atrás? ¿Cuál será aquella con la que se case años adelante? ¿Cuál será la que antes aclare sus sentimientos? Estas y quinientas preguntas más irán surgiendo a lo largo de los más variados arcos, pasando por un espectro de emociones tan variados como la personalidad, peinado, y movimiento distintivo de sus protagonistas.\r\n\r\nEste manga quintaesencial nació como un one-shot en enero de 2017 que tuvo gran aceptación en la revista Shonen Magazine, así que para agosto del mismo año, después de unas leves modificaciones, se convirtió en el capítulo 1 de la serialización que lleva hasta la fecha 10 tomos publicados en Japón. Se convirtió en anime en 2018 y ya está programada una segunda temporada para el año que viene. La adaptación condensa con bastante fidelidad los primeros tomos del manga.', 2199.99),
(27, 'No Me Jodas, Nagatoro', 'romance', 'https://www.ivrea.com.ar/nagatoro/nagatoro01.jpg', 7, 1, '2017', 'Naoto Hachioji está en segundo año de la secundaria, es un chico tan tímido e introvertido como buen dibujante. Un día, mientras busca un lugar donde sentarse a dibujar en la biblioteca, se le caen las páginas del manga que hacía, justo al lado de un grupo de chicas que, al verlas, se le cagan de risa en la cara y se van… salvo una estudiante de primer año, Hayase Nagatoro, que básicamente empieza a boludearlo hasta hacerlo llorar. Desde entonces, Nagatoro y consecuentemente sus amigas no van a parar de joder a su “senpai” y molestarlo de todas las maneras posibles… Pero hay tres cosas a tener en cuenta: Nagatoro es especialmente jodona cuando están a solas, se molesta bastante si sus amigas buscan propasarse con él, y en definitiva lo que ella busca es que su senpai salga de su burbuja autoimpuesta para que se divierta y conozca un poco el mundo que lo rodea… y quizás algo más…', 2499.99),
(28, 'Rent a Girlfriend', 'romance', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend01.jpg', 9, 1, '2017', 'Kazuya Kinoshita es un veinteañero universitario que está muy feliz con su novia, ¡a la que incluso llegó a besar! Pero cuando ella lo deja de golpe, le pega el bajón y encuentra su único consuelo en una app que te permite alquilar una novia. Y así llega a su vida Chizuru Mizuhara, una morocha increíblemente linda, tanto que parece demasiado buena para ser real. Aunque las sospechas de que “acá debe haber trampa en algo” llevan al muchacho a no querer seguir con el jueguito, la abuela termina internada justo a tiempo para salvar la trama. Así es como Kazuya acaba yendo a ver a la abuela con Chizuru y ella queda tan encantada con la preciosa novia de su nieto que él no va a tener otra que continuar con el trato. Muy pronto ambos descubrirán que sus caminos están mucho más interconectados de lo que pensaban. Pero para que no sean felices ni coman perdices, la más disparatada variedad de personajes secundarios entrarán en escena para enquilombar las cosas.', 2199.99),
(29, 'Your Lie in April', 'romance', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril01.jpg', 10, 1, '2011', 'Serie largamente pedida y muchas veces adjudicada a nosotros sin siquiera tenerla en planes realistas. Pero tanto insistieron en que la saquemos que nos convencieron, y acá por fin anunciamos su publicación. Y no sólo la demanda jugó a favor. Your Lie in April es un manga que se merece ser publicado, porque, en palabras de George Morikawa, autor de Hajime no Ippo, “logra superar brillantemente la mayor debilidad inherente que tiene el manga: ¡que se vea el sonido!”.\r\n\r\nA los 11, Kosei ya era todo un virtuoso del piano, pero tras la muerte de su madre luego de una larga enfermedad, pierde su don por completo. Su único confort en esos años de apatía fue el cariño de sus amigos Tsubaki y Watari. Hasta que años después, le presentan a Kaori, una violinista talentosísima que con métodos e ideas sobre la música completamente opuestos a los suyos. El explosivo choque de sus personalidades les dará un nuevo impulso a sus vidas, y sueños y anhelos olvidados volverán a flor de piel en primavera.\r\n\r\nYour Lie in April (Shigatsu wa Kimi no Uso), es un manga shonen de Naoshi Arakawa que se serializó en la Shonen Magazine entre 2011 y 2015, completando 11 tomos. Entre 2014 y 2015 tuvo un anime que adaptó con bastante fidelidad la serie entera, aunque reinterpretando algunas escenas (como el emotivo final). También tuvo una película live action que se estrenó en 2016, e incluso una obra de teatro que se estrenó en el verano boreal de 2017.', 2399.99),
(30, 'Komi-san no Puede Comunicarse', 'romance', 'https://www.ivrea.com.ar/komi-san/komi-san01.jpg', 19, 1, '2015', 'Hitohito Tadano acaba de empezar la secundaria alta anhelando que sea pura paz y tranquilidad, pero sus planes se truncan cuando termina sentado al lado de la perfecta Shoko Komi. Ella es linda, inteligente, educada y hasta huele bien. Pero tiene 0 dotes sociales y no sabe cómo corno comunicarse con los demás. Es ahí que Tadano se sube al pony y se propone ayudarla a su compañera hasta que se haga de cien amigos, y con suerte algo más.', 2499.99),
(36, 'KaguyaSama: Love Is War', 'romance', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_7dqukit7ad2kl2kdu1q2l6i45n/-S897-FWEBP', 6, 2, '2020', '¡Ya sea gente educada o de buena familia, la academia Shuchiin reúne a los mayores genios! En el consejo estudiantil del centro se conocen Kaguya Shinomiya, vicepresidenta del consejo, y Miyuki Shirogane, el presidente. Parece que se gustan, pero... ¡ha pasado medio año sin que suceda nada! Son tan orgullosos que se niegan a confesar sus sentimientos, así que esperan que sea el otro el que dé el paso, y para ello planean las más complejas estrategias. ¡¡Disfruten hasta que se confiesen su amor!! ¡¡Empieza una divertida guerra psicológica!!', 2399.99),
(38, 'Mi Manga de Pruebas 2', 'deportes', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_8dk4t91t8d5mhajm64j1ndu73r/-S897-FWEBP', 26, 35, '2010', '¡Se desarrolla la batalla Pokémon en la Isla Cereza! ¡En medio de la pelea aparece Red, quien había desaparecido! Por otro lado, Yellow y Blaine son arrastrados al fondo de la isla y ahí se topan con Lance, el general del Alto Mando, ¡Y da inicio el duelo final! ¡La impactante culminación de la saga de Yellow! ¡Siente la ardiente pasión al leerlo!', 2999.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangas_x_editoriales`
--

CREATE TABLE `mangas_x_editoriales` (
  `id` int(10) UNSIGNED NOT NULL,
  `manga_id` int(10) UNSIGNED NOT NULL,
  `editorial_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `mangas_x_editoriales`
--

INSERT INTO `mangas_x_editoriales` (`id`, `manga_id`, `editorial_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 16, 1),
(14, 17, 1),
(15, 18, 1),
(16, 21, 1),
(17, 22, 1),
(18, 26, 1),
(19, 27, 1),
(20, 28, 1),
(21, 29, 1),
(22, 30, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `nombreUsuario` varchar(20) NOT NULL,
  `nombreCompleto` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `rol` enum('usuario','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nombreUsuario`, `nombreCompleto`, `contraseña`, `rol`) VALUES
(1, 'lucas.garcia@davinci.edu.ar', 'admin', 'Lucas Emanuel García', '$2y$10$LeKJ4Uc8ipM1m4K139IhmeHl5ry3TPLQB69FX7FUNh.v.PpNgNmUu', 'admin'),
(2, 'dibu@mail.com', 'dibu', 'Dibu Martinez', '$2y$10$LeKJ4Uc8ipM1m4K139IhmeHl5ry3TPLQB69FX7FUNh.v.PpNgNmUu', 'usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `volumenes`
--

CREATE TABLE `volumenes` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` smallint(5) UNSIGNED NOT NULL,
  `manga_id` int(10) UNSIGNED NOT NULL,
  `portada_chica` varchar(255) NOT NULL,
  `portada_grande` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `volumenes`
--

INSERT INTO `volumenes` (`id`, `numero`, `manga_id`, `portada_chica`, `portada_grande`) VALUES
(1, 1, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia01_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia01.jpg'),
(2, 2, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia02_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia02.jpg'),
(3, 3, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia03_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia03.jpg'),
(4, 4, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia04_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia04.jpg'),
(5, 5, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia05_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia05.jpg'),
(6, 6, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia06_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia06.jpg'),
(7, 7, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia07_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia07.jpg'),
(8, 8, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia08_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia08.jpg'),
(9, 9, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia09_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia09.jpg'),
(10, 10, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia10_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia10.jpg'),
(11, 11, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia11_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia11.jpg'),
(12, 12, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia12_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia12.jpg'),
(13, 13, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia13_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia13.jpg'),
(14, 14, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia14_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia14.jpg'),
(15, 15, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia15_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia15.jpg'),
(16, 16, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia16_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia16.jpg'),
(17, 17, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia17_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia17.jpg'),
(18, 18, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia18_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia18.jpg'),
(19, 19, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia19_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia19.jpg'),
(20, 20, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia20_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia20.jpg'),
(21, 21, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia21_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia21.jpg'),
(22, 22, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia22_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia22.jpg'),
(23, 23, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia23_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia23.jpg'),
(24, 24, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia24_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia24.jpg'),
(25, 25, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia25_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia25.jpg'),
(26, 26, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia26_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia26.jpg'),
(27, 27, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia27_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia27.jpg'),
(28, 28, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia28_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia28.jpg'),
(29, 29, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia29_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia29.jpg'),
(30, 30, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia30_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia30.jpg'),
(31, 31, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia31_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia31.jpg'),
(32, 32, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia32_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia32.jpg'),
(33, 33, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia33_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia33.jpg'),
(34, 34, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia34_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia34.jpg'),
(35, 35, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia35_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia35.jpg'),
(36, 36, 1, 'https://www.ivrea.com.ar/myheroacademia/myheroacademia36_chica.jpg', 'https://www.ivrea.com.ar/myheroacademia/myheroacademia36.jpg'),
(37, 1, 2, 'https://www.ivrea.com.ar/onepiece/onepiece01_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece01.jpg'),
(38, 2, 2, 'https://www.ivrea.com.ar/onepiece/onepiece02_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece02.jpg'),
(39, 3, 2, 'https://www.ivrea.com.ar/onepiece/onepiece03_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece03.jpg'),
(40, 4, 2, 'https://www.ivrea.com.ar/onepiece/onepiece04_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece04.jpg'),
(41, 5, 2, 'https://www.ivrea.com.ar/onepiece/onepiece05_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece05.jpg'),
(42, 6, 2, 'https://www.ivrea.com.ar/onepiece/onepiece06_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece06.jpg'),
(43, 7, 2, 'https://www.ivrea.com.ar/onepiece/onepiece07_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece07.jpg'),
(44, 8, 2, 'https://www.ivrea.com.ar/onepiece/onepiece08_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece08.jpg'),
(45, 9, 2, 'https://www.ivrea.com.ar/onepiece/onepiece09_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece09.jpg'),
(46, 10, 2, 'https://www.ivrea.com.ar/onepiece/onepiece10_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece10.jpg'),
(47, 11, 2, 'https://www.ivrea.com.ar/onepiece/onepiece11_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece11.jpg'),
(48, 12, 2, 'https://www.ivrea.com.ar/onepiece/onepiece12_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece12.jpg'),
(49, 13, 2, 'https://www.ivrea.com.ar/onepiece/onepiece13_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece13.jpg'),
(50, 14, 2, 'https://www.ivrea.com.ar/onepiece/onepiece14_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece14.jpg'),
(51, 15, 2, 'https://www.ivrea.com.ar/onepiece/onepiece15_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece15.jpg'),
(52, 16, 2, 'https://www.ivrea.com.ar/onepiece/onepiece16_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece16.jpg'),
(53, 17, 2, 'https://www.ivrea.com.ar/onepiece/onepiece17_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece17.jpg'),
(54, 18, 2, 'https://www.ivrea.com.ar/onepiece/onepiece18_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece18.jpg'),
(55, 19, 2, 'https://www.ivrea.com.ar/onepiece/onepiece19_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece19.jpg'),
(56, 20, 2, 'https://www.ivrea.com.ar/onepiece/onepiece20_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece20.jpg'),
(57, 21, 2, 'https://www.ivrea.com.ar/onepiece/onepiece21_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece21.jpg'),
(58, 22, 2, 'https://www.ivrea.com.ar/onepiece/onepiece22_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece22.jpg'),
(59, 23, 2, 'https://www.ivrea.com.ar/onepiece/onepiece23_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece23.jpg'),
(60, 24, 2, 'https://www.ivrea.com.ar/onepiece/onepiece24_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece24.jpg'),
(61, 25, 2, 'https://www.ivrea.com.ar/onepiece/onepiece25_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece25.jpg'),
(62, 26, 2, 'https://www.ivrea.com.ar/onepiece/onepiece26_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece26.jpg'),
(63, 27, 2, 'https://www.ivrea.com.ar/onepiece/onepiece27_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece27.jpg'),
(64, 28, 2, 'https://www.ivrea.com.ar/onepiece/onepiece28_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece28.jpg'),
(65, 29, 2, 'https://www.ivrea.com.ar/onepiece/onepiece29_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece29.jpg'),
(66, 30, 2, 'https://www.ivrea.com.ar/onepiece/onepiece30_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece30.jpg'),
(67, 31, 2, 'https://www.ivrea.com.ar/onepiece/onepiece31_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece31.jpg'),
(68, 32, 2, 'https://www.ivrea.com.ar/onepiece/onepiece32_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece32.jpg'),
(69, 33, 2, 'https://www.ivrea.com.ar/onepiece/onepiece33_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece33.jpg'),
(70, 34, 2, 'https://www.ivrea.com.ar/onepiece/onepiece34_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece34.jpg'),
(71, 35, 2, 'https://www.ivrea.com.ar/onepiece/onepiece35_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece35.jpg'),
(72, 36, 2, 'https://www.ivrea.com.ar/onepiece/onepiece36_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece36.jpg'),
(73, 37, 2, 'https://www.ivrea.com.ar/onepiece/onepiece37_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece37.jpg'),
(74, 38, 2, 'https://www.ivrea.com.ar/onepiece/onepiece38_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece38.jpg'),
(75, 39, 2, 'https://www.ivrea.com.ar/onepiece/onepiece39_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece39.jpg'),
(76, 40, 2, 'https://www.ivrea.com.ar/onepiece/onepiece40_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece40.jpg'),
(77, 41, 2, 'https://www.ivrea.com.ar/onepiece/onepiece41_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece41.jpg'),
(78, 42, 2, 'https://www.ivrea.com.ar/onepiece/onepiece42_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece42.jpg'),
(79, 43, 2, 'https://www.ivrea.com.ar/onepiece/onepiece43_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece43.jpg'),
(80, 44, 2, 'https://www.ivrea.com.ar/onepiece/onepiece44_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece44.jpg'),
(81, 45, 2, 'https://www.ivrea.com.ar/onepiece/onepiece45_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece45.jpg'),
(82, 46, 2, 'https://www.ivrea.com.ar/onepiece/onepiece46_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece46.jpg'),
(83, 47, 2, 'https://www.ivrea.com.ar/onepiece/onepiece47_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece47.jpg'),
(84, 48, 2, 'https://www.ivrea.com.ar/onepiece/onepiece48_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece48.jpg'),
(85, 49, 2, 'https://www.ivrea.com.ar/onepiece/onepiece49_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece49.jpg'),
(86, 50, 2, 'https://www.ivrea.com.ar/onepiece/onepiece50_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece50.jpg'),
(87, 51, 2, 'https://www.ivrea.com.ar/onepiece/onepiece51_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece51.jpg'),
(88, 52, 2, 'https://www.ivrea.com.ar/onepiece/onepiece52_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece52.jpg'),
(89, 53, 2, 'https://www.ivrea.com.ar/onepiece/onepiece53_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece53.jpg'),
(90, 54, 2, 'https://www.ivrea.com.ar/onepiece/onepiece54_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece54.jpg'),
(91, 55, 2, 'https://www.ivrea.com.ar/onepiece/onepiece55_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece55.jpg'),
(92, 56, 2, 'https://www.ivrea.com.ar/onepiece/onepiece56_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece56.jpg'),
(93, 57, 2, 'https://www.ivrea.com.ar/onepiece/onepiece57_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece57.jpg'),
(94, 58, 2, 'https://www.ivrea.com.ar/onepiece/onepiece58_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece58.jpg'),
(95, 59, 2, 'https://www.ivrea.com.ar/onepiece/onepiece59_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece59.jpg'),
(96, 60, 2, 'https://www.ivrea.com.ar/onepiece/onepiece60_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece60.jpg'),
(97, 61, 2, 'https://www.ivrea.com.ar/onepiece/onepiece61_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece61.jpg'),
(98, 62, 2, 'https://www.ivrea.com.ar/onepiece/onepiece62_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece62.jpg'),
(99, 63, 2, 'https://www.ivrea.com.ar/onepiece/onepiece63_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece63.jpg'),
(100, 64, 2, 'https://www.ivrea.com.ar/onepiece/onepiece64_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece64.jpg'),
(101, 65, 2, 'https://www.ivrea.com.ar/onepiece/onepiece65_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece65.jpg'),
(102, 66, 2, 'https://www.ivrea.com.ar/onepiece/onepiece66_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece66.jpg'),
(103, 67, 2, 'https://www.ivrea.com.ar/onepiece/onepiece67_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece67.jpg'),
(104, 68, 2, 'https://www.ivrea.com.ar/onepiece/onepiece68_chica.jpg', 'https://www.ivrea.com.ar/onepiece/onepiece68.jpg'),
(105, 1, 3, 'https://www.ivrea.com.ar/blackclover/blackclover01_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover01.jpg'),
(106, 2, 3, 'https://www.ivrea.com.ar/blackclover/blackclover02_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover02.jpg'),
(107, 3, 3, 'https://www.ivrea.com.ar/blackclover/blackclover03_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover03.jpg'),
(108, 4, 3, 'https://www.ivrea.com.ar/blackclover/blackclover04_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover04.jpg'),
(109, 5, 3, 'https://www.ivrea.com.ar/blackclover/blackclover05_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover05.jpg'),
(110, 6, 3, 'https://www.ivrea.com.ar/blackclover/blackclover06_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover06.jpg'),
(111, 7, 3, 'https://www.ivrea.com.ar/blackclover/blackclover07_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover07.jpg'),
(112, 8, 3, 'https://www.ivrea.com.ar/blackclover/blackclover08_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover08.jpg'),
(113, 9, 3, 'https://www.ivrea.com.ar/blackclover/blackclover09_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover09.jpg'),
(114, 10, 3, 'https://www.ivrea.com.ar/blackclover/blackclover10_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover10.jpg'),
(115, 11, 3, 'https://www.ivrea.com.ar/blackclover/blackclover11_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover11.jpg'),
(116, 12, 3, 'https://www.ivrea.com.ar/blackclover/blackclover12_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover12.jpg'),
(117, 13, 3, 'https://www.ivrea.com.ar/blackclover/blackclover13_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover13.jpg'),
(118, 14, 3, 'https://www.ivrea.com.ar/blackclover/blackclover14_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover14.jpg'),
(119, 15, 3, 'https://www.ivrea.com.ar/blackclover/blackclover15_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover15.jpg'),
(120, 16, 3, 'https://www.ivrea.com.ar/blackclover/blackclover16_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover16.jpg'),
(121, 17, 3, 'https://www.ivrea.com.ar/blackclover/blackclover17_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover17.jpg'),
(122, 18, 3, 'https://www.ivrea.com.ar/blackclover/blackclover18_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover18.jpg'),
(123, 19, 3, 'https://www.ivrea.com.ar/blackclover/blackclover19_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover19.jpg'),
(124, 20, 3, 'https://www.ivrea.com.ar/blackclover/blackclover20_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover20.jpg'),
(125, 21, 3, 'https://www.ivrea.com.ar/blackclover/blackclover21_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover21.jpg'),
(126, 22, 3, 'https://www.ivrea.com.ar/blackclover/blackclover22_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover22.jpg'),
(127, 23, 3, 'https://www.ivrea.com.ar/blackclover/blackclover23_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover23.jpg'),
(128, 24, 3, 'https://www.ivrea.com.ar/blackclover/blackclover24_chica.jpg', 'https://www.ivrea.com.ar/blackclover/blackclover24.jpg'),
(129, 1, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill01_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill01.jpg'),
(130, 2, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill02_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill02.jpg'),
(131, 3, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill03_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill03.jpg'),
(132, 4, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill04_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill04.jpg'),
(133, 5, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill05_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill05.jpg'),
(134, 6, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill06_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill06.jpg'),
(135, 7, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill07_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill07.jpg'),
(136, 8, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill08_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill08.jpg'),
(137, 9, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill09_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill09.jpg'),
(138, 10, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill10_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill10.jpg'),
(139, 11, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill11_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill11.jpg'),
(140, 12, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill12_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill12.jpg'),
(141, 13, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill13_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill13.jpg'),
(142, 14, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill14_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill14.jpg'),
(143, 15, 4, 'https://www.ivrea.com.ar/akamegakill/akamegakill15_chica.jpg', 'https://www.ivrea.com.ar/akamegakill/akamegakill15.jpg'),
(144, 1, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer01_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer01.jpg'),
(145, 2, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer02_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer02.jpg'),
(146, 3, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer03_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer03.jpg'),
(147, 4, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer04_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer04.jpg'),
(148, 5, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer05_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer05.jpg'),
(149, 6, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer06_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer06.jpg'),
(150, 7, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer07_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer07.jpg'),
(151, 8, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer08_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer08.jpg'),
(152, 9, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer09_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer09.jpg'),
(153, 10, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer10_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer10.jpg'),
(154, 11, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer11_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer11.jpg'),
(155, 12, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer12_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer12.jpg'),
(156, 13, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer13_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer13.jpg'),
(157, 14, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer14_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer14.jpg'),
(158, 15, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer15_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer15.jpg'),
(159, 16, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer16_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer16.jpg'),
(160, 17, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer17_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer17.jpg'),
(161, 18, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer18_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer18.jpg'),
(162, 19, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer19_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer19.jpg'),
(163, 20, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer20_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer20.jpg'),
(164, 21, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer21_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer21.jpg'),
(165, 22, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer22_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer22.jpg'),
(166, 23, 5, 'https://www.ivrea.com.ar/demonslayer/demonslayer23_chica.jpg', 'https://www.ivrea.com.ar/demonslayer/demonslayer23.jpg'),
(167, 1, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul01_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul01.jpg'),
(168, 2, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul02_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul02.jpg'),
(169, 3, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul03_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul03.jpg'),
(170, 4, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul04_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul04.jpg'),
(171, 5, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul05_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul05.jpg'),
(172, 6, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul06_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul06.jpg'),
(173, 7, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul07_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul07.jpg'),
(174, 8, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul08_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul08.jpg'),
(175, 9, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul09_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul09.jpg'),
(176, 10, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul10_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul10.jpg'),
(177, 11, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul11_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul11.jpg'),
(178, 12, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul12_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul12.jpg'),
(179, 13, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul13_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul13.jpg'),
(180, 14, 6, 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul14_chica.jpg', 'https://www.ivrea.com.ar/tokyoghoul/tokyoghoul14.jpg'),
(196, 1, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_01chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_01.jpg'),
(197, 2, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_02chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_02.jpg'),
(198, 3, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_03chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_03.jpg'),
(199, 4, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_04chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_04.jpg'),
(200, 5, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_05chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_05.jpg'),
(201, 6, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_06chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_06.jpg'),
(202, 7, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_07chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_07.jpg'),
(203, 8, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_08chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_08.jpg'),
(204, 9, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_09chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_09.jpg'),
(205, 10, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_10chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_10.jpg'),
(206, 11, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_11chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_11.jpg'),
(207, 12, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_12chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_12.jpg'),
(208, 13, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_13chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_13.jpg'),
(209, 14, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_14chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_14.jpg'),
(210, 15, 7, 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_15chica.jpg', 'https://www.ivrea.com.ar/shuumatsunovalkyrie/shuumatsunovalkyrie_15.jpg'),
(211, 1, 16, 'https://www.ivrea.com.ar/haikyu/haikyu01_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu01.jpg'),
(212, 2, 16, 'https://www.ivrea.com.ar/haikyu/haikyu02_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu02.jpg'),
(213, 3, 16, 'https://www.ivrea.com.ar/haikyu/haikyu03_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu03.jpg'),
(214, 4, 16, 'https://www.ivrea.com.ar/haikyu/haikyu04_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu04.jpg'),
(215, 5, 16, 'https://www.ivrea.com.ar/haikyu/haikyu05_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu05.jpg'),
(216, 6, 16, 'https://www.ivrea.com.ar/haikyu/haikyu06_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu06.jpg'),
(217, 7, 16, 'https://www.ivrea.com.ar/haikyu/haikyu07_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu07.jpg'),
(218, 8, 16, 'https://www.ivrea.com.ar/haikyu/haikyu08_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu08.jpg'),
(219, 9, 16, 'https://www.ivrea.com.ar/haikyu/haikyu09_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu09.jpg'),
(220, 10, 16, 'https://www.ivrea.com.ar/haikyu/haikyu10_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu10.jpg'),
(221, 11, 16, 'https://www.ivrea.com.ar/haikyu/haikyu11_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu11.jpg'),
(222, 12, 16, 'https://www.ivrea.com.ar/haikyu/haikyu12_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu12.jpg'),
(223, 13, 16, 'https://www.ivrea.com.ar/haikyu/haikyu13_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu13.jpg'),
(224, 14, 16, 'https://www.ivrea.com.ar/haikyu/haikyu14_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu14.jpg'),
(225, 15, 16, 'https://www.ivrea.com.ar/haikyu/haikyu15_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu15.jpg'),
(226, 16, 16, 'https://www.ivrea.com.ar/haikyu/haikyu16_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu16.jpg'),
(227, 17, 16, 'https://www.ivrea.com.ar/haikyu/haikyu17_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu17.jpg'),
(228, 18, 16, 'https://www.ivrea.com.ar/haikyu/haikyu18_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu18.jpg'),
(229, 19, 16, 'https://www.ivrea.com.ar/haikyu/haikyu19_chica.jpg', 'https://www.ivrea.com.ar/haikyu/haikyu19.jpg'),
(230, 1, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk01_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk01.jpg'),
(231, 2, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk02_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk02.jpg'),
(232, 3, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk03_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk03.jpg'),
(233, 4, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk04_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk04.jpg'),
(234, 5, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk05_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk05.jpg'),
(235, 6, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk06_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk06.jpg'),
(236, 7, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk07_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk07.jpg'),
(237, 8, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk08_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk08.jpg'),
(238, 9, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk09_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk09.jpg'),
(239, 10, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk10_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk10.jpg'),
(240, 11, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk11_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk11.jpg'),
(241, 12, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk12_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk12.jpg'),
(242, 13, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk13_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk13.jpg'),
(243, 14, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk14_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk14.jpg'),
(244, 15, 17, 'https://www.ivrea.com.ar/slamdunk/slamdunk15_chica.jpg', 'https://www.ivrea.com.ar/slamdunk/slamdunk15.jpg'),
(245, 1, 21, 'https://www.ivrea.com.ar/nana/nana_01_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_01.jpg'),
(246, 2, 21, 'https://www.ivrea.com.ar/nana/nana_02_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_02.jpg'),
(247, 3, 21, 'https://www.ivrea.com.ar/nana/nana_03_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_03.jpg'),
(248, 4, 21, 'https://www.ivrea.com.ar/nana/nana_04_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_04.jpg'),
(249, 5, 21, 'https://www.ivrea.com.ar/nana/nana_05_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_05.jpg'),
(250, 6, 21, 'https://www.ivrea.com.ar/nana/nana_06_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_06.jpg'),
(251, 7, 21, 'https://www.ivrea.com.ar/nana/nana_07_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_07.jpg'),
(252, 8, 21, 'https://www.ivrea.com.ar/nana/nana_08_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_08.jpg'),
(253, 9, 21, 'https://www.ivrea.com.ar/nana/nana_09_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_09.jpg'),
(254, 10, 21, 'https://www.ivrea.com.ar/nana/nana_10_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_10.jpg'),
(255, 11, 21, 'https://www.ivrea.com.ar/nana/nana_11_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_11.jpg'),
(256, 12, 21, 'https://www.ivrea.com.ar/nana/nana_12_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_12.jpg'),
(257, 13, 21, 'https://www.ivrea.com.ar/nana/nana_13_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_13.jpg'),
(258, 14, 21, 'https://www.ivrea.com.ar/nana/nana_14_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_14.jpg'),
(259, 15, 21, 'https://www.ivrea.com.ar/nana/nana_15_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_15.jpg'),
(260, 16, 21, 'https://www.ivrea.com.ar/nana/nana_16_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_16.jpg'),
(261, 17, 21, 'https://www.ivrea.com.ar/nana/nana_17_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_17.jpg'),
(262, 18, 21, 'https://www.ivrea.com.ar/nana/nana_18_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_18.jpg'),
(263, 19, 21, 'https://www.ivrea.com.ar/nana/nana_19_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_19.jpg'),
(264, 20, 21, 'https://www.ivrea.com.ar/nana/nana_20_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_20.jpg'),
(265, 21, 21, 'https://www.ivrea.com.ar/nana/nana_21_chica.jpg', 'https://www.ivrea.com.ar/nana/nana_21.jpg'),
(266, 1, 22, 'https://www.ivrea.com.ar/oshinoko/oshinoko01_chica.jpg', 'https://www.ivrea.com.ar/oshinoko/oshinoko01.jpg'),
(267, 2, 22, 'https://www.ivrea.com.ar/oshinoko/oshinoko02_chica.jpg', 'https://www.ivrea.com.ar/oshinoko/oshinoko02.jpg'),
(268, 3, 22, 'https://www.ivrea.com.ar/oshinoko/oshinoko03_chica.jpg', 'https://www.ivrea.com.ar/oshinoko/oshinoko03.jpg'),
(269, 4, 22, 'https://www.ivrea.com.ar/oshinoko/oshinoko04_chica.jpg', 'https://www.ivrea.com.ar/oshinoko/oshinoko04.jpg'),
(270, 5, 22, 'https://www.ivrea.com.ar/oshinoko/oshinoko05_chica.jpg', 'https://www.ivrea.com.ar/oshinoko/oshinoko05.jpg'),
(271, 1, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas01_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas01.jpg'),
(272, 2, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas02_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas02.jpg'),
(273, 3, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas03_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas03.jpg'),
(274, 4, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas04_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas04.jpg'),
(275, 5, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas05_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas05.jpg'),
(276, 6, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas06_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas06.jpg'),
(277, 7, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas07_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas07.jpg'),
(278, 8, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas08_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas08.jpg'),
(279, 9, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas09_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas09.jpg'),
(280, 10, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas10_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas10.jpg'),
(281, 11, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas11_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas11.jpg'),
(282, 12, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas12_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas12.jpg'),
(283, 13, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas13_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas13.jpg'),
(284, 14, 26, 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas14_chica.jpg', 'https://www.ivrea.com.ar/somosquintillizas/somosquintillizas14.jpg'),
(285, 1, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro01_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro01.jpg'),
(286, 2, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro02_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro02.jpg'),
(287, 3, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro03_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro03.jpg'),
(288, 4, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro04_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro04.jpg'),
(289, 5, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro05_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro05.jpg'),
(290, 6, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro06_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro06.jpg'),
(291, 7, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro07_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro07.jpg'),
(292, 8, 27, 'https://www.ivrea.com.ar/nagatoro/nagatoro08_chica.jpg', 'https://www.ivrea.com.ar/nagatoro/nagatoro08.jpg'),
(293, 1, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend01_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend01.jpg'),
(294, 2, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend02_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend02.jpg'),
(295, 3, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend03_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend03.jpg'),
(296, 4, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend04_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend04.jpg'),
(297, 5, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend05_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend05.jpg'),
(298, 6, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend06_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend06.jpg'),
(299, 7, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend07_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend07.jpg'),
(300, 8, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend08_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend08.jpg'),
(301, 9, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend09_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend09.jpg'),
(302, 10, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend10_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend10.jpg'),
(303, 11, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend11_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend11.jpg'),
(304, 12, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend12_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend12.jpg'),
(305, 13, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend13_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend13.jpg'),
(306, 14, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend14_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend14.jpg'),
(307, 15, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend15_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend15.jpg'),
(308, 16, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend16_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend16.jpg'),
(309, 17, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend17_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend17.jpg'),
(310, 18, 28, 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend18_chica.jpg', 'https://www.ivrea.com.ar/rentagirlfriend/rentagirlfriend18.jpg'),
(311, 1, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril01_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril01.jpg'),
(312, 2, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril02_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril02.jpg'),
(313, 3, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril03_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril03.jpg'),
(314, 4, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril04_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril04.jpg'),
(315, 5, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril05_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril05.jpg'),
(316, 6, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril06_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril06.jpg'),
(317, 7, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril07_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril07.jpg'),
(318, 8, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril08_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril08.jpg'),
(319, 9, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril09_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril09.jpg'),
(320, 10, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril10_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril10.jpg'),
(321, 11, 29, 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril11_chica.jpg', 'https://www.ivrea.com.ar/yourlieinapril/yourlieinapril11.jpg'),
(322, 1, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter01_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter01.jpg'),
(323, 2, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter02_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter02.jpg'),
(324, 3, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter03_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter03.jpg'),
(325, 4, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter04_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter04.jpg'),
(326, 5, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter05_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter05.jpg'),
(327, 6, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter06_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter06.jpg'),
(328, 7, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter07_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter07.jpg'),
(329, 8, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter08_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter08.jpg'),
(330, 9, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter09_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter09.jpg'),
(331, 10, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter10_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter10.jpg'),
(332, 11, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter11_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter11.jpg'),
(333, 12, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter12_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter12.jpg'),
(334, 13, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter13_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter13.jpg'),
(335, 14, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter14_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter14.jpg'),
(336, 15, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter15_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter15.jpg'),
(337, 16, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter16_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter16.jpg'),
(338, 17, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter17_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter17.jpg'),
(339, 18, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter18_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter18.jpg'),
(340, 19, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter19_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter19.jpg'),
(341, 20, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter20_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter20.jpg'),
(342, 21, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter21_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter21.jpg'),
(343, 22, 8, 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter22_chica.jpg', 'https://www.ivrea.com.ar/hunterxhunter/hunterxhunter22.jpg'),
(344, 1, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_01_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_01.jpg'),
(345, 2, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_02_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_02.jpg'),
(346, 3, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_03_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_03.jpg'),
(347, 4, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_04_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_04.jpg'),
(348, 5, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_05_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_05.jpg'),
(349, 6, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_06_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_06.jpg'),
(350, 7, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_07_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_07.jpg'),
(351, 8, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_08_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_08.jpg'),
(352, 9, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_09_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_09.jpg'),
(353, 10, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_10_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_10.jpg'),
(354, 11, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_11_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_11.jpg'),
(355, 12, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_12_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_12.jpg'),
(356, 13, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_13_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_13.jpg'),
(357, 14, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_14_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_14.jpg'),
(358, 15, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_15_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_15.jpg'),
(359, 16, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_16_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_16.jpg'),
(360, 17, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_17_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_17.jpg'),
(361, 18, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_18_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_18.jpg'),
(362, 19, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_19_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_19.jpg'),
(363, 20, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_20_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_20.jpg'),
(364, 21, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_21_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_21.jpg'),
(365, 22, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_22_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_22.jpg'),
(366, 23, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_23_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_23.jpg'),
(367, 24, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_24_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_24.jpg'),
(368, 25, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_25_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_25.jpg'),
(369, 26, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_26_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_26.jpg'),
(370, 27, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_27_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_27.jpg'),
(371, 28, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_28_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_28.jpg'),
(372, 29, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_29_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_29.jpg'),
(373, 30, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_30_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_30.jpg'),
(374, 31, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_31_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_31.jpg'),
(375, 32, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_32_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_32.jpg'),
(376, 33, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_33_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_33.jpg'),
(377, 34, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_34_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_34.jpg'),
(378, 35, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_35_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_35.jpg'),
(379, 36, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_36_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_36.jpg'),
(380, 37, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_37_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_37.jpg'),
(381, 38, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_38_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_38.jpg'),
(382, 39, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_39_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_39.jpg'),
(383, 40, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_40_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_40.jpg'),
(384, 41, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_41_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_41.jpg'),
(385, 42, 9, 'https://www.ivrea.com.ar/dragonball/dragonball_42_chica.jpg', 'https://www.ivrea.com.ar/dragonball/dragonball_42.jpg'),
(386, 1, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily01_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily01.jpg'),
(387, 2, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily02_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily02.jpg'),
(388, 3, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily03_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily03.jpg'),
(389, 4, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily04_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily04.jpg'),
(390, 5, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily05_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily05.jpg'),
(391, 6, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily06_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily06.jpg');
INSERT INTO `volumenes` (`id`, `numero`, `manga_id`, `portada_chica`, `portada_grande`) VALUES
(392, 7, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily07_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily07.jpg'),
(393, 8, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily08_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily08.jpg'),
(394, 9, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily09_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily09.jpg'),
(395, 10, 10, 'https://www.ivrea.com.ar/spyxfamily/spyxfamily10_chica.jpg', 'https://www.ivrea.com.ar/spyxfamily/spyxfamily10.jpg'),
(396, 1, 30, 'https://www.ivrea.com.ar/komi-san/komi-san01_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san01.jpg'),
(397, 2, 30, 'https://www.ivrea.com.ar/komi-san/komi-san02_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san02.jpg'),
(398, 3, 30, 'https://www.ivrea.com.ar/komi-san/komi-san03_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san03.jpg'),
(399, 4, 30, 'https://www.ivrea.com.ar/komi-san/komi-san04_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san04.jpg'),
(400, 5, 30, 'https://www.ivrea.com.ar/komi-san/komi-san05_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san05.jpg'),
(401, 6, 30, 'https://www.ivrea.com.ar/komi-san/komi-san06_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san06.jpg'),
(402, 7, 30, 'https://www.ivrea.com.ar/komi-san/komi-san07_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san07.jpg'),
(403, 8, 30, 'https://www.ivrea.com.ar/komi-san/komi-san08_chica.jpg', 'https://www.ivrea.com.ar/komi-san/komi-san08.jpg'),
(404, 1, 18, 'https://www.ivrea.com.ar/bluelock/bluelock01_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock01.jpg'),
(405, 2, 18, 'https://www.ivrea.com.ar/bluelock/bluelock02_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock02.jpg'),
(406, 3, 18, 'https://www.ivrea.com.ar/bluelock/bluelock03_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock03.jpg'),
(407, 4, 18, 'https://www.ivrea.com.ar/bluelock/bluelock04_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock04.jpg'),
(408, 5, 18, 'https://www.ivrea.com.ar/bluelock/bluelock05_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock05.jpg'),
(409, 6, 18, 'https://www.ivrea.com.ar/bluelock/bluelock06_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock06.jpg'),
(410, 7, 18, 'https://www.ivrea.com.ar/bluelock/bluelock07_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock07.jpg'),
(411, 8, 18, 'https://www.ivrea.com.ar/bluelock/bluelock08_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock08.jpg'),
(412, 9, 18, 'https://www.ivrea.com.ar/bluelock/bluelock09_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock09.jpg'),
(413, 10, 18, 'https://www.ivrea.com.ar/bluelock/bluelock10_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock10.jpg'),
(414, 11, 18, 'https://www.ivrea.com.ar/bluelock/bluelock11_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock11.jpg'),
(415, 12, 18, 'https://www.ivrea.com.ar/bluelock/bluelock12_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock12.jpg'),
(416, 13, 18, 'https://www.ivrea.com.ar/bluelock/bluelock13_chica.jpg', 'https://www.ivrea.com.ar/bluelock/bluelock13.jpg'),
(419, 1, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers01_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers01.jpg'),
(420, 2, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers02_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers02.jpg'),
(421, 3, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers03_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers03.jpg'),
(422, 4, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers04_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers04.jpg'),
(423, 5, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers05_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers05.jpg'),
(424, 6, 13, 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers06_chica.jpg', 'https://www.ivrea.com.ar/tokyorevengers/tokyorevengers06.jpg'),
(425, 1, 36, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_7dqukit7ad2kl2kdu1q2l6i45n/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_7dqukit7ad2kl2kdu1q2l6i45n/-S897-FWEBP'),
(426, 2, 36, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_l1d080mev56tn83nifu6jp2d7l/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_l1d080mev56tn83nifu6jp2d7l/-S897-FWEBP'),
(427, 3, 36, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_45ljp72r6t2ubdtjrkck23f43r/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_45ljp72r6t2ubdtjrkck23f43r/-S897-FWEBP'),
(428, 4, 36, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_ivgo5hgml931p6fj9a5pdfuh1v/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_ivgo5hgml931p6fj9a5pdfuh1v/-S897-FWEBP'),
(429, 1, 38, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_8dk4t91t8d5mhajm64j1ndu73r/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_8dk4t91t8d5mhajm64j1ndu73r/-S897-FWEBP'),
(432, 399, 38, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_38bqmo03i53j3aadd48alff64s/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_38bqmo03i53j3aadd48alff64s/-S897-FWEBP'),
(433, 400, 38, 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_38bqmo03i53j3aadd48alff64s/-S300-FWEBP', 'https://d14d9vp3wdof84.cloudfront.net/image/589816272436/image_38bqmo03i53j3aadd48alff64s/-S897-FWEBP');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manga_id` (`titulo`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `escritores`
--
ALTER TABLE `escritores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `escritor_id` (`escritor_id`),
  ADD KEY `editorial_id` (`editorial_id`);

--
-- Indices de la tabla `mangas_x_editoriales`
--
ALTER TABLE `mangas_x_editoriales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_manga` (`manga_id`),
  ADD KEY `id_editorial` (`editorial_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `volumenes`
--
ALTER TABLE `volumenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manga_id` (`manga_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `escritores`
--
ALTER TABLE `escritores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `mangas`
--
ALTER TABLE `mangas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `mangas_x_editoriales`
--
ALTER TABLE `mangas_x_editoriales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `volumenes`
--
ALTER TABLE `volumenes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=435;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mangas`
--
ALTER TABLE `mangas`
  ADD CONSTRAINT `mangas_ibfk_3` FOREIGN KEY (`escritor_id`) REFERENCES `escritores` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `mangas_ibfk_4` FOREIGN KEY (`editorial_id`) REFERENCES `editoriales` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `mangas_x_editoriales`
--
ALTER TABLE `mangas_x_editoriales`
  ADD CONSTRAINT `mangas_x_editoriales_ibfk_1` FOREIGN KEY (`manga_id`) REFERENCES `mangas` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `mangas_x_editoriales_ibfk_2` FOREIGN KEY (`editorial_id`) REFERENCES `editoriales` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `volumenes`
--
ALTER TABLE `volumenes`
  ADD CONSTRAINT `volumenes_ibfk_1` FOREIGN KEY (`manga_id`) REFERENCES `mangas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
