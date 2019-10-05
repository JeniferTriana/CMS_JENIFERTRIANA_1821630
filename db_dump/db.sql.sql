-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2019 a las 19:00:14
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms_ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publications`
--

CREATE TABLE `publications` (
  `id_p` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publications`
--

INSERT INTO `publications` (`id_p`, `title`, `description`, `image`) VALUES
(13, 'Sostenibilidad medioambiental ', 'En la presente edición se examina la sostenibilidad medioambiental en el ámbito laboral. Se hace hincapié en la repercusión del cambio climático y de la degradación medioambiental en los mercados de trabajo, en particular respecto de la cantidad y la calidad del empleo, y se realizan estimaciones sobre los cambios laborales previstos por sector, así como a nivel intersectorial.', 0x6173736574732f696d67732f68697065727465787475616c2d65737461732d736f6e2d696d6167656e65732d7175652d73652d6a756567616e2d7072656d696f2d6d656a6f722d617374726f666f746f677261666f2d616e6f2d32303139353330393636202832292e6a7067),
(15, '100 años de protección de la maternidad', 'El año 2019 marca, ambos, el primer centenario de la OIT y el centésimo aniversario de las normas internacionales del trabajo sobre la protección de la maternidad. El Convenio sobre la protección de la maternidad, 1919 (núm.3) , que es la primera norma internacional del trabajo sobre la igualdad de género, fue adoptado durante la primera Conferencia Internacional del Trabajo (CIT) en noviembre de 1919. El Convenio reconoció el derecho a la licencia de maternidad pagada y con garantía de conserva', 0x6173736574732f696d67732f70617465726e696461642079206d617465726e696461642e6a7067),
(16, 'Cuarta reunión del Comité ', 'La cuarta reunión del Comité Tripartito Especial establecido por el Consejo de Administración en virtud del artículo XIII del Convenio sobre el trabajo marítimo, 2006, en su versión enmendada (MLC, 2006) tendrá lugar en la OIT en Ginebra del 21 al 23 de abril de 2021.', 0x6173736574732f696d67732f5a464e5a595858324c4e444d4849334b55554b474732374745342e6a7067),
(17, 'Foro de diálogo', 'La finalidad del Foro de diálogo mundial es examinar las cuestiones actuales y emergentes relativas a la promoción del trabajo decente en el mundo del deporte, con miras a la adopción de puntos de consenso, incluidas recomendaciones relativas a las actividades futuras de la OIT y sus Miembros.', 0x6173736574732f696d67732f64657363617267612e6a7067),
(20, 'Lanzamiento del informe', 'GINEBRA (Noticias de la OIT) – La OIT celebrará su centenario en 2019 con una serie de eventos mundiales, regionales y nacionales. El 22 de enero de 2019 comenzarán oficialmente las celebraciones “OIT100”, con el lanzamiento del informe de la Comisión Mundial de la OIT sobre el Futuro del Trabajo  en Ginebra.  El informe representa la culminación de un proceso que comenzó en 2015 con el Informe del Director General sobre la Iniciativa del Centenario relativa al Futuro del Trabajo  en la Conferencia Internacional del Trabajo, seguido de una serie de diálogos entre los Estados miembros de la OIT.', 0x6173736574732f696d67732f6765747479696d616765732d3437323336353033392d363132783631322e6a7067);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regis`
--

CREATE TABLE `regis` (
  `id_r` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(10) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `Nombre`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rol_id` int(10) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `rol_id`) VALUES
(1, 'Pedr', 'pedro@gmail.com', '$2y$10$OrF06DOMmnR0XTMZM/C9RORbh05qW7ch/BOQiQgMPqnEzrEJdrJDq', 2),
(2, 'lola', 'lola@gmail.com', '$2y$10$uAhJdTIP6hylKryZgq9dZ.ceU5jg6shPk1JooSxVeiRW3HIOPoqWC', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `publications`
--
ALTER TABLE `publications`
  ADD PRIMARY KEY (`id_p`);

--
-- Indices de la tabla `regis`
--
ALTER TABLE `regis`
  ADD PRIMARY KEY (`id_r`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rol_id` (`rol_id`),
  ADD KEY `rol_id_2` (`rol_id`),
  ADD KEY `rol_id_3` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `publications`
--
ALTER TABLE `publications`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `regis`
--
ALTER TABLE `regis`
  MODIFY `id_r` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`rol_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
