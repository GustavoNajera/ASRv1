-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2018 a las 05:43:28
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
-- Estructura de tabla para la tabla `t_caract_categoria`
--

CREATE TABLE `t_caract_categoria` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_caract_categoria`
--

INSERT INTO `t_caract_categoria` (`id`, `nombre_es`, `nombre_in`, `categoria`) VALUES
(1, 'Tarda 2 meses en finalizar', 'It takes 2 months to complete', 7),
(2, 'Se especializa en Agua', 'Specializes in Water', 7),
(3, 'Tarda 3 meses en finalizar', ' It takes 3 months to complete', 6),
(4, 'Se especializa en cuerdas', 'Se especializa en cuerdas', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categoria`
--

CREATE TABLE `t_categoria` (
  `id` int(11) NOT NULL,
  `nombre_es` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `nombre_in` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_categoria`
--

INSERT INTO `t_categoria` (`id`, `nombre_es`, `nombre_in`) VALUES
(6, 'Cuerdas Español', 'Cuerdas Inglés'),
(7, 'Agua Español', 'Agua Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_comentario`
--

CREATE TABLE `t_comentario` (
  `id` int(11) NOT NULL,
  `comentario` text COLLATE utf8_bin,
  `persona` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
  `nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_curso`
--

INSERT INTO `t_curso` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`, `resumen_es`, `resumen_in`, `pre_requisitos_es`, `pre_requisitos_in`, `activo`, `categoria`, `nivel`) VALUES
(2, 'Curso de Cuerdas Costa Rica', ' Course of Strings Costa Rica', 'Descripción en Español del curso', 'Descripción en Inglés del curso', 'El resumen del curso es como la descripción pero mas corta', 'Este es el mismo resumen anterior pero en inglés', 'Formar parte de la empresa que contrata los servicios de ASR, Tener mas de 18 años.', 'Los mismos requisitos antes mencionados pero en inglés', 1, 6, 5);

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
(2, 'ASR', 'Mision de la empresa ASR en español', 'Misión de la empresa ASR en inglés', 'Visión en español', 'Visioón de la empresa ASR en inglés', '91054489', 'asr@gmail.com', 'Historia de la empresa ASR en español', 'Historia de la empresa ASR en Inglés', 'Experiencia de la empresa ASR en español', 'Experiencia de la empresa ASR en Inglés', 'Lunes a Viernes de 8 am a 6 pm', 'Lues a Viernes de 8 am a 6 pm', './public/images/imgEmpresa/logos/espa.png', './public/images/imgEmpresa/logos/Ingles.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_empresa_asociada`
--

CREATE TABLE `t_empresa_asociada` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `descripcion_es` text COLLATE utf8_bin,
  `descripcion_in` text COLLATE utf8_bin,
  `enlace` varchar(300) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_empresa_asociada`
--

INSERT INTO `t_empresa_asociada` (`id`, `nombre`, `descripcion_es`, `descripcion_in`, `enlace`) VALUES
(6, 'OIJ', 'Descripción en español.', 'Descripción en inglés.', 'www.oij.com'),
(7, 'INA', 'Descripción en Español de la empresa asociada INA.', 'Descripción en Inglés de la empresa asociada en INA.', 'www.ina.com');

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
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `t_expediente_general`
--

INSERT INTO `t_expediente_general` (`id`, `fecha_matriculado`, `fecha_finalizado`, `detalle`, `persona`, `curso`, `estado`) VALUES
(3, '2018-03-09', '2018-03-15', 'Se finalizó el curso con éxito, el mejor en su clase.', 16, 2, 7),
(4, '2018-03-08', '0000-00-00', 'Se matriculó el usuario Administrador, sigue sin finalizar el curso', 16, 2, 6);

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

--
-- Volcado de datos para la tabla `t_expediente_retiro_titulo`
--

INSERT INTO `t_expediente_retiro_titulo` (`id`, `fecha_retiro`, `medio_retiro`, `detalle`, `persona_origen`, `curso`) VALUES
(3, '2018-03-08', 'En forma física', 'Se realizó el retiro del título por parte de la mamá del estudiante registrado com Admisnitrador, del curso de cuerdas de Costa Rica', 16, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_img`
--

CREATE TABLE `t_img` (
  `id` int(11) NOT NULL,
  `ruta` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `descripcion` varchar(200) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_img_empresa`
--

CREATE TABLE `t_img_empresa` (
  `empresa` int(11) NOT NULL,
  `img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_img_empresa_asociada`
--

CREATE TABLE `t_img_empresa_asociada` (
  `empresa_asociada` int(11) NOT NULL,
  `img` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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

--
-- Volcado de datos para la tabla `t_info_general_empresa`
--

INSERT INTO `t_info_general_empresa` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`) VALUES
(5, 'País en español', 'País en español', 'Descripción en español de como la empresa llegó al país.', 'Descripción en Inglés de como la empresa llegó al país.'),
(6, 'Especialidad', 'specialty', 'La mayor especialidad de la empresa es el apoyar empresas a crear personal certificado en rescate en diferentes campos ', '\r\nThe main specialty of the company is to support companies to create certified rescue personnel in different fields');

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

--
-- Volcado de datos para la tabla `t_logros`
--

INSERT INTO `t_logros` (`id`, `nombre_es`, `nombre_in`, `descripcion_es`, `descripcion_in`) VALUES
(4, 'Certificación internacional 1', 'International certification 1', 'La certificación internacional 1 es lo mas importante para poder garantizar la calidad de nuestras capacitaciones', 'The international certification 1 is the most important thing to be able to guarantee the quality of our trainings');

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
(5, 'Nivel 1 Español', 'Nivel 1 Español'),
(6, 'Nivel2 Español', 'Nivel 2 Inglés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_palabras`
--

CREATE TABLE `t_palabras` (
  `id` int(11) NOT NULL,
  `palabra_key` varchar(50) COLLATE utf8_bin NOT NULL,
  `vista` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `valor_es` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `valor_in` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
(16, 'Administrador', 'General', '', '208900554', 1, 3, '2018-03-02', 'Costa Rica', 'adm123', './public/images/imgUser/user1.jpg', '51047796', 'adm@gmail.com');

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
(3, 'Adm', 'Adm');

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
-- Indices de la tabla `t_img`
--
ALTER TABLE `t_img`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `t_img_empresa`
--
ALTER TABLE `t_img_empresa`
  ADD KEY `empresa` (`empresa`),
  ADD KEY `img` (`img`);

--
-- Indices de la tabla `t_img_empresa_asociada`
--
ALTER TABLE `t_img_empresa_asociada`
  ADD KEY `empresa_asociada` (`empresa_asociada`),
  ADD KEY `img` (`img`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `t_categoria`
--
ALTER TABLE `t_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `t_comentario`
--
ALTER TABLE `t_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `t_curso`
--
ALTER TABLE `t_curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `t_expediente_retiro_titulo`
--
ALTER TABLE `t_expediente_retiro_titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `t_img`
--
ALTER TABLE `t_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `t_info_general_empresa`
--
ALTER TABLE `t_info_general_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `t_logros`
--
ALTER TABLE `t_logros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `t_nivel`
--
ALTER TABLE `t_nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `t_palabras`
--
ALTER TABLE `t_palabras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `t_persona`
--
ALTER TABLE `t_persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
-- Filtros para la tabla `t_img_empresa`
--
ALTER TABLE `t_img_empresa`
  ADD CONSTRAINT `t_img_empresa_ibfk_1` FOREIGN KEY (`empresa`) REFERENCES `t_empresa` (`id`),
  ADD CONSTRAINT `t_img_empresa_ibfk_2` FOREIGN KEY (`img`) REFERENCES `t_img` (`id`);

--
-- Filtros para la tabla `t_img_empresa_asociada`
--
ALTER TABLE `t_img_empresa_asociada`
  ADD CONSTRAINT `t_img_empresa_asociada_ibfk_1` FOREIGN KEY (`empresa_asociada`) REFERENCES `t_empresa_asociada` (`id`),
  ADD CONSTRAINT `t_img_empresa_asociada_ibfk_2` FOREIGN KEY (`img`) REFERENCES `t_img` (`id`);

--
-- Filtros para la tabla `t_persona`
--
ALTER TABLE `t_persona`
  ADD CONSTRAINT `t_persona_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `t_rol` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
