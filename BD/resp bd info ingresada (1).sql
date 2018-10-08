-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-09-2018 a las 07:20:58
-- Versión del servidor: 10.1.33-MariaDB
-- Versión de PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_asr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_caract_categoria`
--

CREATE TABLE `t_caract_categoria` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_caract_curso`
--

CREATE TABLE `t_caract_curso` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin NOT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin NOT NULL,
  `descri_es` varchar(300) COLLATE utf8_bin NOT NULL,
  `descri_in` varchar(300) COLLATE utf8_bin NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categoria`
--

CREATE TABLE `t_categoria` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_categoria`
--

INSERT INTO `t_categoria` (`id`, `nombre_es`, `nombre_in`, `img`) VALUES
(1, 'Rescate Acuático ', 'Aquatic Rescue', './public/images/imgCategorias/pejibaye_2.JPG'),
(9, 'Soporte Vital Básico', 'Basic Life Support', './public/images/imgCategorias/sopo.jpg'),
(10, 'Rescate con Cuerdas', 'Rescue with Rope', './public/images/imgCategorias/cue.jpg'),
(11, 'Primeros Auxilios', 'First Aid', './public/images/imgCategorias/pri.jpg'),
(14, 'Asesorías', 'Counseling', './public/images/imgCategorias/ase.jpg'),
(15, 'Escuela para Guías de Río<br>Federación Internacional de Rafting', 'River Guide School<br>Federacion Internacional de Rafting', './public/images/imgCategorias/DSC_0029.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_comentario`
--

CREATE TABLE `t_comentario` (
  `id` int(11) NOT NULL,
  `comentario` text COLLATE utf8_bin,
  `persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_comentario`
--

INSERT INTO `t_comentario` (`id`, `comentario`, `persona`) VALUES
(5, 'Mi primer comentario', 19),
(6, 'dfggdf', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_curso`
--

CREATE TABLE `t_curso` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin,
  `resumen_es` text COLLATE utf8_bin,
  `resumen_in` text COLLATE utf8_bin,
  `pre_requisitos_es` text COLLATE utf8_bin,
  `pre_requisitos_in` text COLLATE utf8_bin,
  `activo` tinyint(4) DEFAULT NULL,
  `categoria` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `pais` varchar(150) COLLATE utf8_bin NOT NULL,
  `instructor` int(11) NOT NULL,
  `latitud` decimal(17,14) NOT NULL,
  `longitud` decimal(16,14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_curso`
--

INSERT INTO `t_curso` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`, `resumen_es`, `resumen_in`, `pre_requisitos_es`, `pre_requisitos_in`, `activo`, `categoria`, `nivel`, `pais`, `instructor`, `latitud`, `longitud`) VALUES
(1, 'Conocimiento: Rescate del agua y cuerda', 'Awareness: Water & Rope Rescue', 'La clase Conocimiento del agua y cuerda, es un curso introductorio para personas que viven cerca de áreas de inundación, deslizamientos de tierra y problemas asociados con una escena de rescate que puede involucrar agua (rápida o lenta) y/o requieren el uso de cuerdas y equipos relacionados. Este curso es obligatorio para todos los trabajadores del 9-1-1 EMS, comités de vecindarios, trabajadores de navegación pública y vías navegables o aquellos que puedan llegar primero a la escena de una emergencia. El curso está diseñado para desarrollar conocimiento en las áreas de:<br>\r\n<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de escena y Magnitud del incidente (de condiciones existentes y potenciales)<br>\r\n• Ordenamiento de recursos<br>\r\n• Procedimientos de activación para respuesta de rescate<br>\r\n• Control del sitio y gestión de la escena\r\n• Procedimientos de reconocimiento y mitigación de peligros<br>\r\n<br>\r\nPara cumplir con las responsabilidades de la persona que responde a una emergencia, según el curso del nivel de conocimiento, éste también proporciona a los estudiantes una comprensión conceptual de los principios, aplicaciones y peligros asociados con los incidentes típicos de agua/cuerda. Los estudiantes aprenden técnicas de \"alcance\" y \"tiro\" de rescate en tierra usando equipos de rescate comunes. Los participantes también aprenden técnicas de rescate y evacuación de vadeo y natación. Una vez completada esta clase, el personal podrá trabajar en la \"zona verde\" (zona segura) en un sitio de rescate.<br>\r\n<br>\r\nDetalles:<br>\r\n<br>\r\nDuración: 2 días (14 horas)<br>\r\nFormato: 6 horas de clase, 8 horas en el agua<br>\r\nParticipantes: Mínimo 10. Máximo 15.<br>\r\nRecertificación:  Requerido cada 3 años<br>\r\n<br>\r\n', 'The Water & Rope Awareness class is an introductory course for  audiences who live near flood areas,  landslides, and predisposed problems associated with a rescue scene that may involve water (swift or slow) and/or require the use of ropes and related equipment. This course is a must for all 9-1-1 EMS Personnel, Neighborhood committees, Public Boating and Waterways Workers or those who might arrive first on the scene of an emergency. The course is designed to develop knowledge in the areas of:<br>\r\n<br>\r\n•	Water Hydrology<br>\r\n•	Scene assessment & incident size up (of both existing & potential conditions)<br>\r\n•	Resource ordering<br>\r\n•	Activation procedures for rescue response<br>\r\n•	Site control and scene management<br>\r\n•	Hazard recognition & mitigation procedures<br>\r\n<br>\r\nIn order to accomplish the responsibilities of the awareness level responder, the course also provides students with a conceptual understanding of the principles, applications, and hazards associated with typical water/rope incidents. Students learn shore-based rescue “reach” and “throw” techniques using common rescue equipment. Participants also learn wading and swimming rescue and evacuation techniques. Upon completion of this class, personnel will be able to work in the “green zone” (safe zone) at a rescue site.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\nDuration: 	2 days (14 hours)<br>\r\nFormat: 	6 hours classroom, 8 hours on water<br>\r\nParticipants:  Minimum 10. Maximum 15<br>\r\nRecertification: $70 Required every 3 years<br>\r\n', 'Objetivos del Curso:<br>\r\n<br>\r\n• Exponer a los estudiantes a problemas de rescate con cuerdas y en agua<br>\r\n• Enseñar los procedimientos necesarios para responder a una inundación repentina, un desastre a gran escala, inundaciones estacionales y las situaciones de deslizamientos de tierra.<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Dispositivo de flotación personal (PFD: Tipo III o V)<br> \r\n• Casco de rescate de agua<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para usar debajo del  (traje seco/traje de neopreno) incluyendo suéter<br>\r\n', 'Course Objectives:<br>\r\n<br>\r\n•	Introduces students to problems of rope and water rescue<br>\r\n•	Teaches the procedures necessary to respond to a flash flood, large-scale disaster and seasonal flooding and landslide situations<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Personal flotation device (PFD: Type III or V)<br>\r\n•	Water-rescue helmet<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater<br>\r\n', 'Requisitos Previos del curso:<br>\r\n<br>\r\n• Ser mayor de 16 años <br>\r\n• Tener buena condición física<br>\r\n• Capacidad básica de natación<br>\r\n', 'Course Prerequisites:<br>\r\n<br>\r\n•	16+ years of age<br>\r\n•	In good physical condition<br>\r\n•	Basic swimming ability<br>\r\n', 1, 1, 4, '1', 21, '3.34781647192868', '-82.56580631952940'),
(2, 'Primera respuesta en Aguas Rápidas', 'Swiftwater First Responder ', 'El curso Primera respuesta en aguas rápidas está diseñado para enseñar los componentes teóricos presentados en el curso “Conocimiento del agua y la cuerda”, pero también para capacitar a los estudiantes en los conceptos básicos del Rescate en Aguas Rápidas. Este curso de 3 días entrena a los estudiantes en reconocimiento de peligros, uso de equipos y técnicas básicas de rescate en tierra y botes, así como una amplia variedad de otras habilidades. Aquellos que completen este curso estarán autorizados para trabajar en la \"zona cálida\" (zona amarilla), zona de riesgo moderado o en un sitio de rescate de alto riesgo como personal de apoyo para los rescatistas de nivel técnico. Este curso cumple con los requisitos de la Asociación Nacional de Protección contra Incendios NFPA 1670 Operations (Water)  rescate desde tierra en agua en movimiento.<br>\r\n<br>\r\nDetalles:<br>\r\n<br>\r\nDuración: 3 días (24 horas)<br>\r\nFormato: 1 día de clase, 2 días en el río<br>\r\nParticipantes: Mínimo 10. Máximo 18<br>\r\nRecertificación: Requerido cada 3 años<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno<br>\r\n• Dispositivo de flotación personal (PFD: Tipo III o V)<br>\r\n• Casco de deportes acuáticos<br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para usar debajo del traje seco/traje de neopreno, incluyendo suéter, pantalones, guantes y calcetines<br>\r\n<br>\r\n', 'The Swiftwater First Responder course is designed to instruct the theoretical components featured in the Water & Rope Awareness class, but also to train students in the basics of Swiftwater Rescue. This 3-day course trains students in hazard recognition, equipment use, and basic shore and boat-based rescue techniques, as well as a wide variety of other skills. Those completing this course will be authorized to work in the “warm zone” (yellow zone), moderate risk zone at a high risk rescue site as support personnel for Technician Level rescuers. This course meets the requirements of National Fire Protection Association NFPA 1670 Operations (Water) Shore-based rescue for moving water.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\nDuration: 	3 days (24 hours)<br>\r\nFormat: 	1 day classroom, 2 day on the river<br>\r\nParticipants: Minimum 10. Maximum 18<br>\r\nRecertification: Required every 3 years<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (PFD: Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional<br>)\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, and socks<br>\r\n', 'El curso Primera respuesta en aguas rápidas está diseñado para enseñar los componentes teóricos presentados en el curso “Conocimiento del agua y la cuerda”, pero también para capacitar a los estudiantes en los conceptos básicos del Rescate en Aguas Rápidas. <br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno<br>\r\n• Dispositivo de flotación personal (PFD: Tipo III o V)<br>\r\n• Casco de deportes acuáticos<br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para usar debajo del traje seco/traje de neopreno, incluyendo suéter, pantalones, guantes y calcetines<br>\r\n<br>\r\n\r\n', 'The Swiftwater First Responder course is designed to instruct the theoretical components featured in the Water & Rope Awareness class, but also to train students in the basics of Swiftwater Rescue.\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (PFD: Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional<br>)\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, and socks<br>\r\n', 'Requisitos previos:<br>\r\n<br>\r\n• Ser mayor de 18 años<br>\r\n• Capacidad básica de natación<br>\r\n• En buena condición física<br>\r\n<br>', 'Pre-requisites:<br>\r\n<br>\r\n•	18+ years of age<br>\r\n•	Basic swimming ability<br>\r\n•	In good physical condition<br>\r\n', 1, 1, 1, '1', 21, '9.81329617946227', '-83.69887576690674'),
(3, 'Técnico de Rescate en Aguas Rápidas Unidad 1 ', 'Swiftwater Rescue Technician Unit 1', 'El curso Técnico de Rescate en Aguas Rápidas Unidad 1 es la primera de tres clases necesarias para que el personal cumpla con los requisitos para el nivel técnico NFPA 1670 estándar en operaciones y capacitación para incidentes de rescate técnico y el estándar NFPA 1006 para técnicos de rescate profesional en el área de agua. <br>\r\nEl riguroso curso de 4 días capacitará a los estudiantes en habilidades tales como:<br>\r\n<br>\r\n• Rescate con cuerda, lanzamiento de cuerda de rescate<br>\r\n• Posicionamiento efectivo y nadar en las corrientes<br>\r\n• Cruce del canal de agua<br>\r\n• Técnicas de salvavidas aplicadas a aguas rápidas<br>\r\n• Uso de cuerdas, equipo especializado y construir sistemas de ventaja mecánica<br>\r\n• Anclajes de construcción y sistemas de anclaje<br>\r\n• Técnicas para evitar y escapar de coladores y obstáculos<br>\r\n• Técnicas de manejo de balsa/ botes<br>\r\n• Aplicaciones de helicópteros para rescate de agua<br>\r\n<br>\r\nEste curso es obligatorio para cualquier persona en la que se pueda esperar que actúe en una situación de rescate que implique agua en movimiento. Es un requisito para quienes trabajan como miembros de servicios médicos de emergencia, técnicos de emergencias médicas y paramédicos u otras personas que podrían ser llamados a una escena para efectuar un rescate o trabajar con rescatistas entrenados de aguas rápidas.<br> \r\nEste curso cumple con los requisitos de NFPA 1670 Operations (Water).\r\nSegún los requisitos de la norma 1670 de la Asociación Nacional de Protección contra Incendios, un técnico de agua debe ser un técnico de rescate de agua y cuerda. Por lo tanto, el programa de técnico de agua de la NFPA de Rescue 3 se divide en tres cursos:<br>\r\n<br>\r\n1. Técnico en Rescate de Aguas Rápidas Unidad 1 (SRT1);<br>\r\n2. Rescate Técnico con cuerda: Nivel de técnico (TRR: TL) (u otro curso de cuerda de nivel técnico de NFPA)<br>\r\n3. Técnico en Rescate de Aguas Rápidas Avanzado (SRTA).<br>\r\n<br>\r\nCuando termine con los tres cursos, el rescatista habrá cumplido con los requisitos para el nivel de Técnico en agua y cuerda NFPA 1006.<br>\r\n<br>\r\nDetalles:<br>\r\nDuración: 5días<br>\r\nFormato: 1 día de clase, 4 días en el río<br>\r\nParticipantes: Mínimo 10 y Máximo 14<br>\r\nRecertificación: Requerido cada 3 años<br>\r\n<br>\r\nEquipo requerido:\r\n<br>\r\n• Traje seco o traje de neopreno<br>\r\n• Dispositivo de flotación personal (Tipo III o V)<br>\r\n• Casco de deportes acuáticos<br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para usar debajo del traje seco/traje de neopreno,  incluyendo camisa, pantalones, calcetines<br>\r\n', 'The SRT-1 course is the first of three classes needed for personnel to meet the requirements for the Technician level NFPA 1670 Standard on Operations and Training for Technical Rescue Incidents and the NFPA 1006 Standard for Rescue Technician Professional Qualifications in the area of water.<br>\r\nThe rigorous 4 days course will train students in skills such as: <br>\r\n<br>\r\n•	Throw Rope (throw bag) rescue<br>\r\n•	Effective positioning and swimming in currents<br>\r\n•	Water channel crossing<br>\r\n•	Lifeguard techniques applied to swiftwater<br>\r\n•	Use of ropes, hardware and building mechanical advantage systems<br>\r\n•	Building anchors and anchor systems<br>\r\n•	Avoiding and escape techniques from strainers and sieves<br>\r\n•	Boat handling techniques<br>\r\n•	Helicopter applications for water rescue<br>\r\n<br>\r\nThis course is a must for anyone who may be expected to act in a rescue situation that involves moving water. It is a requisite for those working as members of emergency medical services, EMTs and paramedics or others who could be called to the scene to effect a rescue or work with trained swiftwater rescuers.\r\nThis course meets the requirements of NFPA 1670 Operations (Water).\r\nUnder the National Fire Protection Association 1670 Standard requirements for water, a water technician must be both a water and rope rescue technician<br>Therefore, this course NFPA water technician program is broken down into three courses:<br>\r\n<br>\r\n1.	Swiftwater Rescue Technician Unit 1 (SRT1);<br>\r\n2.	Technical Rope Rescue: Technician Level (TRR:TL) (or other NFPA Technician Level rope course)<br>\r\n3.	Swiftwater Rescue Technician Advanced (SRTA)<br>\r\n<br>\r\nWhen finished with all three courses, the rescuer will have met the requirements for the technician level in both water and rope NFPA 1006.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\nDuration: 	5 days<br>\r\nFormat: 	1 day classroom, 4 days on the river<br>\r\nParticipants:	Minimum 10 and Maximum 14<br>\r\nRecertification:	Required every 3 years<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including shirt, pants, socks<br>\r\n', 'El curso Técnico de Rescate en Aguas Rápidas Unidad 1 es la primera de tres clases necesarias para que el personal cumpla con los requisitos para el nivel técnico NFPA 1670 estándar en operaciones y capacitación para incidentes de rescate técnico y el estándar NFPA 1006 para técnicos de rescate profesional en el área de agua.<br>\r\n<br>\r\nEquipo requerido:\r\n<br>\r\n• Traje seco o traje de neopreno<br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para usar debajo del traje seco/traje de neopreno,  incluyendo camisa, pantalones, calcetines<br>\r\n\r\n', 'The SRT-1 course is the first of three classes needed for personnel to meet the requirements for the Technician level NFPA 1670 Standard on Operations and Training for Technical Rescue Incidents and the NFPA 1006 Standard for Rescue Technician Professional Qualifications in the area of water.<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including shirt, pants, socks<br>\r\n', 'Requisitos previos para SRT 1:<br>\r\n<br>\r\n• Ser mayor de 18 años<br>\r\n• Capacidad básica de natación<br>\r\n• Tener buena condición física<br>\r\n', 'Pre-requisites for SRT :<br>\r\n<br>\r\n•	18+ years of age<br>\r\n•	Basic swimming ability<br>\r\n•	In good physical condition<br>\r\n', 1, 1, 5, '1', 21, '9.81313503116238', '-83.69916102531155'),
(4, 'Técnico de Rescate en Aguas Blancas Unidad1', 'Whitewater Rescue Technician Unit 1', '¡Este curso dinámico de rescate de agua fue específicamente escrito y diseñado para navegantes privados, boteros, kayakistas y organizaciones sin fines de lucro!<br>\r\nEn Centroamérica, el turismo incluye muchas actividades acuáticas debido a su exuberante ambiente tropical y cálidas aguas. Este es definitivamente nuestro curso más popular, el énfasis es la prevención e identificación de peligros para comprender primero la importancia del auto rescate. Las habilidades básicas en el río son un requisito previo, si tiene la intención de convertirse en un guía de río que se mantiene a salvo y sabe qué hacer si algo sale mal. Aunque este curso cumple con los requisitos de la certificación de Rescate de Aguas Rápidas de la Agencia para Rescatistas Profesionales, su enfoque es para guías de ríos y kayakistas con énfasis en la integración completa del conocimiento y la práctica de las habilidades que importan. El formato de 4 días hace que el curso sea más asequible, accesible y que cuente con mucho tiempo para practicar.<br> \r\nUn curso muy importante para cualquier persona que navegue en cualquier río de cualquier lugar y a que se ocupa con las necesidades del rescate en el río de los balseros, los navegantes de catamaran, kayakistas, balseros de carga, remeros SUP entre otros.<br>\r\n<br>\r\nREQUISITOS PREVIOS DEL CURSO:<br>\r\n<br>\r\n• Que participe en el proceso de aprendizaje de kayak, balsas o river board<br>\r\n• Tener una comprensión de la hidrología básica y estar familiarizado con la identificación de las características básicas del río<br>\r\n• Tener la capacidad de guiar un bote/balsa en un mínimo de rápidos de clase II y, por lo tanto, comprender técnicas de navegación como el transporte y la captura de remolinos<br>\r\n• Tener algo de familiaridad con el equipo básico de rescate como por ejemplo lanzar cuerdas de rescate y mosquetones<br>\r\n<br>\r\nREQUISITOS DEL ESTUDIANTE:<br>\r\n<br>\r\nAdemás del equipo mencionado anteriormente, los estudiantes deben anticipar y prepararse para diferentes condiciones o elementos con la ropa adecuada, seca y abrigada; alimentos y bebidas que enfatizan en azúcares y carbohidratos. Este es un plan de estudios dinámico e interesante que requerirá un compromiso completo de cuatro días con tareas por la noche. Los estudiantes necesitan un bolígrafo, un lápiz y pueden necesitar un cuaderno para notas adicionales.<br> \r\nLa observación o participación en todas las actividades y una hoja de verificación de habilidades firmada tanto por el estudiante como por el instructor  se requieren para recibir el certificado de finalización. Si un estudiante se siente incómodo al participar en cualquier actividad y simplemente desea observar, se le debe avisar al Instructor. Conocer sus propios límites es esencial para ser un navegante seguro; y es altamente respetado por nuestros instructores.<br>\r\n<br>\r\nEste curso cumple con todos los requisitos principales para la certificación de Rescate de Aguas Rápidas de nivel 4 de ACA.<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración: 4 días<br>\r\nFormato: 4 días en el río<br>\r\nParticipantes: Mínimo 10. Máximo 12.<br>\r\nRecertificación: Requerido cada 3 años<br>\r\n<br>\r\nRequisitos adicionales:<br>\r\n<br>\r\n• Mayores de 18 años (16-17 años con permiso de los padres)<br>\r\n• Capacidad básica de natación<br>\r\n• En buena condición física<br>\r\n• Participar en el proceso de aprendizaje de kayak, balsas, tablas de río o canoas<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V)<br>\r\n• Casco de deportes acuáticos<br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco/traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n<br>\r\n', 'This DYNAMIC water rescue course was specifically written and designed for private boaters, kayakers and non-profit organizations!<br>\r\nIn Central America tourism includes many water based activities because of it’s lush tropical environment and warm waters. This is definitely our most popular course, the emphasis is prevention and identifying hazards to understand the importance of self rescue first. Basic river skills are a prerequisite, if you intend to become a boater who stays safe and knows what to do if something goes wrong. Although this course meets agency Swiftwater Rescue certification requirements for Professional rescuers, it’s focus is for river guides and kayakers with an emphasis for thorough integration of knowledge and practice of the skills that matter. The 4 day format makes the course more affordable, accessible with plenty of time to practice.<br>  A very important class to anyone boating on any river anywhere! As it addresses the river rescue needs of rafters, kayakers, canoeists, river boarder’s and SUP paddlers.<br>\r\n<br>\r\nCOURSE PREREQUISITES:<br>\r\n<br>\r\n•	Be involved in the process of learning to kayak, raft, or river board. <br>\r\n•	Have an understanding of basic hydrology and be familiar with identifying basic river characteristics.<br>\r\n•	Have the ability to navigate a craft in a minimum of class II water and therefore understand navigational techniques such as ferrying and catching eddies.<br>\r\n•	Have some familiarity with basic rescue equipment such as throw bags and carabiners.<br>\r\n<br>\r\nSTUDENT REQUIREMENTS:<br>\r\n<br>\r\nIn addition to the equipment listed above, students should expect and prepare for the elements with adequate dry, warm clothing; and food and beverages emphasizing sugars and carbohydrates. This is a dynamic and engaging curriculum and will require a full four-day commitment with homework practice at night. Students need to have a pen, pencil and may want a notebook for further notes. <br>Observation or participation in all of the activities and a co-signed skills check-off sheet are required to receive the certificate of completion. If a student feels uncomfortable about participating in any activity and simply wishes to observe, the Instructor should be advised. Knowing your own limits is essential to be a safe boater; and is highly respected by our Instructors.<br>\r\nThis course meets all main requirements for the ACA Level 4 Swiftwater Rescue Certification.<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration: 		4 days<br>\r\nFormat: 		4 days on the river<br>\r\nParticipants: 	Minimum 10. Maximum 12.<br>\r\nRecertification: 	Required every 3 years.<br>\r\n<br>\r\nAdditional requirements:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Basic swimming ability<br>\r\n•	In good physical condition<br>\r\n•	Be involved in the process of learning to kayak, raft, river board or canoe<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional<br>)\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Este es definitivamente nuestro curso más popular, el énfasis es la prevención e identificación de peligros para comprender primero la importancia del auto rescate. Las habilidades básicas en el río son un requisito previo, si tiene la intención de convertirse en un guía de río que se mantiene a salvo y sabe qué hacer si algo sale mal. Aunque este curso cumple con los requisitos de la certificación de Rescate de Aguas Rápidas de la Agencia para Rescatadores Profesionales, su enfoque es para guías de ríos y kayakistas con énfasis en la integración completa del conocimiento y la práctica de las habilidades que importan.<br>\r\n<br>\r\nREQUISITOS PREVIOS DEL CURSO:<br>\r\n<br>\r\n• Que participe en el proceso de aprendizaje de kayak, balsas o river board.<br>\r\n• Tener una comprensión de la hidrología básica y estar familiarizado con la identificación de las características básicas del río.<br>\r\n• Tener la capacidad de guiar un bote/balsa en un mínimo de rápidos de clase II y, por lo tanto, comprender técnicas de navegación como el transporte y la captura de remolinos.<br>\r\n• Tener algo de familiaridad con el equipo básico de rescate como por ejemplo lanzar cuerdas de rescate y mosquetones.<br>', 'This is definitely our most popular course, the emphasis is prevention and identifying hazards to understand the importance of self rescue first. Basic river skills are a prerequisite, if you intend to become a boater who stays safe and knows what to do if something goes wrong. Although this course meets agency Swiftwater Rescue certification requirements for Professional rescuers, it’s focus is for river guides and kayakers with an emphasis for thorough integration of knowledge and practice of the skills that matter.<br>\r\n<br>\r\nCOURSE PREREQUISITES:<br>\r\n<br>\r\n•	Be involved in the process of learning to kayak, raft, or river board. <br>\r\n•	Have an understanding of basic hydrology and be familiar with identifying basic river characteristics.<br>\r\n•	Have the ability to navigate a craft in a minimum of class II water and therefore understand navigational techniques such as ferrying and catching eddies.<br>\r\n•	Have some familiarity with basic rescue equipment such as throw bags and carabiners.<br>\r\n', 'REQUISITOS PREVIOS DEL CURSO:<br>\r\n<br>\r\n• Que participe en el proceso de aprendizaje de kayak, balsas o river board.<br>\r\n• Tener una comprensión de la hidrología básica y estar familiarizado con la identificación de las características básicas del río.<br>\r\n• Tener la capacidad de guiar un bote/balsa en un mínimo de rápidos de clase II y, por lo tanto, comprender técnicas de navegación como el transporte y la captura de remolinos.<br>\r\n• Tener algo de familiaridad con el equipo básico de rescate como por ejemplo lanzar cuerdas de rescate y mosquetones.<br>\r\n<br>\r\nREQUISITOS ADICIONALES:<br>\r\n<br>\r\n• Mayores de 18 años (16-17 años con permiso de los padres)<br>\r\n• Capacidad básica de natación<br>\r\n• En buena condición física<br>\r\n• Participar en el proceso de aprendizaje de kayak, balsas, tablas de río o canoas<br>\r\n', 'COURSE PREREQUISITES:<br>\r\n<br>\r\n•	Be involved in the process of learning to kayak, raft, or river board. <br>\r\n•	Have an understanding of basic hydrology and be familiar with identifying basic river characteristics.<br>\r\n•	Have the ability to navigate a craft in a minimum of class II water and therefore understand navigational techniques such as ferrying and catching eddies.<br>\r\n•	Have some familiarity with basic rescue equipment such as throw bags and carabiners.<br>\r\n<br>\r\nAdditional requirements:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Basic swimming ability<br>\r\n•	In good physical condition<br>\r\n•	Be involved in the process of learning to kayak, raft, river board or canoe<br>', 1, 1, 5, '1', 21, '9.81320949609388', '-83.69912527195561'),
(5, 'Técnico de Rescate en Aguas Blancas Pro', 'Whitewater Rescue Technician (Pro)', 'Esta es una certificación de Rescate en Agua reconocida internacionalmente, diseñada específicamente para guías profesionales de aguas bravas, guías de descenso de barrancos, personal de pesca y caza, guarda parques  y otras personas que trabajan en zonas cercanas a ríos. Es un curso rápido basado en escenarios,  diseñado para desarrollar la capacidad de tomar buenas decisiones cuando es necesario en un rescate en el río. Gran parte de las sesiones de teoría y habilidades son similares a las aprendidas en SRT-1, pero con un enfoque menor en el uso de equipo técnico especializado. Los estudiantes se beneficiarán de este curso intensivo-práctico y aprenderán a usar técnicas y equipo simple para evaluar y realizar rescates en los ríos. Se hace  énfasis en técnicas de rescate rápidas, de tecnología sencilla e improvisada que son efectivas y requieren un equipamiento mínimo. El componente de prueba de habilidades hará énfasis en conocer sus propios límites, nivel de habilidad, conocimiento de habilidades básicas de cuerda y la capacidad de ejecutar un rescate como parte de un equipo. Los desafíos de responder por la noche se destacan en el escenario de operaciones nocturnas. Este curso intensivo e integral de cuatro días lleva la certificación profesional para el navegante profesional a un nivel completamente nuevo.<br>\r\nLos estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• RRC o curso de Rescate en Ríos completado en los últimos tres años<br>\r\n• Fuerte capacidad de natación a través de los rápidos de Clase II / III<br>\r\n• Buen entendimiento de las técnicas de rescate de aguas rápidas, técnica de lanzamiento de cuerdas de rescate, nudos de rescate, ventaja mecánica, técnicas de auto rescate y manejo de botes/balsas<br>\r\n• Experiencia profesional en el río<br>\r\n<br>\r\nEsta clase cumple con todos los requisitos principales para la certificación de rescate de Swiftwater de nivel 5 de ACA.<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración: 4 días<br>\r\nFormato: 1 día en sistemas, 3 días en el río<br>\r\nParticipantes: Mínimo 10. Máximo 12.<br>\r\nRecertificación: Requerido cada 3 años.<br>\r\n<br>\r\nRequisitos previos:<br>\r\n<br>\r\n• Mayores de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Rescate para Corredores de Ríos o prueba de experiencia previa o entrenamiento similar<br>\r\n• Habilidad para kayak o manejo de balsa en clase III<br>\r\n• Que participe activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr\r\n• Capas de lana o ropa de lana para debajo del traje seco/traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n', 'This is an Internationally recognized water rescue certification designed specifically for professional whitewater guides, Canyoning guides, fish and game personnel, Park Rangers and others who work around moving water.  It is a fast paced, scenario based course designed to develop the ability to choose good actions when a river rescue is necessary. Much of the theory and skills sessions are similar to those learned in SRT-1 (see above), but with less of a focus on using higher technical hardware and equipment. Students will benefit from this intensive, hands-on course and will learn to use techniques and simple equipment to assess and perform river rescues. The emphasis is on speedy, low-tech, and improvised rescue techniques that are effective and require minimal equipment. The skills testing component will emphasize knowing your own limits, skill level, knowledge of basic rope skills and the ability to execute a rescue as part of a team. The challenges of responding at night are highlighted in the night ops scenario. This four day, intensive and comprehensive course takes professional certification for the professional boater to a whole new level.<br>\r\n<br>\r\nStudents taking this course need to meet the following general requirements:<br>\r\n<br>\r\n•	RRC or river rescue course completed in last three years<br>\r\n•	Strong swimming ability through Class II/III rapids<br>\r\n•	Good understanding of swiftwater rescue techniques, throw bag tech., rescue knots, mechanical advantage, self rescue techniques and boat handling<br>\r\n•	Professional River Experience<br>\r\n•	This course meets all main requirements for the ACA Level 5 Swiftwater Rescue Certification<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration: 		4 days<br>\r\nFormat:	        3 days on the river<br>\r\nParticipants: 	Minimum 10. Maximum 12.<br>\r\nRecertification: 	Required every 3 years.<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Strong swimming ability<br>\r\n•	Rescue for River Runners or proof of prior similar experience or training<br>\r\n•	Ability to paddle or raft class 3 water <br>\r\n•	Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•	In good physical condition<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Esta es una certificación de Rescate en Agua reconocida internacionalmente, diseñada específicamente para guías profesionales de aguas bravas, guías de descenso de barrancos, personal de pesca y caza, guarda parques  y otras personas que trabajan en zonas cercanas a ríos. Es un curso rápido basado en escenarios,  diseñado para desarrollar la capacidad de tomar buenas decisiones cuando es necesario en un rescate en el río. Gran parte de las sesiones de teoría y habilidades son similares a las aprendidas en SRT-1, pero con un enfoque menor en el uso de equipo técnico especializado. Los estudiantes se beneficiarán de este curso intensivo-práctico y aprenderán a usar técnicas y equipo simple para evaluar y realizar rescates en los ríos. Se hace  énfasis en técnicas de rescate rápidas, de tecnología sencilla e improvisada que son efectivas y requieren un equipamiento mínimo.<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr\r\n• Capas de lana o ropa de lana para debajo del traje seco/traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>', 'This is an Internationally recognized water rescue certification designed specifically for professional whitewater guides, Canyoning guides, fish and game personnel, Park Rangers and others who work around moving water.  It is a fast paced, scenario based course designed to develop the ability to choose good actions when a river rescue is necessary. Much of the theory and skills sessions are similar to those learned in SRT-1 (see above), but with less of a focus on using higher technical hardware and equipment. Students will benefit from this intensive, hands-on course and will learn to use techniques and simple equipment to assess and perform river rescues. The emphasis is on speedy, low-tech, and improvised rescue techniques that are effective and require minimal equipment.<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Requisitos previos:<br>\r\n<br>\r\n• Mayores de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Rescate para Corredores de Ríos o prueba de experiencia previa o entrenamiento similar<br>\r\n• Habilidad para kayak o manejo de balsa en clase III<br>\r\n• Que participe activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>\r\n', 'Pre-requisites:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Strong swimming ability<br>\r\n•	Rescue for River Runners or proof of prior similar experience or training<br>\r\n•	Ability to paddle or raft class 3 water<br>\r\n•	Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•	In good physical condition<br>', 1, 1, 3, '1', 21, '9.81488796232976', '-83.70054308797495'),
(6, 'Kayaks nivel I y II', 'Whitewater Rescue - Kayak clinic', '¡Esta clase de rescate de agua está hecha a la medida para los kayakistas!<br>\r\nAprenda técnicas de rescate en kayak, trabaje en problemas de acceso y trate con escenarios de rescate específicamente dirigidos al kayakista moderno de aguas bravas. Un curso acelerado con información didáctica y práctica para preparar mejor a cualquier persona que desee hacer kayak de forma segura. Los instructores son profesionales bien capacitados que trabajan en la industria del turismo de aventura como Guías de Kayak de Seguridad en Aguas Bravas.<br>\r\nLos estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Clase III o buen kayakista de aguas bravas con roll confiable<br>\r\n• Se requiere kayak de arroyo o de río (no playboats o kayaks inflables por favor)<br>\r\n• Se recomienda bolsa(s) flotante(s) en kayak<br>\r\n• Rescate de Río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos clave<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades y conocimiento de navegación<br>\r\n• Conocimiento del equipo de kayak<br>\r\n• Roles del Kayak / habilidades de salida del Kayak / Asistencia del Kayak<br>\r\n• Habilidades para nadar y Recuperación del Kayak<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar Remolinos /Surf/Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores<br>\r\n• Consideraciones médicas<br>\r\n• Técnicas comunes de rescate en kayak<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración: 1 día<br>\r\nFormato: 1 día en el río<br>\r\nParticipantes: Mínimo 5. Máximo 6.<br>\r\nRecertificación: ninguno<br>\r\n<br>\r\nRequisitos previos:<br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Habilidades de corredores de ríos o prueba de experiencia previa similar o entrenamiento<br>\r\n• Habilidad de remar o manejar balsa en rápidos de clase III<br>\r\n• Participar activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• Tener buena condición física<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n•	Capas de lana o ropa de lana para debajo del traje seco / traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n', 'This water rescue class is tailored just for KAYAKERS!<br>\r\nLearn kayak specific rescue techniques, work on access problems, and deal with rescue scenarios that are specifically aimed at the modern whitewater kayaker. A fast-paced course with both didactical and practical information to better prepare anyone who wishes to kayak safely. Instructors are well trained professionals who work in with the adventure tourism industry as Safety Kayak Whitewater Guides.<br> \r\nStudents taking this course must meet the following general requirements:<br>\r\n<br>\r\n•	Class III or better whitewater kayaker with reliable rol<br>l\r\n•	Required creek or river running kayak (no playboats or IKs please)<br>\r\n•	Float bag(s) in kayak recommended<br>\r\n•	River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•	Review of key concepts <br>\r\n•	Water Hydrology<br>\r\n•	Skills assessment & Boating knowledge<br>\r\n•	Kayak Equipment knowledge<br>\r\n•	Kayak Rolls / Kayak exit skills / Kayak assist<br>\r\n•	Swimming skills and kayak recovery swim <br>\r\n•	Paddle techniques and shoulder precautions<br>\r\n•	Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•	Pins, wraps, undercuts and sieves<br>\r\n•	Medical considerations<br>\r\n•	Common Kayak Rescue technics<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration: 		1 day<br>\r\nFormat:		1 day on the river<br>\r\nParticipants: 	Minimum 5. Maximum 6.<br>\r\nRecertification: 	none<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Strong swimming ability<br>\r\n•	River Runners abilities or proof of prior similar experience or training<br>\r\n•	Ability to paddle or raft class 3 water<br>\r\n•	Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•	In good physical condition<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks\r\n', '¡Esta clase de rescate de agua está hecha a la medida para los kayakistas!<br>\r\nAprenda técnicas de rescate en kayak, trabaje en problemas de acceso y trate con escenarios de rescate específicamente dirigidos al kayakista moderno de aguas bravas. Un curso acelerado con información didáctica y práctica para preparar mejor a cualquier persona que desee hacer kayak de forma segura. Los instructores son profesionales bien capacitados que trabajan en la industria del turismo de aventura como Guías de Kayak de Seguridad en Aguas Bravas.<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos clave<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades y conocimiento de navegación<br>\r\n• Conocimiento del equipo de kayak<br>\r\n• Roles del Kayak / habilidades de salida del Kayak / Asistencia del Kayak<br>\r\n• Habilidades para nadar y Recuperación del Kayak<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar Remolinos /Surf/Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores <br>\r\n• Consideraciones médicas<br>\r\n• Técnicas comunes de rescate en kayak<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco / traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>', 'This water rescue class is tailored just for KAYAKERS!<br> Learn kayak specific rescue techniques, work on access problems, and deal with rescue scenarios that are specifically aimed at the modern whitewater kayaker. A fast-paced course with both didactical and practical information to better prepare anyone who wishes to kayak safely. Instructors are well trained professionals who work in with the adventure tourism industry as Safety Kayak Whitewater Guides.<br> \r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•	Review of key concepts <br>\r\n•	Water Hydrology<br>\r\n•	Skills assessment & Boating knowledge<br>\r\n•	Kayak Equipment knowledge<br>\r\n•	Kayak Rolls / Kayak exit skills / Kayak assist<br>\r\n•	Swimming skills and kayak recovery swim<br>\r\n•	Paddle techniques and shoulder precautions<br>\r\n•	Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•	Pins, wraps, undercuts and sieves<br>\r\n•	Medical considerations<br>\r\n•	Common Kayak Rescue technics<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>', 'Los estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Clase III o buen kayakista de aguas bravas con roll confiable<br>\r\n• Se requiere kayak de arroyo o de río (no playboats o kayaks inflables por favor)<br>\r\n• Se recomienda bolsa(s) flotante(s) en kayak<br>\r\n• Rescate de Río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nRequisitos previos: <br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Habilidades de corredores de ríos o prueba de experiencia previa similar o entrenamiento<br>\r\n• Habilidad de remar o manejar balsa en rápidos de clase III<br>\r\n• Participar activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• Tener buena condición física<br>\r\n', 'Students taking this course must meet the following general requirements:<br>\r\n<br>\r\n•	Class III or better whitewater kayaker with reliable roll<br>\r\n•	Required creek or river running kayak (no playboats or IKs please)<br>\r\n•	Float bag(s) in kayak recommended<br>\r\n•	River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br> \r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Strong swimming ability<br>\r\n•	River Runners abilities or proof of prior similar experience or training<br>\r\n•	Ability to paddle or raft class 3 water<br>\r\n•	Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•	In good physical condition<br>', 1, 1, 4, '1', 21, '9.81286309785975', '-83.69962975773792');
INSERT INTO `t_curso` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`, `resumen_es`, `resumen_in`, `pre_requisitos_es`, `pre_requisitos_in`, `activo`, `categoria`, `nivel`, `pais`, `instructor`, `latitud`, `longitud`) VALUES
(7, 'Técnico en Rescate de aguas blancas Pro<br> kayak específico', 'Whitewater Rescue Technician Pro <br>Kayak Specific', 'Este curso WRT-Pro (Kayak específico) se ofrece especialmente para kayakistas de aguas blancas. La clase contará con algunas de las últimas novedades en seguridad en kayak, uso adecuado de los equipos, remolque de nadadores inconscientes y botes, equipo de rescate y muchos de los desafíos que enfrentan los navegantes de aguas blancas en la actualidad.<br> \r\n<br>\r\nLos estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Clase III o buen kayakista de aguas bravas con roll confiable<br>\r\n• Se requiere un kayak de arroyo o río (no playboats o kayaks inflables por favor)<br>\r\n• Se recomienda bolsa (s) flotante (s) en kayak<br>\r\n• Rescate de río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración: 4 días<br>\r\nFormato:  3 días en el río<br>\r\nParticipantes: Mínimo 10. Máximo 12.<br>\r\nRecertificación: Requerido cada 3 años.<br>\r\n<br>\r\nRequisitos previos: <br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Rescate para Corredores de Río o prueba de experiencia previa (entrenamiento similar)<br>\r\n• Posibilidad de remar o manejar balsa en rápidos de clase III<br>\r\n• Participar activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V)<br>\r\n• Casco de deportes acuáticos<br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco / traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n', 'This WRT-Pro (Kayak specific) Course is being specially offered for whitewater kayakers.  The class will feature some of the latest in kayak safety, proper gear usage, towing unconscious swimmers and boats, rescuing gear and many of the challenges faced by whitewater boaters today. <br>\r\n<br>\r\n Students taking this course must meet the following general requirements:<br>\r\n<br>\r\n•Class III or better whitewater kayaker with reliable roll<br>  \r\n•Required creek or river running kayak (no playboats or IKs please)<br>\r\n•Float bag(s) in kayak recommended<br>\r\n•River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration:		4 days<br>\r\nFormat:	       3 days on the river<br>\r\nParticipants: 	Minimum 10. Maximum 12.<br>\r\nRecertification: 	Required every 3 years.<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n•	18+ years of age (16-17 with parental permission)<br>\r\n•	Strong swimming ability<br>\r\n•	Rescue for River Runners or proof of prior similar experience or training<br>\r\n•	Ability to paddle or raft class 3 water<br>\r\n•	Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•	In good physical condition<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Este curso WRT-Pro (Kayak específico) se ofrece especialmente para kayakistas de aguas blancas. La clase contará con algunas de las últimas novedades en seguridad en kayak, uso adecuado de los equipos, remolque de nadadores inconscientes y botes, equipo de rescate y muchos de los desafíos que enfrentan los navegantes de aguas blancas en la actualidad. <br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco / traje de neopreno incluyendo suéter, pantalones, guantes, calcetines\r\n', 'This WRT-Pro (Kayak specific) Course is being specially offered for whitewater kayakers.  The class will feature some of the latest in kayak safety, proper gear usage, towing unconscious swimmers and boats, rescuing gear and many of the challenges faced by whitewater boaters today.<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•	Drysuit or wetsuit<br>\r\n•	Personal flotation device (Type III or V)<br>\r\n•	Water-sports helmet<br>\r\n•	Neoprene gloves (optional)<br>\r\n•	Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•	Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Los estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Clase III o buen kayakista de aguas bravas con roll confiable<br>\r\n• Se requiere un kayak de arroyo o río (no playboats o kayaks inflables por favor)<br>\r\n• Se recomienda bolsa (s) flotante (s) en kayak<br>\r\n• Rescate de río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nRequisitos previos: <br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Rescate para Corredores de Río o prueba de experiencia previa (entrenamiento similar)<br>\r\n• Posibilidad de remar o manejar balsa en rápidos de clase III<br>\r\n• Participar activamente en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>', ' Students taking this course must meet the following general requirements:<br>\r\n<br>\r\n•Class III or better whitewater kayaker with reliable roll <br> \r\n•Required creek or river running kayak (no playboats or IKs please)<br>\r\n•Float bag(s) in kayak recommended<br>\r\n•River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n•18+ years of age (16-17 with parental permission)<br>\r\n•Strong swimming ability<br>\r\n•Rescue for River Runners or proof of prior similar experience or training<br>\r\n•Ability to paddle or raft class 3 water<br>\r\n•Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•In good physical condition<br>\r\n', 1, 1, 1, '1', 21, '9.81475390112502', '-83.69742256888834'),
(8, 'Tabla de Remo (SUP)', 'Stand-up Paddle Board - Rescue clinic', '¿Practicas con Tabla de Remo? Ya sea agua plana o agua blanca, debes conocer algunas de las técnicas básicas de rescate antes de tu próxima aventura. ¡Este curso de rescate SUP de 1 día es divertido y rápido!<br>\r\nLos estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Posibilidad de surfear en ríos y ambientes marinos<br>\r\n• Tabla de Remo requerida (recomendaciones de tamaño)<br>\r\n• Remo para SUP recomendado<br>\r\n• Rescate de río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos claves<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades y conocimiento de SUP<br>\r\n• Conocimiento del equipo SUP<br>\r\n• Habilidades de natación y recuperación de SUP<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar remolinos / Surf / Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores<br>\r\n• Corrientes marinas<br>\r\n• Consideraciones médicas<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración: 1 día<br>\r\nFormato: 1 día en el río<br>\r\nParticipantes: Mínimo 5. Máximo 6.<br>\r\nRecertificación: ninguno<br>\r\n<br>\r\n\r\nRequisitos previos :<br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Capacidades de corredores de río o prueba de experiencia previa o entrenamiento similar<br>\r\n• Posibilidad de remar o manejar balsa en rápidos de clase III <br>\r\n• Participación activa en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V)<br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco /traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n', 'Do you Stand Up Paddleboard? Whether it’s flat water or whitewater, you should know some of the basic rescue techniques before your next adventure. This 1 day SUP rescue course is fun and fast-paced!<br>\r\nStudents taking this course must meet the following general requirements:<br>\r\n<br>\r\n•Ability to surf in both river and ocean environments <br>\r\n•Required Stand up paddle board (size recommendations)<br>\r\n•SUP Paddle recommended<br>\r\n•River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•Review of key concepts <br>\r\n•Water Hydrology<br>\r\n•Skills assessment & SUP knowledge<br>\r\n•SUP Equipment knowledge <br>\r\n•Swimming skills and SUP recovery swim <br>\r\n•Paddle techniques and shoulder precautions<br>\r\n•Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•Pins, wraps, undercuts and sieves<br>\r\n•Ocean currents<br>\r\n•Medical considerations<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration:	1 day<br>\r\nFormat:	1 day on the river<br>\r\nParticipants: 	Minimum 5. Maximum 6.<br>\r\nRecertification: 	none<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n•18+ years of age (16-17 with parental permission)<br>\r\n•Strong swimming ability<br>\r\n•River Runners abilities or proof of prior similar experience or training<br>\r\n•Ability to paddle or raft class 3 water<br>\r\n•Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•In good physical condition<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•Drysuit or wetsuit<br>\r\n•Personal flotation device (Type III or V)<br>\r\n•Water-sports helmet<br>\r\n•Neoprene gloves (optional)<br>\r\n•Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', '¿Practicas con Tabla de Remo? Ya sea agua plana o agua blanca, debes conocer algunas de las técnicas básicas de rescate antes de tu próxima aventura. ¡Este curso de rescate SUP de 1 día es divertido y rápido!<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos claves<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades y conocimiento de SUP<br>\r\n• Conocimiento del equipo SUP<br>\r\n• Habilidades de natación y recuperación de SUP<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar remolinos / Surf / Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores<br>\r\n• Corrientes marinas<br>\r\n• Consideraciones médicas<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V)<br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco /traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>', 'Do you Stand Up Paddleboard? Whether it’s flat water or whitewater, you should know some of the basic rescue techniques before your next adventure. This 1 day SUP rescue course is fun and fast-paced!<br>\r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•Review of key concepts <br>\r\n•Water Hydrology<br>\r\n•Skills assessment & SUP knowledge<br>\r\n•SUP Equipment knowledge <br>\r\n•Swimming skills and SUP recovery swim <br>\r\n•Paddle techniques and shoulder precautions<br>\r\n•Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•Pins, wraps, undercuts and sieves<br>\r\n•Ocean currents<br>\r\n•Medical considerations<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•Drysuit or wetsuit<br>\r\n•Personal flotation device (Type III or V)<br>\r\n•Water-sports helmet<br>\r\n•Neoprene gloves (optional)<br>\r\n•Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Los estudiantes que toman este curso deben cumplir con los siguientes requisitos generales:<br>\r\n<br>\r\n• Posibilidad de surfear en ríos y ambientes marinos<br>\r\n• Tabla de Remo requerida (recomendaciones de tamaño)<br>\r\n• Remo para SUP recomendado<br>\r\n• Rescate de río PFD (Tipo V) con cuerda de remolque<br>\r\n<br>\r\nRequisitos previos :<br>\r\n<br>\r\n• Ser mayor de 18 años (16-17 años con permiso de los padres)<br>\r\n• Fuerte capacidad de natación<br>\r\n• Capacidades de corredores de río o prueba de experiencia previa o entrenamiento similar<br>\r\n• Posibilidad de remar o manejar balsa en rápidos de clase III <br>\r\n• Participación activa en kayak, rafting, navegación por el río o en canoa<br>\r\n• En buena condición física<br>\r\n', 'Students taking this course must meet the following general requirements:<br>\r\n<br>\r\n•Ability to surf in both river and ocean environments <br>\r\n•Required Stand up paddle board (size recommendations)<br>\r\n•SUP Paddle recommended<br>\r\n•River rescue PFD (Type V) with tow tether<br>\r\n<br>\r\nPre-requisites :<br>\r\n<br>\r\n•18+ years of age (16-17 with parental permission)<br>\r\n•Strong swimming ability<br>\r\n•River Runners abilities or proof of prior similar experience or training<br>\r\n•Ability to paddle or raft class 3 water<br>\r\n•Be actively involved in kayaking, rafting, river boarding or canoeing<br>\r\n•In good physical condition<br>', 1, 1, 4, '1', 21, '9.25215361640528', '-83.85374200827329'),
(9, 'Escuela para Guías de Río<br>Federación Internacional de Rafting', 'River Guide School<br>Federacion Internacional de Rafting', 'Nuestra escuela de Guía de Río de Agua Blanca es enseñada por el guía de río profesional Felipe López. Este instructor ha sido un guía comercial de río por más de 20 años. Él te dará la capacitación necesaria para convertirte en una Guía de Río Profesional. Aventura Seguridad y Rescate enfatiza las habilidades de manejo de balsas y remada, lectura fluvial, hidrodinámica y diversión. Siempre incluimos muchas habilidades de seguridad y trabajamos en muchos escenarios de rescate y ríos. Ayudamos con la dinámica de grupo y los temas de liderazgo, en viajes de rafting de varios días. Estas clases pueden tener una duración de 6-8 días y también pueden incluir instrucciones de Primeros Auxilios/BLS en Zonas Remotas. Al completar el curso, recibirás una evaluación detallada de las fortalezas y debilidades para que sepas dónde puedes mejorar tus habilidades de guía. También recibirás una carta de recomendación a proveedores de un conocido guía internacional de ríos.<br>\r\n<br>\r\nREQUISITOS PREVIOS DEL CURSO:<br>\r\n<br>\r\n• Participar en el proceso de aprendizaje de kayak, balsas o tablas de río. <br>\r\n• Entender la hidrología básica y familiarizarse con la identificación de las características básicas del río.<br>\r\n• Tener la capacidad de navegar una balsa o bote en un mínimo de rápidos de clase II y, por lo tanto, comprender técnicas de navegación como el transporte y la captura de remolinos.<br>\r\n• Familiarización con el equipo básico de rafting, como por ejemplo, lanzamiento de cuerdas de rescate y mosquetones.<br>\r\n<br>\r\nREQUISITOS DEL ESTUDIANTE: <br>\r\n<br>\r\nAdemás de los requisitos enumerados anteriormente, los estudiantes deben anticipar y prepararse para diferentes elementos con la ropa adecuada, seca y abrigada, también  alimentos y bebidas que enfatizan azúcares y carbohidratos. Este es un plan de estudios dinámico e interesante y que requerirá un total de ocho días de compromiso con práctica por la noche.<br> Los estudiantes necesitan un bolígrafo, un lápiz y pueden querer un cuaderno para notas adicionales. <br>La observación o participación en todas las actividades y una hoja de verificación de habilidades firmada tanto por el instructor como por el estudiante se requiere para recibir el certificado de finalización. Si un estudiante se siente incómodo al participar en cualquier actividad y simplemente desea observar, se le debe avisar al Instructor. Conocer sus propios límites es esencial para ser un navegante seguro; y es altamente respetado por nuestros instructores.<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos claves<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades<br>\r\n• Conocimiento del equipo<br>\r\n• Natación y recuperación de balsa<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar remolinos / Surf / Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores<br>\r\n• Corrientes marinas y corrientes de río<br>\r\n• Consideraciones médicas<br>\r\n<br>\r\nDetalles del curso:<br>\r\n<br>\r\nDuración:  10 días<br>\r\nFormato:  10 días en el río<br>\r\nParticipantes: Mínimo 6. Máximo 10.<br>\r\nRecertificación: ninguno<br>\r\n<br>\r\nEquipo de requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco/traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>\r\n', 'Our white water river guide schools are taught by professional river guide Felipe Lopez.  This instructor has been a commercial river guide for over 20 years. He will give you the training needed to become a professional river guide. Adventure Safety & Rescue emphasizes boat handling skills with rowing and paddle boats, river reading, hydrodynamics and fun. We always include lots of safety skills and work through many rescue and river scenarios. We help touch on group dynamics and leadership topics as well as teaching the leave no trace camping skills on multi-day rafting trips. These classes can range from 6-8 days and can also include Wilderness First Aid/ BLS Instruction. Upon completion of the school you will receive a detailed evaluation of strengths and weaknesses to let you know where you can improve your guide skills. You will also receive a referral letter to outfitters from a well known and distinguished international river guide.<br>\r\n<br>\r\nCOURSE PREREQUISITES:<br>\r\n<br>\r\n•Be involved in the process of learning to kayak, raft, or river board.<br>\r\n•Have an understanding of basic hydrology and be familiar with identifying basic river characteristics.<br>\r\n•Have the ability to navigate a craft in a minimum of class II water and therefore understand navigational techniques such as ferrying and catching eddies.<br>\r\n•Have some familiarity with basic rafting equipment such as throw bags and carabiners.<br>\r\n<br>\r\nSTUDENT REQUIREMENTS:<br>\r\n<br>\r\nIn addition to the requirements listed above, students should expect and prepare for the elements with adequate dry, warm clothing; and food and beverages emphasizing sugars and carbohydrates. This is a dynamic and engaging curriculum and will require a full eight-days of commitment with homework at night.<br> Students need to have a pen, pencil and may want a notebook for further notes.<br> Observation or participation in all of the activities and a co-signed skills check-off sheet are required to receive the certificate of completion. If a student feels uncomfortable about participating in any activity and simply wishes to observe, the Instructor should be advised. Knowing your own limits is essential to be a safe boater; and is highly respected by our Instructors.<br>\r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•Review of key concepts <br>\r\n•Water Hydrology<br>\r\n•Skills assessment <br>\r\n•Equipment knowledge<br>\r\n•Swimming skills and raft recovery swim<br>\r\n•Paddle techniques and shoulder precaution<br>\r\n•Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•Pins, wraps, undercuts and sieves<br>\r\n•Currents, rips, tides, hazards <br>\r\n•Medical considerations<br>\r\n<br>\r\nCourse Details:<br>\r\n<br>\r\nDuration:	10 days<br>\r\nFormat:	10 days on the river<br>\r\nParticipants:	Minimum 6. Maximum 10.<br>\r\nRecertification: 	none<br>\r\n<br>\r\nRequired Equipment<br>\r\n<br>\r\n•Drysuit or wetsuit<br>\r\n•Personal flotation device (Type III or V)<br>\r\n•Water-sports helmet<br>\r\n•Neoprene gloves (optional)<br>\r\n•Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'Nuestra escuela de Guía de Río de Agua Blanca es enseñada por el guía de río profesional Felipe López. Este instructor ha sido un guía comercial de río por más de 20 años. Él te dará la capacitación necesaria para convertirte en una Guía de Río Profesional. <br>Aventura Seguridad y Rescate enfatiza las habilidades de manejo de balsas y remada, lectura fluvial, hidrodinámica y diversión. Siempre incluimos muchas habilidades de seguridad y trabajamos en muchos escenarios de rescate y ríos. Ayudamos con la dinámica de grupo y los temas de liderazgo, en viajes de rafting de varios días.<br>\r\n<br>\r\nObjetivos del Curso:<br>\r\n<br>\r\n• Revisión de conceptos claves<br>\r\n• Hidrología del agua<br>\r\n• Evaluación de habilidades<br>\r\n• Conocimiento del equipo<br>\r\n• Natación y recuperación de balsa<br>\r\n• Técnicas para remar y precauciones para el hombro<br>\r\n• Precauciones al saltar remolinos / Surf / Hidráulica<br>\r\n• Clavados, maneras de quedar atrapados (Wraps), cuevas debajo de agua (socavaduras), coladores <br>\r\n• Corrientes marinas y corrientes de río<br>\r\n• Consideraciones médicas<br>\r\n<br>\r\nEquipo de requerido:<br>\r\n<br>\r\n• Traje seco o traje de neopreno <br>\r\n• Dispositivo de flotación personal (Tipo III o V) <br>\r\n• Casco de deportes acuáticos <br>\r\n• Guantes de neopreno (opcional)<br>\r\n• Calzado de neopreno con una buena suela para caminar, botas para caminar o zapatos para correr<br>\r\n• Capas de lana o ropa de lana para debajo del traje seco/traje de neopreno incluyendo suéter, pantalones, guantes, calcetines<br>', 'Our white water river guide schools are taught by professional river guide Felipe Lopez.  This instructor has been a commercial river guide for over 20 years. He will give you the training needed to become a professional river guide.<br> Adventure Safety & Rescue emphasizes boat handling skills with rowing and paddle boats, river reading, hydrodynamics and fun. We always include lots of safety skills and work through many rescue and river scenarios. We help touch on group dynamics and leadership topics as well as teaching the leave no trace camping skills on multi-day rafting trips. <br>\r\n<br>\r\nCourse Objectives:<br>\r\n<br>\r\n•Review of key concepts<br>\r\n•Water Hydrology<br>\r\n•Skills assessment <br>\r\n•Equipment knowledge<br>\r\n•Swimming skills and raft recovery swim<br>\r\n•Paddle techniques and shoulder precautions<br>\r\n•Eddy hopping / Surfing / Hydraulics precautions<br>\r\n•Pins, wraps, undercuts and sieves<br>\r\n•Currents, rips, tides, hazards<br>\r\n•Medical considerations<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n•Drysuit or wetsuit<br>\r\n•Personal flotation device (Type III or V)<br>\r\n•Water-sports helmet<br>\r\n•Neoprene gloves (optional)<br>\r\n•Neoprene footwear with a good walking sole, wading boots, or running shoes<br>\r\n•Layers of wool or fleece clothing for under the drysuit/wetsuit including sweater, pants, gloves, socks<br>\r\n', 'REQUISITOS PREVIOS DEL CURSO:<br>\r\n<br>\r\n• Participar en el proceso de aprendizaje de kayak, balsas o tablas de río. <br>\r\n• Entender la hidrología básica y familiarizarse con la identificación de las características básicas del río.<br>\r\n• Tener la capacidad de navegar una balsa o bote en un mínimo de rápidos de clase II y, por lo tanto, comprender técnicas de navegación como el transporte y la captura de remolinos.<br>\r\n• Familiarización con el equipo básico de rafting, como por ejemplo, lanzamiento de cuerdas de rescate y mosquetones.<br>', 'COURSE PREREQUISITES:<br>\r\n<br>\r\n•Be involved in the process of learning to kayak, raft, or river board.<br>\r\n•Have an understanding of basic hydrology and be familiar with identifying basic river characteristics.<br>\r\n•Have the ability to navigate a craft in a minimum of class II water and therefore understand navigational techniques such as ferrying and catching eddies.<br>\r\n•Have some familiarity with basic rafting equipment such as throw bags and carabiners.<br>\r\n', 1, 1, 1, '1', 21, '9.81405974089009', '-83.69601102953004'),
(10, 'Rescate Técnico con cuerdas', ' Technical Rope Rescue (TRR-OL)', 'Este curso proporciona lo esencial para Rescate Técnico con Cuerdas e introduce los fundamentos de la aplicación de ángulo bajo / alto. Conocido internacionalmente como el curso fundacional, está diseñado para establecer las calificaciones necesarias para convertirse en un socorrista de rescate de cuerdas. Nuestras técnicas modernas, ayudas visuales y capacitación práctica proporcionarán a los estudiantes un entorno de aprendizaje seguro para integrar la diferencia entre los niveles de capacitación industrial de acceso por cuerda y los niveles de capacitación de TRR para agencias, departamentos, personal de EMS y aventuras al aire libre (Turismo).<br>Los estudiantes aprenderán a manejar cuerdas, atar nudos, trabajar con herramientas y entender sus aplicaciones con sistemas de cuerdas simples. El conocimiento de estas habilidades mejorará las habilidades de los estudiantes para hacer frente al acceso / egreso, instalación de equipos y gestión de incidentes. Los participantes exitosos estarán mejor preparados para ayudar en los rescates de sogas en las áreas de entornos naturales y entornos urbanos.<br>\r\nEsta certificación de curso cumple con la NFPA 1670 para el nivel de operaciones, también cumple con los requisitos de la NFPA 1006 que cumplen con el capítulo 5 (Requisitos generales). Tenga en cuenta: Para cumplir con la NFPA 1670, el personal certificado para el nivel de Operaciones debe ser supervisado por un líder de equipo certificado al nivel de técnico de rescate de cuerdas.<br>\r\n<br>\r\nDetalles:<br>\r\n<br>\r\nDuración: 5 días (40 horas)<br>\r\nFormato: 1 día de clase, 4 días en los sitios de campo al aire libre<br>\r\nParticipantes: 10 Mínimo. 12 Máximo.<br>\r\nRecertificación:  Requerido cada 3 años.<br>\r\n<br>\r\nRequisitos previos:<br>\r\n<br>\r\n● Para mayores de 18 años<br>\r\n● En buenas condiciones físicas<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n● Arnés de cuerpo completo Clase III o arneses separados para el pecho y el asiento (incluidos en la tarifa del curso)<br>\r\n● Casco de escalada (incluido en el precio del curso)<br>\r\n● Botas resistentes (las botas de montaña están bien)<br>\r\n● Pantalones hechos de material duradero<br>\r\n● Guantes con palma de cuero (los guantes de trabajo están bien)<br>\r\n<br>\r\nActualización a una Certificación de Técnico<br>\r\n<br>\r\nPara extender los días de capacitación y hacer que se extiendan los presupuestos, es posible pasar a una certificación de nivel técnico dentro de un año de tomar un curso de nivel inicial de Fundamentos (o equivalente), tomando solo los últimos cuatro días de TRR-Técnico. <br>\r\nLos estudiantes deben asegurarse de tener una sólida comprensión de las habilidades de ángulo bajo y empinado antes de comenzar el entrenamiento de nivel técnico, ya que el Instructor no podrá revisar estas habilidades en la última parte del curso.<br>\r\n<br>', 'This course provides the essentials to Technical Rope Rescue and introduces the fundamentals of low/high angle application. Internationally known as the foundational course, it’s designed to establish the necessary qualifications to become a rope rescue first responder. Our state-of–art techniques, visual aids and hands-on training will provide students a safe learning environment to integrate the difference between Rope Access Industrial training levels and TRR training levels for Agencies, Departments, EMS personnel and Outdoor Adventures. <br>Students will learn to handle ropes, tie knots, work with hardware, and understand their applications with simple rope systems. Knowledge of these skills will enhance student abilities to cope with access/egress, equipment installation and incident management. Successful participants will be better prepared to assist in rope rescues in both areas of natural environments and urban settings.<br>\r\nThis course Certification is NFPA 1670 Compliant towards Operations Level, it also meets the requirements of NFPA 1006 compliant with chapter 5 (General Requirements). Please note: In order to be NFPA 1670 compliant, personnel certified to the Operations level must be supervised by a team leader certified to the Technical Rope Rescue Technician level.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\nDuration: 	5 days (40 hours)<br>\r\nFormat: 	1 day classroom, 4 days at outdoor field sites<br>\r\nParticipants:	8 Minimum. 16 Maximum.<br>\r\nRecertification: 	Required every 3 years.<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n●	18+ years of age<br>\r\n●	In good physical condition<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n●Class III full-body harness or separate chest and sit harnesses (included in course fee)<br>\r\n●Climbing helmet (included in course fee)<br>\r\n●Sturdy boots (hiking boots are fine)<br>\r\n●Pants made of durable material<br>\r\n●Gloves with leather palms (work gloves are fine)<br>\r\n<br>\r\n\r\nUpgrading to a Technician Certification<br>\r\n<br>\r\nIn order to spread out training days and make budgets go further, it is possible to upgrade to a Technician level certification within a year of taking an initial Fundamentals level course (or equivalent), by taking only the final four days of the TRR-Technician course for only $ ? However, students must ensure they have a solid grasp of low and steep angle skills prior to commencing technician level training, because the Instructor will be unable to review these skills in the latter part of the course.\r\n', 'Este curso proporciona lo esencial para Rescate Técnico con Cuerdas e introduce los fundamentos de la aplicación de ángulo bajo / alto. Conocido internacionalmente como el curso fundacional, está diseñado para establecer las calificaciones necesarias para convertirse en un socorrista de rescate de cuerdas. Nuestras técnicas modernas, ayudas visuales y capacitación práctica proporcionarán a los estudiantes un entorno de aprendizaje seguro para integrar la diferencia entre los niveles de capacitación industrial de acceso por cuerda y los niveles de capacitación de TRR para agencias, departamentos, personal de EMS y aventuras al aire libre (Turismo). <br>Los estudiantes aprenderán a manejar cuerdas, atar nudos, trabajar con herramientas y entender sus aplicaciones con sistemas de cuerdas simples. El conocimiento de estas habilidades mejorará las habilidades de los estudiantes para hacer frente al acceso / egreso, instalación de equipos y gestión de incidentes.<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n● Arnés de cuerpo completo Clase III o arneses separados para el pecho y el asiento (incluidos en la tarifa del curso)<br>\r\n● Casco de escalada (incluido en el precio del curso)<br>\r\n● Botas resistentes (las botas de montaña están bien)<br>\r\n● Pantalones hechos de material duradero<br>\r\n● Guantes con palma de cuero (los guantes de trabajo están bien)<br>\r\n', 'This course provides the essentials to Technical Rope Rescue and introduces the fundamentals of low/high angle application. Internationally known as the foundational course, it’s designed to establish the necessary qualifications to become a rope rescue first responder. Our state-of–art techniques, visual aids and hands-on training will provide students a safe learning environment to integrate the difference between Rope Access Industrial training levels and TRR training levels for Agencies, Departments, EMS personnel and Outdoor Adventures.<br> Students will learn to handle ropes, tie knots, work with hardware, and understand their applications with simple rope systems. Knowledge of these skills will enhance student abilities to cope with access/egress, equipment installation and incident management.<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n●Class III full-body harness or separate chest and sit harnesses (included in course fee)<br>\r\n●Climbing helmet (included in course fee)<br>\r\n●Sturdy boots (hiking boots are fine)<br>\r\n●Pants made of durable material<br>\r\n●Gloves with leather palms (work gloves are fine)<br>\r\n\r\n', 'Requisitos previos:<br>\r\n<br>\r\n● Para mayores de 18 años<br>\r\n● En buenas condiciones físicas<br>\r\n', 'Pre-requisites:<br>\r\n<br>\r\n●18+ years of age<br>\r\n●In good physical condition<br>\r\n\r\n', 1, 10, 1, '1', 21, '9.36598779365806', '-83.70217665207385'),
(11, 'Rescate Técnico con Cuerdas (TRR:TL)', 'Technical Rope Rescue (TRR:TL)', 'Este curso de seis días cumple con los requisitos para el nivel técnico de la norma NFPA 1670 para incidentes técnicos de cuerdas  y es el segundo de tres cursos necesarios para cumplir con ese requisito estándar de agua. Este entrenamiento técnico de rescate de cuerdas incluye ángulo bajo, ángulo pronunciado, entrenamiento vertical, puntas verticales, embalaje de la víctima y cruces de tirolesas de línea alta. No hay requisitos previos de entrenamiento de cuerda para este curso. Este curso es dinámico e informativo para establecer el estándar del entrenamiento técnico de rescate con cuerda. También es intenso y exigente físicamente, pero no se requiere experiencia previa en cuerda porque comenzamos con habilidades de ángulo bajo y avanzamos en pasos simples y lógicos para destrezas de alto ángulo, incluyendo tirolés y sistemas de cuerda para levantar/bajar. Nuestro enfoque paso a paso combinado con mucha práctica hace que sea fácil aprender y retener estas habilidades. <br>Los participantes avanzan desde rescates básicos y extrajudiciales a escenarios progresivamente más verticales. Las habilidades y el conocimiento cubiertos en este curso son relevantes para todas las demás disciplinas técnicas de rescate, incluyendo aguas rápidas, hielo superficial, espacios confinados, trincheras, cuevas y colapso estructural ligero.<br>\r\n<br>\r\nDetalles:<br>\r\n<br>\r\nDuración: 6 días (54 horas)<br>\r\nFormato: 1 día de clase, 5 días al aire libre (tanto en terreno natural como estructural)<br>\r\nParticipantes: Mínimo 6. Máximo 10.<br>\r\nRecertificación:  Requerido cada 3 años<br>\r\n<br>\r\nRequisitos previos:<br>\r\n<br>\r\n● Ser mayor de 18 años<br>\r\n● En buenas condiciones físicas<br>\r\n<br>\r\nActualización desde TRR-Fundamentals:<br>\r\n<br>\r\nCon el fin de extender los días de capacitación y hacer que se extiendan los presupuestos, es posible pasar a una certificación de nivel de Técnico dentro de un año de tomar un curso de Fundamentos inicial. Usted paga una tarifa reducida y solo toma los últimos cuatro días del curso TRR-Técnico. Sin embargo, los estudiantes deben tener una sólida comprensión de las habilidades de ángulo bajo y empinado antes de comenzar el entrenamiento de nivel Técnico, porque no hay revisión de estas habilidades en la última parte del curso. Prueba de certificación de nivel TRR-Fundamentos (o equivalente) requerida.<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n● Arnés de cuerpo entero (Tipo III o V) (incluido en la tarifa del curso)<br>\r\n● Casco de escalada o rescate (incluido en la tarifa del curso)<br>\r\n● Botas resistentes (las botas tácticas o las botas de montaña están bien, no se requieren dedos de acero)<br>\r\n● Pantalones hechos de material duradero<br>\r\n● Guantes con palma de cuero (los guantes de trabajo están bien)<br>\r\n<br>', 'This six-day course meets the requirements for the Technician level for the NFPA 1670 Standard for technical rope incidents, and is the second of three courses necessary to meet that Standard requirement for water. This technical rope rescue training includes low angle, steep angle, vertical training, vertical pick-offs, litter packaging and highline tyrolean traverses. There is no rope training prerequisite for this course. This course is both Dynamic and informative to set the standard for Technical Rope Rescue training. It is also intense and physically demanding, but no prior rope experience is required because we begin with low angle skills and progress in simple, logical steps to high angle skills including tyroleans and Raise/Lower rope systems. Our step-by-step approach combined with lots of hands-on practice makes it easy to learn and retain these skills.<br> Participants advance from basic, over-the-bank rescues to progressively more vertical scenarios. The skills and knowledge covered in this course are relevant for all other technical rescue disciplines including swiftwater, surface ice, confined space, trench, cave and light structural collapse. <br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\nDuration:	6 days (54 hours)<br>\r\nFormat: 	1 day classroom, 5 days outdoors (both structural and natural terrain)<br>\r\nParticipants:	Minimum 8. Maximum 16.<br>\r\nRecertification:  Required every 3 years.<br>\r\n<br>\r\nPre-requisites:<br>\r\n<br>\r\n●18+ years of age<br>\r\n●In good physical condition<br>\r\n<br>\r\nUpgrading from TRR-Fundamentals:<br>\r\n<br>\r\nIn order to spread out training days and make budgets go further, it is possible to upgrade to a Technician level certification within a year of taking an initial Fundamentals course. You pay a reduced fee and only take the final four days of the TRR-Technician course. However, students must have a solid grasp of low and steep angle skills prior to commencing Technician level training, because there is no review of these skills in the latter part of the course. Proof of TRR-Fundamentals level certification (or equivalent) required.<br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n●Full body harness (Type III or V) (included in course fee)<br>\r\n●Climbing or rescue helmet (included in course fee)<br>\r\n●Sturdy boots (tactical boots or hiking boots are fine, steel toes not required)<br>\r\n●Pants made of durable material<br>\r\n●Gloves with leather palms (work gloves are fine)<br>\r\n', 'Este curso es dinámico e informativo para establecer el estándar del entrenamiento técnico de rescate con cuerda. También es intenso y exigente físicamente, pero no se requiere experiencia previa en cuerda porque comenzamos con habilidades de ángulo bajo y avanzamos en pasos simples y lógicos para destrezas de alto ángulo, incluyendo tirolés y sistemas de cuerda para levantar/bajar. Nuestro enfoque paso a paso combinado con mucha práctica hace que sea fácil aprender y retener estas habilidades. Los participantes avanzan desde rescates básicos y extrajudiciales a escenarios progresivamente más verticales. Las habilidades y el conocimiento cubiertos en este curso son relevantes para todas las demás disciplinas técnicas de rescate, incluyendo aguas rápidas, hielo superficial, espacios confinados, trincheras, cuevas y colapso estructural ligero.<br>\r\n<br>\r\nEquipo requerido:<br>\r\n<br>\r\n● Arnés de cuerpo entero (Tipo III o V) (incluido en la tarifa del curso)<br>\r\n● Casco de escalada o rescate (incluido en la tarifa del curso)<br>\r\n● Botas resistentes (las botas tácticas o las botas de montaña están bien, no se requieren dedos de acero)<br>\r\n● Pantalones hechos de material duradero<br>\r\n● Guantes con palma de cuero (los guantes de trabajo están bien)<br>\r\n', 'This course is both Dynamic and informative to set the standard for Technical Rope Rescue training. It is also intense and physically demanding, but no prior rope experience is required because we begin with low angle skills and progress in simple, logical steps to high angle skills including tyroleans and Raise/Lower rope systems. Our step-by-step approach combined with lots of hands-on practice makes it easy to learn and retain these skills. Participants advance from basic, over-the-bank rescues to progressively more vertical scenarios. The skills and knowledge covered in this course are relevant for all other technical rescue disciplines including swiftwater, surface ice, confined space, trench, cave and light structural collapse. <br>\r\n<br>\r\nRequired Equipment:<br>\r\n<br>\r\n●Full body harness (Type III or V) (included in course fee)<br>\r\n●Climbing or rescue helmet (included in course fee)<br>\r\n●Sturdy boots (tactical boots or hiking boots are fine, steel toes not required)<br>\r\n●Pants made of durable material<br>\r\n●Gloves with leather palms (work gloves are fine)<br>\r\n<br>', 'Requisitos previos:<br>\r\n<br>\r\n● Ser mayor de 18 años<br>\r\n● En buenas condiciones físicas<br>\r\n', 'Pre-requisites:<br>\r\n<br>\r\n●18+ years of age<br>\r\n●In good physical condition<br>', 1, 10, 3, '1', 21, '9.30337458237293', '-83.67016795891557'),
(12, 'Soporte Vital Básico (BLS)', 'Basic Life Support  (BLS) : Adult/Child/AED', 'El objetivo principal de este curso es que el alumno adquiera los conocimientos, destrezas y actitudes suficientes para ser capaz de reconocer las situaciones que ponen en peligro la vida y actuar inmediatamente aplicando las técnicas de Soporte Vital de acuerdo con los estándares recomendados, así como la utilización del AED. <br>\r\n<br>\r\nDetalles: <br>\r\n<br>\r\n- 1 día (10 horas) <br>\r\n- Fechas: las fechas de este curso varían, contáctanos para saber cuándo está programado el próximo curso<br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Breve historia del Soporte Vital Básico(BLS) <br>\r\n- Mecánica del soporte de vida artificial<br>\r\n- Fundamentos de la fisiología humana (sistema circulatorio) y aplicaciones BLS<br>\r\n- Qué se espera durante una emergencia (incluida la respuesta EMS) <br>\r\n- Evaluación de escena y respuesta apropiada<br>\r\n- A-B-C del BLS adultos para 1 socorrista <br>\r\n- A-B-C del BLS adultos para 2 socorristas<br>\r\n- A-B-C del BLS infantil para 1 socorrista<br>\r\n- A-B-C del BLS infantil para 2 socorristas<br>\r\n- Énfasis en el uso de fuentes multimedia para mejorar la experiencia de aprendizaje<br>\r\n<br>\r\nRequisitos previos del curso:<br>\r\n<br>\r\n- Para el curso universal de BLS no hay requisitos previos<br>\r\n', 'The main objective of this course is for the student to acquire sufficient knowledge, skills and attitudes to be able to recognize situations that endanger life and act immediately applying Life Support techniques according to the recommended standards, as well as the use of the AED.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\n•1 day (10 hours)<br>\r\n•Dates: The dates for this course vary, please contact us to find out when the next course is scheduled<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Brief history of BLS <br>\r\n•Mechanics of Artificial Life Support <br>\r\n•Fundamentals of human physiology (circulatory system) and BLS applications <br>\r\n•What is expected during an emergency (including EMS response)<br>\r\n•Scene assessment and appropriate response <br>\r\n•A-B-C\'s of Adult BLS for 1 rescuer <br>\r\n•A-B-C\'s of Adult BLS for 2 rescuers <br>\r\n•A-B-C\'s of Infant BLS for 1 rescuer <br>\r\n•A-B-C\'s of Infant BLS for 2 rescuers <br>\r\n•Emphasis on using Multi-Media sources to enhance learning experience<br>\r\n<br>\r\nCourse Prerequisites:<br>\r\n<br>\r\n•For the universal BLS course there are no prerequisites.<br>\r\n', 'El objetivo principal de este curso es que el alumno adquiera los conocimientos, destrezas y actitudes suficientes para ser capaz de reconocer las situaciones que ponen en peligro la vida y actuar inmediatamente aplicando las técnicas de Soporte Vital de acuerdo con los estándares recomendados, así como la utilización del AED. <br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Breve historia del Soporte Vital Básico(BLS) <br>\r\n- Mecánica del soporte de vida artificial<br>\r\n- Fundamentos de la fisiología humana (sistema circulatorio) y aplicaciones BLS<br>\r\n- Qué se espera durante una emergencia (incluida la respuesta EMS) <br>\r\n- Evaluación de escena y respuesta apropiada<br>\r\n- A-B-C del BLS adultos para 1 socorrista <br>\r\n- A-B-C del BLS adultos para 2 socorristas<br>\r\n- A-B-C del BLS infantil para 1 socorrista<br>\r\n- A-B-C del BLS infantil para 2 socorristas<br>\r\n- Énfasis en el uso de fuentes multimedia para mejorar la experiencia de aprendizaje<br>', 'The main objective of this course is for the student to acquire sufficient knowledge, skills and attitudes to be able to recognize situations that endanger life and act immediately applying Life Support techniques according to the recommended standards, as well as the use of the AED.<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Brief history of BLS <br>\r\n•Mechanics of Artificial Life Support <br>\r\n•Fundamentals of human physiology (circulatory system) and BLS applications <br>\r\n•What is expected during an emergency (including EMS response)<br>\r\n•Scene assessment and appropriate response <br>\r\n•A-B-C\'s of Adult BLS for 1 rescuer <br>\r\n•A-B-C\'s of Adult BLS for 2 rescuers <br>\r\n•A-B-C\'s of Infant BLS for 1 rescuer <br>\r\n•A-B-C\'s of Infant BLS for 2 rescuers <br>\r\n•Emphasis on using Multi-Media sources to enhance learning experience<br>\r\n<br>', 'Requisitos previos del curso:<br>\r\n<br>\r\n- Para el curso universal de BLS no hay requisitos previos<br>\r\n', 'Course Prerequisites:<br>\r\n<br>\r\n•For the universal BLS course there are no prerequisites.<br>', 1, 9, 1, '1', 21, '0.00000000000000', '0.00000000000000');
INSERT INTO `t_curso` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`, `resumen_es`, `resumen_in`, `pre_requisitos_es`, `pre_requisitos_in`, `activo`, `categoria`, `nivel`, `pais`, `instructor`, `latitud`, `longitud`) VALUES
(13, 'Soporte Vital Profesional - BLS', 'Professional Rescuer BLS: <br> BLS-U/O2 administration/AED', 'Este curso es útil para cualquier persona que desee explorar una carrera en la industria de actividades recreativas aire libre. Para ser un guía profesional capacitado, las personas deben tener esta certificación. <br>\r\nEl mismo brinda los conocimientos necesarios y ayuda a desarrollar las destrezas necesarias para enfrentar una situación de riesgo, utilizando los desfibriladores externos, así como la administración de Oxígeno. <br>\r\nPara ser un guía profesional capacitado, las personas deben tener esta certificación. <br>\r\n<br>\r\n\r\nDetalles: <br>\r\n<br>\r\n- 2 días (16 horas) <br>\r\n- Fechas: las fechas de este curso varían, contáctanos para saber cuándo está programado el próximo curso<br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Proporciona a las personas los conocimientos y habilidades necesarios para reconocer las emergencias<br>\r\n- Introducción al Sistema Médico de Emergencia<br>\r\n- Atención básica para la respiración y emergencias cardíacas para adultos, niños y bebés<br>\r\n- Los participantes son entrenados en BLS para dos rescatadores, reanimación y uso de una máscara de bolsa de válvula. <br>\r\n<br>\r\nRequisitos previos del curso: <br>\r\n<br>\r\n- Para el curso de BLS para rescatista profesional, no hay requisitos previos<br>\r\n', 'This course is useful for anyone wishing to explore a career in the outdoor industry. To be a trained professional guide, people must have this certification.\r\nIt provides the necessary knowledge and helps to develop the necessary skills to face a risk situation, using external defibrillators, as well as the administration of oxygen.<br>\r\n<br>\r\nDetails:<br>\r\n<br> \r\n•2 days (16 hours)<br>\r\n•Dates: The dates for this course vary, please contact us to find out when the next course is scheduled<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Provides individuals with the knowledge and skills necessary to recognize emergencies <br>\r\n•Introduction to the Emergency Medical System<br>\r\n•Basic care for breathing and cardiac emergencies for adults, children and infants<br>\r\n•Participants are trained in two-rescuer BLS, resuscitation, and use of a bag-valve mask.<br>\r\n<br>\r\nCourse Prerequisites:<br>\r\n<br>\r\n•For the BLS for the Professional Rescuer course there are no prerequisites.<br>\r\n\r\n', 'Este curso es útil para cualquier persona que desee explorar una carrera en la industria de actividades recreativas aire libre. Para ser un guía profesional capacitado, las personas deben tener esta certificación. <br>\r\nEl mismo brinda los conocimientos necesarios y ayuda a desarrollar las destrezas necesarias para enfrentar una situación de riesgo, utilizando los desfibriladores externos, así como la administración de Oxígeno. <br>\r\nPara ser un guía profesional capacitado, las personas deben tener esta certificación.<br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Proporciona a las personas los conocimientos y habilidades necesarios para reconocer las emergencias<br>\r\n- Introducción al Sistema Médico de Emergencia<br>\r\n- Atención básica para la respiración y emergencias cardíacas para adultos, niños y bebés<br>\r\n- Los participantes son entrenados en BLS para dos rescatadores, reanimación y uso de una máscara de bolsa de válvula. <br>\r\n<br>', 'This course is useful for anyone wishing to explore a career in the outdoor industry. To be a trained professional guide, people must have this certification.\r\nIt provides the necessary knowledge and helps to develop the necessary skills to face a risk situation, using external defibrillators, as well as the administration of oxygen.<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Provides individuals with the knowledge and skills necessary to recognize emergencies <br>\r\n•Introduction to the Emergency Medical System<br>\r\n•Basic care for breathing and cardiac emergencies for adults, children and infants<br>\r\n•Participants are trained in two-rescuer BLS, resuscitation, and use of a bag-valve mask.<br>\r\n<br>\r\n', 'Requisitos previos del curso: <br>\r\n<br>\r\n- Para el curso de BLS para rescatista profesional, no hay requisitos previos<br>\r\n', 'Course Prerequisites:<br>\r\n<br>\r\n•For the BLS for the Professional Rescuer course there are no prerequisites.<br>\r\n', 1, 9, 3, '1', 21, '0.00000000000000', '0.00000000000000'),
(14, 'Primeros auxilios en Zonas Remotas', 'Wilderness First Aid', 'El curso de Primeros Auxilios en Zonas Remotas, introduce a los participantes a la medicina de campo abierto y a las técnicas de rescate en zonas remotas. Diseñados para ayudar a las personas en entornos remotos, los participantes aprenderán cómo tratar las personas lesionadas que están a horas o días de distancia de poder recibir atención médica avanzada. El curso se enfoca en trabajar con equipos y enseñar técnicas de improvisación. <br>\r\n<br>\r\nDetalles: <br>\r\n<br>\r\n- 5 días<br> \r\n- Fecha: las fechas de este curso cambio, contáctenos para saber cuándo se programará el próximo curso. <br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Cuidado a largo plazo de los enfermos y heridos<br>\r\n- Habilidades de improvisación<br>\r\n- Embalaje del paciente y técnicas de evacuación<br>\r\n- Escenarios de práctica<br>\r\n- Protocolos médicos silvestres: tratamiento anafiláctico incluyendo el entrenamiento de inyección. Manejo avanzado de heridas, BLS modificado, evaluación espinal. <br>\r\n<br>\r\nRequisitos previos del curso: <br>\r\n<br>\r\n- Para el curso de Primeros Auxilios en Zonas Remotas, no hay requisitos previos<br>\r\n\r\n', 'The Wilderness First Aid course introduces participants to backcountry medicine and wilderness rescue techniques.  Designed to help people in remote settings, participants will learn how to treat injured persons that are hours or days away from Advanced Medical Care.  The course focuses on working with limited equipment and teaches improvising techniques.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\n•5 days<br>\r\n•Dates: The dates for this course vary, please contact us to find out when the next course is scheduled<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Long Term Care of the Sick and Injured<br>\r\n•Improvisation Skills<br>\r\n•Patient Packaging and Evacuation Techniques<br>\r\n•Practice scenarios<br>\r\n•Wilderness Medical Protocols: Anaphylaxis Treatment including injection training, Advanced Wound Management, Modified BLS, Spinal Assessment<br>\r\n<br>\r\nCourse Prerequisites:<br>\r\n<br>\r\n•For the Wilderness First Aid course there are no course prerequisites.  However, it is recommended that the individual already be certified in Basic First Aid.<br>\r\n<br>\r\nCourse Prerequisites:<br>\r\n<br>\r\n•	For the Wilderness First Aid course there are no course prerequisites.\r\n', 'El curso de Primeros Auxilios en Zonas Remotas, introduce a los participantes a la medicina de campo abierto y a las técnicas de rescate en zonas remotas. Diseñados para ayudar a las personas en entornos remotos, los participantes aprenderán cómo tratar las personas lesionadas que están a horas o días de distancia de poder recibir atención médica avanzada. El curso se enfoca en trabajar con equipos y enseñar técnicas de improvisación. <br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Cuidado a largo plazo de los enfermos y heridos<br>\r\n- Habilidades de improvisación<br>\r\n- Embalaje del paciente y técnicas de evacuación<br>\r\n- Escenarios de práctica<br>\r\n- Protocolos médicos silvestres: tratamiento anafiláctico incluyendo el entrenamiento de inyección. Manejo avanzado de heridas, BLS modificado, evaluación espinal. <br>\r\n', 'The Wilderness First Aid course introduces participants to backcountry medicine and wilderness rescue techniques.  Designed to help people in remote settings, participants will learn how to treat injured persons that are hours or days away from Advanced Medical Care.  The course focuses on working with limited equipment and teaches improvising techniques.<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Long Term Care of the Sick and Injured<br>\r\n•Improvisation Skills<br>\r\n•Patient Packaging and Evacuation Techniques<br>\r\n•Practice scenarios<br>\r\n•Wilderness Medical Protocols: Anaphylaxis Treatment including injection training, Advanced Wound Management, Modified BLS, Spinal Assessment<br>\r\n<br>', 'Requisitos previos del curso: <br>\r\n<br>\r\n- Para el curso de Primeros Auxilios en Zonas Remotas, no hay requisitos previos<br>\r\n', 'Course Prerequisites:<br>\r\n<br>\r\n•	For the Wilderness First Aid course there are no course prerequisites.', 1, 11, 1, '1', 21, '0.00000000000000', '0.00000000000000'),
(15, 'Primera respuesta en zonas remotas  (WFR)', 'Wilderness First Responder (WFR)', 'El curso de Primera Respuesta en Zonas Remotas lleva al curso de Primeros Auxilios en Zonas Remotas un paso más allá. <br>\r\nEste curso es necesario para aquellos participantes que estén interesados en realizar viajes principalmente en el campo y especialmente en viajes nocturnos. <br>\r\nMuchas empresas que brindan servicios al aire libre (Turismo) no contratarán guías que no posean esta certificación <br>\r\n\r\n<br>\r\nDetalles: <br>\r\n<br>\r\n- 9 días, 8 noches<br>\r\n- Precio = <br>\r\n- Fechas: las fechas de este curso varían, contáctanos para saber cuándo está programado el próximo curso. <br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Habilidades de evaluación integral del paciente<br>\r\n- Simulaciones de práctica <br>\r\n- Protocolos médicos silvestres:  tratamiento anafiláctico, reducción de la dislocación, evaluación espinal, manejo avanzado de la herida, protocolo BLS modificado<br>\r\n- Gestión de accidentes y liderazgo<br>\r\n- Cuidado a largo plazo de los enfermos y heridos<br>\r\n- Habilidades de improvisación<br>\r\n- Búsqueda básica y rescate<br>\r\n- Embalaje del paciente y técnicas de evacuación<br>\r\n- Escenario de accidente automovilístico nocturno<br>\r\n<br>\r\nRequisitos previos del curso: <br>\r\n<br>\r\n- No hay requisitos previos para el curso de Primera Respuesta en Zonas Remotas, sin embargo, se recomienda que la persona ya esté certificada en primeros auxilios básicos. <br>\r\n', 'The Wilderness First Responder course takes the Wilderness First Aid course one step further. <br>  This course is necessary for those participants who are interested in leading trips in the backcountry, especially on overnight trips.  Many Outdoor Outfitters will not hire lead guides that do not possess this important certification.<br>\r\n<br>\r\nDetails:<br>\r\n<br>\r\n•9 days, 8 nights <br>\r\n•Dates: The dates for this course vary, please contact us to find out when the next course is scheduled<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Comprehensive Patient Assessment Skills<br>\r\n•Hands-on simulations<br>\r\n•Wilderness Medical Protocols: anaphylaxis treatment, dislocation reduction, spinal assessment, advanced wound management, modified BLS protocol<br>\r\n•Accident Management and Leadership<br>\r\n•Long Term Care of the Sick and Injured<br>\r\n•Improvisation Skills<br>\r\n•Basic Search and Rescue<br>\r\n•Patient Packaging and Evacuation Techniques<br>\r\n•Night automobile crash scenario<br>\r\n<br>\r\nCourse Prerequisites:<br>\r\n<br>\r\nThere are no prerequisites for the Wilderness First Responder course.  However, it is recommended that the individual already be certified in Basic First Aid.\r\n', 'El curso de Primera Respuesta en Zonas Remotas lleva al curso de Primeros Auxilios en Zonas Remotas un paso más allá. <br>\r\nEste curso es necesario para aquellos participantes que estén interesados en realizar viajes principalmente en el campo y especialmente en viajes nocturnos. <br>\r\nMuchas empresas que brindan servicios al aire libre (Turismo) no contratarán guías que no posean esta certificación <br>\r\n<br>\r\nResumen del curso: <br>\r\n<br>\r\n- Habilidades de evaluación integral del paciente<br>\r\n- Simulaciones de práctica <br>\r\n- Protocolos médicos silvestres:  tratamiento anafiláctico, reducción de la dislocación, evaluación espinal, manejo avanzado de la herida, protocolo BLS modificado<br>\r\n- Gestión de accidentes y liderazgo<br>\r\n- Cuidado a largo plazo de los enfermos y heridos<br>\r\n- Habilidades de improvisación<br>\r\n- Búsqueda básica y rescate<br>\r\n- Embalaje del paciente y técnicas de evacuación<br>\r\n- Escenario de accidente automovilístico nocturno<br>', 'The Wilderness First Responder course takes the Wilderness First Aid course one step further. <br>  This course is necessary for those participants who are interested in leading trips in the backcountry, especially on overnight trips.  Many Outdoor Outfitters will not hire lead guides that do not possess this important certification.<br>\r\n<br>\r\nCourse Overview:<br>\r\n<br>\r\n•Comprehensive Patient Assessment Skills<br>\r\n•Hands-on simulations<br>\r\n•Wilderness Medical Protocols: anaphylaxis treatment, dislocation reduction, spinal assessment, advanced wound management, modified BLS protocol<br>\r\n•Accident Management and Leadership<br>\r\n•Long Term Care of the Sick and Injured<br>\r\n•Improvisation Skills<br>\r\n•Basic Search and Rescue<br>\r\n•Patient Packaging and Evacuation Techniques<br>\r\n•Night automobile crash scenario<br>\r\n', 'Requisitos previos del curso: <br>\r\n<br>\r\n- No hay requisitos previos para el curso de Primera Respuesta en Zonas Remotas, sin embargo, se recomienda que la persona ya esté certificada en primeros auxilios básicos. <br>', 'Course Prerequisites:<br>\r\n<br>\r\nThere are no prerequisites for the Wilderness First Responder course.  However, it is recommended that the individual already be certified in Basic First Aid.', 1, 11, 1, '1', 21, '0.00000000000000', '0.00000000000000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_detalle_curso`
--

CREATE TABLE `t_detalle_curso` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `detalle_es` text COLLATE utf8_bin,
  `detalle_in` text COLLATE utf8_bin,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_detalle_involucrados`
--

CREATE TABLE `t_detalle_involucrados` (
  `id` int(11) NOT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin,
  `persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empresa`
--

CREATE TABLE `t_empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `mision_es` text COLLATE utf8_bin,
  `mision_in` text COLLATE utf8_bin,
  `vision_es` text COLLATE utf8_bin,
  `vision_in` text COLLATE utf8_bin,
  `numero` varchar(100) COLLATE utf8_bin NOT NULL,
  `correo` varchar(100) COLLATE utf8_bin NOT NULL,
  `historia_es` text COLLATE utf8_bin,
  `historia_in` text COLLATE utf8_bin,
  `experiencia_es` text COLLATE utf8_bin,
  `experiencia_in` text COLLATE utf8_bin,
  `horario_atencion_es` text COLLATE utf8_bin,
  `horario_atencion_in` text COLLATE utf8_bin,
  `logo_es` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `logo_in` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_empresa`
--

INSERT INTO `t_empresa` (`id`, `nombre`, `mision_es`, `mision_in`, `vision_es`, `vision_in`, `numero`, `correo`, `historia_es`, `historia_in`, `experiencia_es`, `experiencia_in`, `horario_atencion_es`, `horario_atencion_in`, `logo_es`, `logo_in`) VALUES
(2, 'AVENTURA SEGURIDAD Y RESCATE', 'Nuestro objetivo en ASR es ser el mejor proveedor de educación de seguridad y rescate para individuos y organizaciones que buscan soluciones prácticas y efectivas para las situaciones de emergencia más comunes en el campo. A través de la instrucción práctica e interesante, nuestro objetivo es proveer a cada estudiante una experiencia educativa sin precedentes, preparándolos para verdaderas emergencias en el campo.<br> \r\n', 'Our goal at ASR is to be the best provider of safety and rescue education for individuals and organizations seeking practical and effective solutions to the most common wilderness emergency situations. Through engaging and practical instruction, we aim to provide every student with an unparalleled educational experience, preparing them for true emergencies in the field.<br>\r\n', 'Nuestra visión es expandirnos. La pieza central de esta expansión de ASR es la compra, la dotación de personal y la comercialización del Centro de Educación de Aventuras - Instituto de español en Dominical, Costa Rica.<br>\r\nNuestro negocio prepararía al guía de aventuras para un mercado internacional y mejoraría las oportunidades de los graduados para encontrar empleo en todo el mundo mediante la adquisición de:<br>\r\n<br>\r\n• Múltiples habilidades de lenguaje<br>\r\n• Entrenamiento de ecoturismo / guía de especialidad<br>\r\n• Certificaciones internacionales<br>\r\n<br>\r\nASR ofrecería una oportunidad única, ya que combinaría la aplicación práctica de principios enseñados por información de respuesta a emergencias en un entorno remoto de Costa Rica. Además, llevaría a nuestros estudiantes a convertirse en:<br>\r\n<br>\r\n• Naturalistas<br>\r\n• Historiadores<br>\r\n• Ecologistas<br>\r\n• Viajeros expertos en aventura<br>\r\n', 'Our View is to expand. The centerpiece of this proposed ASR expansion is the purchase, staffing, and marketing of the Adventure Education Center- Spanish Institute in Dominical, Costa Rica.<br>\r\nOur business would prepare the adventure guide for an international marketplace and improve graduates’ opportunities to find employment around the world through acquiring:<br>\r\n<br>\r\n• Multiple language skills<br>\r\n• Ecotourism/specialty guide training <br>\r\n• International certifications <br>\r\n<br>\r\nASR would offers a unique opportunity as it would combines practical application of principles taught with emergency response information in a remote setting of Costa Rica. Additionally, we would lead our students into becoming: <br>\r\n<br>\r\n• Naturalists<br>\r\n• Historians<br>\r\n• Ecologists<br>\r\n• Knowledgeable adventure travelers<br>\r\n', '60843355', 'aventurasr17@gmail.com', 'El 15 de noviembre de 1995 se contrató a Rescue 3 International para impartir uno de los primeros cursos de rescate Swiftwater en Costa Rica. Con base en Turrialba, el sitio de entrenamiento elegido se realizó en el local Río Pejibaye. Los registros muestran que muchos de los estudiantes que asistieron fueron principalmente guías de ríos, instructores de surf y kayakistas. Nuestra introducción a la certificación del curso provocó una abrumadora respuesta de gratitud hacia nosotros aclarando la necesidad de normas de la industria, educación continua y evaluaciones regulares. Poco después, lanzamos mi investigación para recopilar datos sobre los recursos de Costa Rica, incluidos; Servicios EMS, red de comunicaciones y organizaciones educativas que ofrecen capacitación en seguridad y rescate.<br>\r\nEl 16 de enero concluyó nuestra investigación;<br>\r\n<br>\r\n• Solo 2 agencias en Centroamérica ofrecieron capacitación a Cruz Roja y Departamentos de Bomberos. No se están aplicando estándares educativos de cuidado para el sector turístico.<br>\r\n<br>\r\n• Las estadísticas revelaron que más del 70% del personal del servicio de emergencia respondía a accidentes relacionados con el agua sin el equipo de protección personal adecuado.<br>\r\n <br>\r\n• Las corrientes peligrosas, las condiciones climáticas y la falta de educación se mencionaron como causa principal en más del 60% de todos los ahogamientos.<br>\r\n<br>\r\n• La población de Costa Rica es de 4.5 millones con una tasa promedio de ahogamiento (50-60) por año en comparación con la población de los Estados Unidos de 318 millones.<br>\r\n<br>\r\n• Los desastres naturales regulares de inundaciones, deslizamientos de tierra y tormentas tropicales eran comunes.<br>\r\n<br>\r\nAventura Seguridad y Rescate se estableció en 1999 en respuesta a un sector turístico en rápido crecimiento en América Central. Al principio, más giras significaban más accidentes relacionados con la aventura. En respuesta, representantes de una serie de organizaciones gubernamentales y recreativas formaron una asociación con el objetivo de mejorar los estándares de seguridad y rescate para los operadores de turismo de aventura.<br> ASR se convirtió en el proveedor líder de entrenamiento de rescate especializado en las áreas de Wilderness Medicine, Swiftwater Rescue y Technical Rope Rescue en América Central. Nuestros cursos de capacitación se convirtieron en el estándar no oficial al que los operadores de turismo de toda América Central capacitaron a sus guías. A medida que este estándar ganó reconocimiento, ASR comenzó a ser contratado por operadores de turismo de aventura para desarrollar programas de gestión de riesgos y protocolos de seguridad para sus programas al aire libre. En la actualidad, ASR continúa capacitando y apoyando a una comunidad de más de 1,200 guías y brinda servicios de consultoría de gestión de riesgos a una serie de operadores turísticos en Centroamérica solamente.<br>', 'On November 15, 1995 Rescue 3 International was contracted to teach one of the first Swiftwater Rescue Courses in Costa Rica. Based out of Turrialba, the chosen training site was conducted on the local Rio Pejibaye. Records show that many of the students attending were primarily river guides, surf instructors and kayakers. Our introduction to the course certification sparked an overwhelming response of gratitude towards us clarifying the need for industry standards, continual education and regular evaluations. Shortly afterward, we launched my our investigation collecting data about Costa Rica’s resources Including; EMS services, communications network, and educational organizations offering Safety and Rescue training. <br> On January 16th our investigation concluded;<br>\r\n<br>\r\n•	Only 2 Agencies in Centro America were offer training Cruz Roja and Fire Departments.  No educational standards of care are being enforced for the tourism sector.<br>\r\n<br>\r\n•	Statistics revealed more than 70% of the Emergency Service personnel were responding to water related accidents without adequate personal protective equipment.<br>\r\n <br>\r\n•	Hazardous currents, weather conditions, and lack of education were cited as a primary cause in more than 60% of all drownings.<br>\r\n<br>\r\n•	Costa Ricas population is 4.5 million with an average drowning rate (50-60) per year compared to the United States population of 318 million.<br> \r\n<br>\r\n•	Regular natural disasters of flooding, landslides, and tropical storms were common.<br>\r\n <br>\r\n•	The evolving Emergency Medical Services of Centroamerica are faced with a number of different dilemmas with the current transportation system, poor communications network, and a struggling education/ training program.<br>\r\n<br>\r\nAdventure Safety & Rescue was established in 1999 in response to a rapidly growing tourism sector in Central America. At first, more tours meant more adventure related accidents. In response, representatives from a number of governmental and recreational organizations formed an association with the goal of enhancing the standards for safety and rescue for adventure tour operators. <br> ASR became the leading provider of specialized rescue training in the areas of Wilderness Medicine, Swift Water Rescue and Technical Rope Rescue in Central America.  Our training courses became the unofficial standard to which tourism operators throughout Central America trained their guides.  As this standard gained recognition, ASR began to be contracted by adventure tourism operators to develop risk-management programs and safety protocols for their outdoor programs.  Today ASR continues to train and support a community of over 1,200 guides and provides risk management consulting services to a number of tourism operators in Central America alone.<br>\r\n', 'Aventura Seguridad y Rescate tiene más de 16 años de experiencia en la industria de seguridad y rescate profesional en América Central y en todo el mundo.<br>\r\nCon sede en Costa Rica, ASR es el proveedor de entrenamiento preferido para Rescue 3 International en Rescate Técnico de Cuerdas, Rescate de Aguas Rápidas y cursos de medicina especializada en toda Centroamérica. A través de nuestras afiliaciones con Rescue 3 International, brindamos certificaciones que cumplen con la NFPA y que son reconocidas como la capacitación recomendada para brindar un \"estándar de atención\" ampliamente reconocido. También somos el proveedor centroamericano del American Safety and Health Institute, una organización dedicada al desarrollo de la medicina práctica para áreas remotas. Con sus afiliados internacionales, ASHI ofrece capacitación en educación médica en zonas remotas a nivel internacional. El plan de estudios que utilizamos es el más reconocido en la medicina de zonas remotas.<br>\r\n<br>\r\nNUESTRO ENFOQUE<br>\r\n<br>\r\nComienza con un plan de estudios comprobado y desarrollado por Rescue 3 International, el líder mundial en capacitación de rescate técnico para entornos de alto riesgo en tierra, agua y aire. Este plan de estudios está diseñado por líderes en el campo del rescate técnico y constantemente refinado y actualizado por un cuadro mundial de más de 700 instructores en 33 países diferentes. Obviamente, con más de 90,000 estudiantes que han tomado cursos de Rescue 3 en todo el mundo, hemos perfeccionado nuestro enfoque hasta que sea el mejor absoluto en el negocio. Estamos comprometidos a proporcionar la mejor capacitación junto con el mejor servicio al cliente y creemos que la capacitación debe adaptarse a las necesidades específicas de cada cliente. Si bien enseñamos todas las habilidades y conocimientos necesarios para la certificación, nos aseguramos de que las habilidades y el conocimiento que aprenden se enseñen de manera que sean relevantes para su entorno de trabajo único. Nuestra filosofía es escuchar a nuestros clientes y alentarlos a enfocarse en mejorar las habilidades a su alcance implementando Desafío por elección. Esta opción es lograr conceptos a través de la observación, observando la práctica, influyendo en la confianza cuando uno siente que está más allá de sus capacidades.<br>\r\n<br>\r\n', 'Adventure Safety and Rescue has more than 16 years of experience in the professional safety and rescue industry in Central America and around the world. <br>\r\nBased in Costa Rica, ASR is the preferred training provider for Rescue 3 International in Technical Rope Rescue, Swift Water Rescue, and specialized medicine courses in all of Central America. Through our affiliation with Rescue 3 International, we provide certifications that are NFPA compliant and recognized as the recommended training to provide a widely acknowledged “standard-of-care”. We are also the Central American provider for American Safety and Health Institute, an organization devoted to the development of practical medicine for remote areas. With its international affiliates, ASHI provides wilderness medical education training on an international level. The curriculum we use is the most recognized in wilderness medicine.<br>\r\n<br>\r\nOur Approach<br>\r\n<br>\r\nStarts with a proven curriculum, developed by Rescue 3 International—the global leader in technical rescue training for high-risk environments on land, in the water and in the air. This curriculum is designed by leaders in the field of technical rescue and constantly refined and updated by a worldwide cadre of over 700 instructors in 33 different countries. Obviously, with more than 90,000 students who have taken Rescue 3’s courses worldwide, we’ve refined our approach until it is the absolute best in the business. We are committed to providing the very best training coupled with the very best customer service and we believe training should be tailored to the specific needs of each client. While we teach all the skills and knowledge necessary for certification, we make sure the skills and knowledge they learn are taught in a way that makes them relevant to their unique work environment. Our philisophy is to listen to our clients and encourage them to focus on improving skills within their reach by implementing Challenge by Choice. This option is to attain concepts through observation, by watching the practice, influencing confidence when one feels it’s beyond their abilities.<br>\r\n\r\n', 'De lunes a viernes de 9:00 am a 3:30 pm', 'Monday through Friday from 9 a.m. to 3 p.m.', './public/images/imgEmpresa/logos/Logo_Español1.jpg', './public/images/imgEmpresa/logos/logo11.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empresa_asociada`
--

CREATE TABLE `t_empresa_asociada` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin,
  `enlace` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_empresa_asociada`
--

INSERT INTO `t_empresa_asociada` (`id`, `nombre`, `descripcion_es`, `descripcion_in`, `enlace`, `img`) VALUES
(2, 'Outward Bound ', 'CRROBS', 'CROBS', 'www.costaricaoutwardbound.org', './public/images/imgEmpresaAsociada/CROBS_logo.jpg'),
(3, 'Pure Life', 'Escuela de Aventura (Aspiro)', 'Aspiro', 'www.purelifeadventure.com', './public/images/imgEmpresaAsociada/purelife_green_(2).jpeg'),
(5, 'American Safety & Health Institute', 'ASHI', 'ASHI', 'www.emergencycare.hsi.com', './public/images/imgEmpresaAsociada/American_Safety.jpg'),
(6, 'World Animal Protection', 'WSPA', 'WSPA', 'www.worldanimalprotection.cr', './public/images/imgEmpresaAsociada/WAP_(WSPA)_logo.jpg'),
(7, 'Aventuras Naturales ', 'Pacuare Lodge', 'Pacuare Lodge', 'www.pacuarelodge.com', './public/images/imgEmpresaAsociada/logo_avenat.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_estado_matricula`
--

CREATE TABLE `t_estado_matricula` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_estado_matricula`
--

INSERT INTO `t_estado_matricula` (`id`, `nombre_es`, `nombre_in`) VALUES
(6, 'Matriculado', 'Registered'),
(7, 'Finalizado', 'Finalized');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_expediente_general`
--

CREATE TABLE `t_expediente_general` (
  `id` int(11) NOT NULL,
  `fecha_matriculado` date DEFAULT NULL,
  `fecha_finalizado` date DEFAULT NULL,
  `detalle` text COLLATE utf8_bin,
  `persona` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_expediente_retiro_titulo`
--

CREATE TABLE `t_expediente_retiro_titulo` (
  `id` int(11) NOT NULL,
  `fecha_retiro` date DEFAULT NULL,
  `medio_retiro` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `detalle` text COLLATE utf8_bin,
  `persona_origen` int(11) NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_gallery`
--

CREATE TABLE `t_gallery` (
  `id` int(11) NOT NULL,
  `img` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_gallery`
--

INSERT INTO `t_gallery` (`id`, `img`) VALUES
(10, './public/images/imgGallery/DSC_0003.JPG'),
(11, './public/images/imgGallery/felipe_perez_037.jpg'),
(12, './public/images/imgGallery/pejibaye_2.JPG'),
(13, './public/images/imgGallery/DSC_0304.JPG'),
(17, './public/images/imgGallery/IMG_1343.JPG'),
(19, './public/images/imgGallery/DSC_0083.JPG'),
(20, './public/images/imgGallery/a_(250).JPG'),
(22, './public/images/imgGallery/a_(156).jpg'),
(23, './public/images/imgGallery/rcp.jpg'),
(24, './public/images/imgGallery/a_(244).jpg'),
(25, './public/images/imgGallery/Agua.JPG');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_img`
--

CREATE TABLE `t_img` (
  `id` int(11) NOT NULL,
  `ruta` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `desc_es` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `desc_in` varchar(200) COLLATE utf8_bin NOT NULL,
  `titulo_es` varchar(150) COLLATE utf8_bin NOT NULL,
  `titulo_in` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_img`
--

INSERT INTO `t_img` (`id`, `ruta`, `desc_es`, `desc_in`, `titulo_es`, `titulo_in`) VALUES
(5, './public/images/imgCarousel/IMG_33881.JPG', 'Soporte Vital Básico', 'Basic Life Support', 'BLS', 'BLS'),
(6, './public/images/imgCarousel/felipe_perez_037.jpg', 'Técnico en Rescate de Aguas Blancas', 'Whiwater Rescue Technician ', 'WRT', 'WRT'),
(8, './public/images/imgCarousel/felipe_perez_044.jpg', 'Primeros Auxilios en Zonas Remotas', 'Wilderness First Aid', 'WFA', 'WFA'),
(15, './public/images/imgCarousel/WFR.JPG', 'Primera Respuesta en Zonas Remotas', 'Wilderness First Responder', 'WFR', 'WFR'),
(17, './public/images/imgCarousel/IMG_1920.JPG', 'Técnico en Rescate con Cuerdas', 'Technician Rope Rescue', 'TRROL', 'TRROL'),
(18, './public/images/imgCarousel/a_(210).JPG', 'Técnico en Rescate de Aguas Rápidas', 'Swiftwater Rescue Technician ', 'SRT', 'SRT'),
(19, NULL, 'hola', 'hola', 'Cursos', 'Courses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_info_general_empresa`
--

CREATE TABLE `t_info_general_empresa` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_logros`
--

CREATE TABLE `t_logros` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_nivel`
--

CREATE TABLE `t_nivel` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_nivel`
--

INSERT INTO `t_nivel` (`id`, `nombre_es`, `nombre_in`) VALUES
(1, 'Operaciones', 'Operations '),
(3, 'Profesional', 'Professional'),
(4, 'Conocimiento', 'Awareness'),
(5, 'Técnico', 'Technician');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_pais`
--

CREATE TABLE `t_pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_pais`
--

INSERT INTO `t_pais` (`id`, `nombre`) VALUES
(1, 'Costa Rica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_palabras`
--

CREATE TABLE `t_palabras` (
  `id` int(11) NOT NULL,
  `palabra_key` varchar(50) COLLATE utf8_bin NOT NULL,
  `vista` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `valor_es` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `valor_in` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_palabras`
--

INSERT INTO `t_palabras` (`id`, `palabra_key`, `vista`, `valor_es`, `valor_in`) VALUES
(3, 'titulo cursos', 'inicio', 'Nuestros Cursos', 'Ours Courses'),
(6, 'btn comentar', 'inicio', 'Comentarios', 'Comments'),
(7, 'titulo clientes', 'inicio', 'Empresas que nos Respaldan ', 'Companies that support us'),
(8, 'desc clientes', 'inicio', 'Nuestros clientes nos recomiendan por sus experiencias con nuestros paquetes', '\r\nOur clients recommend us for their experiences with our packages'),
(13, 'contactenos de seccion sobre nosotros', 'inicio', 'Estos son los medios para Contartarnos ', 'Information to contact us'),
(16, 'titulo vista', 'list cursos', 'Cursos', 'Courses'),
(17, 'desc vista', 'list cursos', 'Nuestra amplia gama de cursos se ajustan a sus necesidades,<br>cumpliendo con altos estándares de calidad ', 'Our wide range of courses are tailored to your needs,<br>meeting high quality standards'),
(27, 'mision', 'sobre nosotros', 'Misión', 'Mission'),
(28, 'vision', 'sobre nosotros', 'Visión', 'Vision'),
(29, 'historia', 'sobre nosotros', 'Nuestra Historia', 'Our History'),
(30, 'experiencia', 'sobre nosotros', 'Experiencia', 'Experience'),
(31, 'contactenos', 'sobre nosotros', 'Contáctenos', 'Contact us'),
(35, 'titulo vista', 'sesion', 'Iniciar Sesión', 'Log in'),
(36, 'desc vista', 'sesion', 'Ingresa el correo y la contraseña para iniciar sesión.', 'Enter the email and password to log in.'),
(37, 'btn ingresar', 'sesion', 'Ingresar', 'Enter'),
(38, 'menu cursos', 'all', 'Nuestros Cursos', 'Ours Courses'),
(39, 'submenu cursos', 'all', 'Lista de Cursos', 'List of Courses'),
(40, 'submenu mapa', 'all', 'Cursos en Mapa', 'Courses on Map'),
(41, 'menu sobre nosotros', 'all', 'Quienes Somos ', 'About us'),
(42, 'menu condiciones', 'all', 'Condiciones', 'Terms'),
(43, 'menu sesion', 'all', 'Sesión', 'Session'),
(45, 'submenu cerrar sesion', 'all', 'Cerrar Sesión', 'logout'),
(46, 'submenu mi perfil', 'all', 'Mi perfil', 'My profile'),
(47, 'submenu idioma es', 'all', 'Español', 'Spanish'),
(48, 'submenu idioma in', 'all', 'Inglés', 'English'),
(49, 'titulo vista', 'detalle de un curso', 'Información del Curso', 'Course Information '),
(50, 'desc vista', 'detalle de un curso', 'A continuación se muestra el detalle del curso seleccionado', 'Below is the detail of the selected course'),
(51, 'btn listado', 'detalle de un curso', 'Lista de Cursos', 'List of Courses'),
(52, 'categoria', 'detalle de un curso', 'Categoría', 'Category'),
(53, 'nivel', 'detalle de un curso', 'Nivel', 'Level'),
(54, 'pais', 'detalle de un curso', 'País', 'Country'),
(55, 'instructor', 'detalle de un curso', 'Instructor', 'Instructor'),
(56, 'prerrequisitos', 'detalle de un curso', 'Requisitos Previos', 'Previous requirements'),
(57, 'descripcion', 'detalle de un curso', 'Descripción', 'Description'),
(60, 'titulo mapa', 'inicio', 'Ubica nuestros cursos en el mapa', 'Locate our courses on the map'),
(62, 'descripcion de seccion sobre nosotros', 'inicio', 'Acerquese a los profesionales, le aconsejamos para que obtenga los beneficios deseados', '\r\nApproach the professionals, we advise you to obtain the desired benefits'),
(63, 'menu search', 'all', 'Buscar', 'Search'),
(64, 'menu home', 'all', 'Inicio', 'Home'),
(65, 'menu galeria', 'all', 'Galería', 'Gallery'),
(66, 'menu contact', 'all', 'Contáctenos', 'Contact'),
(67, 'titulo seccion busqueda', 'inicio', 'Búsqueda de cursos', 'Search for courses'),
(68, 'titulo seccion galeria', 'inicio', 'Galería', 'Gallery'),
(69, 'btn ver mas', 'list cursos', 'Ver más', 'See more');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_persona`
--

CREATE TABLE `t_persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `primer_apellido` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `segundo_apellido` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cedula` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `activo` tinyint(4) DEFAULT NULL,
  `rol` int(11) NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `pais` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `pass` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `img` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(100) COLLATE utf8_bin NOT NULL,
  `correo` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_persona`
--

INSERT INTO `t_persona` (`id`, `nombre`, `primer_apellido`, `segundo_apellido`, `cedula`, `activo`, `rol`, `fecha_nac`, `pais`, `pass`, `img`, `numero`, `correo`) VALUES
(19, 'Administrador', 'adm', 'adm', '305890645', 1, 1, '2018-06-13', 'Costa Rica', 'adm123', '', '65498876', 'adm@gmail.com'),
(20, 'Helen', 'Rojas', 'Hernández', '110630797', 1, 1, '1980-03-19', 'Costa Rica', 'ASR2017', './public/images/imgUser/foto_He.JPG', '60843355', 'aventurasr17@gmail.com'),
(21, 'Phillip', 'Pérez', 'Camarena', '801110558', 1, 2, '1968-02-27', 'Costa Rica', 'ASR2017', './public/images/imgUser/Foto_Felipe.jpg', '88354930', 'aventurasr17@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_rol`
--

CREATE TABLE `t_rol` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_rol`
--

INSERT INTO `t_rol` (`id`, `nombre_es`, `nombre_in`) VALUES
(1, 'Asistente Administrativa', 'Administrative Assistant'),
(2, 'Instructor', 'Instructor'),
(3, 'Estudiante', 'Estudiante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_caract_categoria`
--
ALTER TABLE `t_caract_categoria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_caract_cat_ibfk_1` (`categoria`);

--
-- Indices de la tabla `t_caract_curso`
--
ALTER TABLE `t_caract_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_curso` (`curso`);

--
-- Indices de la tabla `t_categoria`
--
ALTER TABLE `t_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_comentario`
--
ALTER TABLE `t_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona` (`persona`);

--
-- Indices de la tabla `t_curso`
--
ALTER TABLE `t_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`categoria`),
  ADD KEY `nivel` (`nivel`);

--
-- Indices de la tabla `t_detalle_curso`
--
ALTER TABLE `t_detalle_curso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_t_detalle_curso` (`curso`);

--
-- Indices de la tabla `t_detalle_involucrados`
--
ALTER TABLE `t_detalle_involucrados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona` (`persona`);

--
-- Indices de la tabla `t_empresa`
--
ALTER TABLE `t_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_empresa_asociada`
--
ALTER TABLE `t_empresa_asociada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_estado_matricula`
--
ALTER TABLE `t_estado_matricula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_expediente_general`
--
ALTER TABLE `t_expediente_general`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona` (`persona`),
  ADD KEY `curso` (`curso`),
  ADD KEY `estado` (`estado`);

--
-- Indices de la tabla `t_expediente_retiro_titulo`
--
ALTER TABLE `t_expediente_retiro_titulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_origen` (`persona_origen`),
  ADD KEY `curso` (`curso`);

--
-- Indices de la tabla `t_gallery`
--
ALTER TABLE `t_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_img`
--
ALTER TABLE `t_img`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_info_general_empresa`
--
ALTER TABLE `t_info_general_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_logros`
--
ALTER TABLE `t_logros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_nivel`
--
ALTER TABLE `t_nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_pais`
--
ALTER TABLE `t_pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_palabras`
--
ALTER TABLE `t_palabras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol` (`rol`);

--
-- Indices de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_caract_categoria`
--
ALTER TABLE `t_caract_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_caract_curso`
--
ALTER TABLE `t_caract_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_categoria`
--
ALTER TABLE `t_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `t_comentario`
--
ALTER TABLE `t_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `t_curso`
--
ALTER TABLE `t_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `t_detalle_curso`
--
ALTER TABLE `t_detalle_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_detalle_involucrados`
--
ALTER TABLE `t_detalle_involucrados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_empresa`
--
ALTER TABLE `t_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_empresa_asociada`
--
ALTER TABLE `t_empresa_asociada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `t_estado_matricula`
--
ALTER TABLE `t_estado_matricula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `t_expediente_general`
--
ALTER TABLE `t_expediente_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_expediente_retiro_titulo`
--
ALTER TABLE `t_expediente_retiro_titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_gallery`
--
ALTER TABLE `t_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `t_img`
--
ALTER TABLE `t_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `t_info_general_empresa`
--
ALTER TABLE `t_info_general_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_logros`
--
ALTER TABLE `t_logros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `t_nivel`
--
ALTER TABLE `t_nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `t_pais`
--
ALTER TABLE `t_pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `t_palabras`
--
ALTER TABLE `t_palabras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `t_rol`
--
ALTER TABLE `t_rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_caract_categoria`
--
ALTER TABLE `t_caract_categoria`
  ADD CONSTRAINT `t_caract_cat_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `t_categoria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `t_caract_curso`
--
ALTER TABLE `t_caract_curso`
  ADD CONSTRAINT `fk_curso` FOREIGN KEY (`curso`) REFERENCES `t_curso` (`id`);

--
-- Filtros para la tabla `t_comentario`
--
ALTER TABLE `t_comentario`
  ADD CONSTRAINT `t_comentario_ibfk_1` FOREIGN KEY (`persona`) REFERENCES `t_persona` (`id`);

--
-- Filtros para la tabla `t_curso`
--
ALTER TABLE `t_curso`
  ADD CONSTRAINT `t_curso_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `t_categoria` (`id`),
  ADD CONSTRAINT `t_curso_ibfk_3` FOREIGN KEY (`nivel`) REFERENCES `t_nivel` (`id`);

--
-- Filtros para la tabla `t_detalle_curso`
--
ALTER TABLE `t_detalle_curso`
  ADD CONSTRAINT `fk_t_detalle_curso` FOREIGN KEY (`curso`) REFERENCES `t_detalle_curso` (`id`);

--
-- Filtros para la tabla `t_detalle_involucrados`
--
ALTER TABLE `t_detalle_involucrados`
  ADD CONSTRAINT `t_detalle_involucrados_ibfk_1` FOREIGN KEY (`persona`) REFERENCES `t_persona` (`id`);

--
-- Filtros para la tabla `t_expediente_general`
--
ALTER TABLE `t_expediente_general`
  ADD CONSTRAINT `t_expediente_general_ibfk_1` FOREIGN KEY (`persona`) REFERENCES `t_persona` (`id`),
  ADD CONSTRAINT `t_expediente_general_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `t_curso` (`id`),
  ADD CONSTRAINT `t_expediente_general_ibfk_3` FOREIGN KEY (`estado`) REFERENCES `t_estado_matricula` (`id`);

--
-- Filtros para la tabla `t_expediente_retiro_titulo`
--
ALTER TABLE `t_expediente_retiro_titulo`
  ADD CONSTRAINT `t_expediente_retiro_titulo_ibfk_1` FOREIGN KEY (`persona_origen`) REFERENCES `t_persona` (`id`),
  ADD CONSTRAINT `t_expediente_retiro_titulo_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `t_curso` (`id`);

--
-- Filtros para la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD CONSTRAINT `t_persona_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `t_rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
