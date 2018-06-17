-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-06-2018 a las 20:37:38
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 7.1.7

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
(2, 'AVENTURA SEGURIDAD Y RESCATE', 'Es proveer la mejor educación de seguridad y rescate disponible para organizaciones o individuos que buscan soluciones efectivas y prácticas para las situaciones de emergencia urbana/salvaje más comunes. A través de instrucción excepcionalmente atractiva y estimulante, aspiramos a proporcionar a todos los participantes una experiencia educativa sin precedentes, entrenándolos para las verdaderas emergencias que pueden enfrentar. ASR-AC ha estado en el negocio por más de 16 años en American Central proporcionando la más reciente información de rescate, capacitación, enfoque práctico y pruebas de equipos para los sectores públicos y privados.', 'It is to provide the best safety and rescue education available to organizations or individuals seeking effective and practical solutions for the most common urban / wild emergency situations. Through exceptionally engaging and stimulating instruction, we aim to provide all participants with an unprecedented educational experience, training them for the true emergencies they may face. ASR-AC has been in business for over 16 years at American Central providing the latest rescue information, training, hands-on approach and equipment testing for the public and private sectors.', 'Nuestra asociación se dedica a todos los aspectos de Conservación Ecológica, Preservación y Protección de los recursos naturales en América Central. La Asociación ha desarrollado un código de conducta para aplicarlo como una Regla / Parte 80 de la Ley Marítima de 1994. Esta Ley ayudará a iniciar el apoyo de las Agencias Gubernamentales para mejorar los altos estándares de conservación ambiental.\r\nComo instructores al aire libre, guías y proveedores de servicios de salud, nuestra experiencia combinada en medicina, rescate y aventura aumentará su oportunidad de aprender más sobre los ríos, el océano y los entornos montañosos que nos rodean a todos. Creemos en un objetivo común, ya sea mejorando las habilidades individuales, desafíos o manteniendo una habilidad necesaria. Estamos aquí para animarle, con el más alto nivel de seguridad y apoyo.', 'Our association is dedicated to all aspects of Ecological Conservation, Preservation and Protection of natural resources in Central America. The Association has developed a code of conduct to apply as a Rule / Part 80 of the Maritime Law of 1994. This Law will help initiate the support of Government Agencies to improve the high standards of environmental conservation.\r\nAs outdoor instructors, guides and health service providers, our combined experience in medicine, rescue and adventure will increase your opportunity to learn more about the rivers, the ocean and the mountainous environments that surround us all. We believe in a common goal, either improving individual skills, challenges or maintaining a necessary skill. We are here to encourage you, with the highest level of security and support.', '85692248', 'aventurasr17@gmail.com', 'ASR. A.C. La historia comenzó en Costa Rica y Panamá proporcionando cursos de Rescate en Aguas Rápidas al sector turístico, desde su inicio hemos crecido por demanda popular, para incluir el rescate técnico de cuerda y la medicina natural en un ambiente tropical. Nuestro enfoque entonces fue dirigido a aquellos que estaban trabajando en y alrededor de ambientes remotos con agua en movimiento. Este progreso se conoce hoy como evaluación y entrenamiento en el nivel de cumplimiento NFPA 1006 para el personal de rescate en Aguas Rápidas. Hoy nuestro enfoque ha ampliado su aplicación para incluir el nivel de conformidad NFPA 1670 dirigido a los \"estándares de operación\" del Organismo para el rescate técnico en América Central.', 'ASR. A.C. The story began in Costa Rica and Panama providing Fast Water Rescue courses to the tourism sector, since its inception we have grown by popular demand, to include technical rope rescue and natural medicine in a tropical environment. Our focus was then directed to those who were working in and around remote environments with moving water. This progress is now known as evaluation and training at the NFPA 1006 compliance level for rescue personnel in Fast Waters. Today our approach has expanded its application to include NFPA 1670 compliance level directed to the Agency\'s \"operating standards\" for the technical rescue in Central America.', 'Rescue 3 International ofrece excelentes cursos de Rescate en Aguas Rapidas y rescate técnico de cuerdas.\r\nRescue 3 es conocido por proporcionar currículo dinámico para el desarrollo constante de nuevas e innovadoras técnicas de rescate, para mejorar las viejas técnicas y para trabajar con los fabricantes para desarrollar equipos para satisfacer las necesidades de los rescatistas. El plan de estudios de Rescue 3 cumple con el estándar NFPA (National Fire and Protection Agency) para el salvamento técnico de agua y cuerdas, conocido como NFPA 1670 y 1006.<br>\r\nProporcionando a los estudiantes experiencia práctica en el mundo real, los cursos de Rescue 3 son intensivos, activos y divertidos.\r\nLos cursos ofrecen a los estudiantes las habilidades y conocimientos para evitar que se conviertan en víctimas, así como maneras seguras y efectivas de realizar rescates. Los estudiantes serán comprometidos y energizados por las manos sobre la naturaleza de los entrenamientos y saldrán preparados para las emergencias en Aguas Rapidas.', 'Rescue 3 International offers excellent courses in Fast Water Rescue and technical rope rescue.\r\nRescue 3 is known for providing dynamic curriculum for the constant development of new and innovative rescue techniques, to improve old techniques and to work with manufacturers to develop equipment to meet the needs of rescuers. The curriculum of Rescue 3 complies with the NFPA (National Fire and Protection Agency) standard for the technical rescue of water and ropes, known as NFPA 1670 and 1006.\r\n\r\nProviding students with hands-on experience in the real world, Rescue 3 courses are intensive, active and fun.\r\nThe courses offer students the skills and knowledge to prevent them from becoming victims, as well as safe and effective ways to perform rescues. The students will be committed and energized by hands on the nature of the training and will be prepared for emergencies in Aguas Rapidas.', 'De lunes a viernes de 9:00am a 4:00 pm', 'Monday through Friday from 9:00 a.m. to 4:00 p.m.', './public/images/imgEmpresa/logos/logoEs11.jpg', './public/images/imgEmpresa/logos/logoIn1.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_empresa`
--
ALTER TABLE `t_empresa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_empresa`
--
ALTER TABLE `t_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
