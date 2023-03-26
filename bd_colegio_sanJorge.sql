SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tb_calificaciones` (
  `id_calificacion` bigint(20) NOT NULL,
  `id_materia` bigint(20) NOT NULL,
  `id_estudiante` bigint(20) NOT NULL,
  `id_periodo` bigint(20) NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_calificaciones` VALUES(1, 23, 19, 10, 4.4);
INSERT INTO `tb_calificaciones` VALUES(2, 24, 19, 10, 3.2);
INSERT INTO `tb_calificaciones` VALUES(3, 23, 18, 10, 5);
INSERT INTO `tb_calificaciones` VALUES(4, 31, 18, 10, 3.5);

CREATE TABLE `tb_cursos` (
  `id` bigint(20) NOT NULL,
  `cod_profesor` bigint(20) NOT NULL,
  `cod_estudiante` bigint(20) NOT NULL,
  `cod_periodo` bigint(20) NOT NULL,
  `cod_grado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_cursos` VALUES(1, 1, 19, 10, 9);
INSERT INTO `tb_cursos` VALUES(2, 1, 17, 10, 9);
INSERT INTO `tb_cursos` VALUES(3, 1, 21, 10, 9);
INSERT INTO `tb_cursos` VALUES(4, 1, 15, 10, 9);
INSERT INTO `tb_cursos` VALUES(7, 1, 20, 10, 9);
INSERT INTO `tb_cursos` VALUES(8, 1, 40, 10, 9);

CREATE TABLE `tb_estudiantes` (
  `cod_estudiante` bigint(20) NOT NULL,
  `identificacion` bigint(20) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_estudiantes` VALUES(12, 14890, 'SEBASTIAN', 'GONZALEZ', '2012-01-01', 1);
INSERT INTO `tb_estudiantes` VALUES(13, 908880, 'XIMENA', 'LOPEZ GUTIERREZ', '2012-01-23', 2);
INSERT INTO `tb_estudiantes` VALUES(14, 908881, 'DIANA MARCELA', 'CAICEDO NUÑEZ', '2012-01-24', 2);
INSERT INTO `tb_estudiantes` VALUES(15, 908882, 'DIEGO FRANCISCO', 'GARAVITO RENDON', '2012-01-25', 1);
INSERT INTO `tb_estudiantes` VALUES(16, 903383, 'STEVEN', 'REALPE', '2012-01-26', 1);
INSERT INTO `tb_estudiantes` VALUES(17, 908884, 'BRIAM', 'MERCADO', '2012-01-27', 1);
INSERT INTO `tb_estudiantes` VALUES(18, 908885, 'YULI ANDREA', 'MELLIZO', '2012-01-28', 1);
INSERT INTO `tb_estudiantes` VALUES(19, 908886, 'ANDRÉS ADOLFO', 'ARAMBURO MUÑOZ', '2012-01-29', 1);
INSERT INTO `tb_estudiantes` VALUES(20, 908887, 'JESSICA FERNANDA', 'RODRIGUEZ LOPEZ', '2012-01-30', 2);
INSERT INTO `tb_estudiantes` VALUES(21, 908888, 'CARMEN', 'ESPINAL VILLAREAL', '2012-01-31', 2);
INSERT INTO `tb_estudiantes` VALUES(31, 908990, 'KEVIN', 'REALPE', '2012-01-31', 1);
INSERT INTO `tb_estudiantes` VALUES(40, 908889, 'JONATHAN', 'PARRA VILLAMIZAR', '2012-01-31', 1);
INSERT INTO `tb_estudiantes` VALUES(51, 908891, 'JULIAN ANDRÉS', 'ESCOBAR CAICEDO', '2012-01-31', 1);

CREATE TABLE `tb_generos` (
  `cod_genero` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_generos` VALUES(1, 'MASCULINO');
INSERT INTO `tb_generos` VALUES(2, 'FEMENINO');

CREATE TABLE `tb_grados` (
  `cod_grado` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_grados` VALUES(1, 'TERCERO');
INSERT INTO `tb_grados` VALUES(2, 'CUARTO');
INSERT INTO `tb_grados` VALUES(3, 'QUINTO');
INSERT INTO `tb_grados` VALUES(4, 'SEXTO');
INSERT INTO `tb_grados` VALUES(5, 'SÉPTIMO');
INSERT INTO `tb_grados` VALUES(6, 'OCTAVO');
INSERT INTO `tb_grados` VALUES(7, 'NOVENO');
INSERT INTO `tb_grados` VALUES(8, 'DÉCIMO');
INSERT INTO `tb_grados` VALUES(9, 'ONCE');

CREATE TABLE `tb_materias` (
  `cod_materia` bigint(20) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_grado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_materias` VALUES(23, 'CÁLCULO', 9);
INSERT INTO `tb_materias` VALUES(24, 'TRIGONOMETRÍA', 9);
INSERT INTO `tb_materias` VALUES(25, 'FÍSICA', 9);
INSERT INTO `tb_materias` VALUES(26, 'FILOSOFÍA', 9);
INSERT INTO `tb_materias` VALUES(28, 'LABORATORIO', 8);
INSERT INTO `tb_materias` VALUES(29, 'QUÍMICA', 9);
INSERT INTO `tb_materias` VALUES(30, 'INGLÉS', 8);
INSERT INTO `tb_materias` VALUES(31, 'ECONOMÍA', 9);
INSERT INTO `tb_materias` VALUES(33, 'ALGEBRA', 9);

CREATE TABLE `tb_materias_grados` (
  `id` bigint(20) NOT NULL,
  `id_materia` bigint(20) NOT NULL,
  `id_grado` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_materias_grados` VALUES(1, 23, 9);
INSERT INTO `tb_materias_grados` VALUES(2, 24, 9);
INSERT INTO `tb_materias_grados` VALUES(3, 25, 9);
INSERT INTO `tb_materias_grados` VALUES(4, 26, 9);
INSERT INTO `tb_materias_grados` VALUES(5, 28, 8);
INSERT INTO `tb_materias_grados` VALUES(6, 29, 9);
INSERT INTO `tb_materias_grados` VALUES(7, 30, 8);
INSERT INTO `tb_materias_grados` VALUES(8, 31, 9);
INSERT INTO `tb_materias_grados` VALUES(9, 33, 9);
INSERT INTO `tb_materias_grados` VALUES(10, 30, 8);
INSERT INTO `tb_materias_grados` VALUES(11, 30, 5);
INSERT INTO `tb_materias_grados` VALUES(12, 29, 8);

CREATE TABLE `tb_materias_profesores` (
  `id` bigint(20) NOT NULL,
  `id_materia` bigint(20) NOT NULL,
  `id_profesor` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_materias_profesores` VALUES(1, 23, 1);
INSERT INTO `tb_materias_profesores` VALUES(2, 24, 6);
INSERT INTO `tb_materias_profesores` VALUES(3, 25, 2);
INSERT INTO `tb_materias_profesores` VALUES(4, 26, 8);
INSERT INTO `tb_materias_profesores` VALUES(5, 29, 4);
INSERT INTO `tb_materias_profesores` VALUES(6, 30, 7);
INSERT INTO `tb_materias_profesores` VALUES(7, 31, 3);
INSERT INTO `tb_materias_profesores` VALUES(8, 33, 1);

CREATE TABLE `tb_periodos` (
  `cod_periodo` bigint(20) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_final` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_periodos` VALUES(1, '2015-01-19', '2015-12-19');
INSERT INTO `tb_periodos` VALUES(2, '2016-01-20', '2016-12-19');
INSERT INTO `tb_periodos` VALUES(3, '2017-01-19', '2017-12-19');
INSERT INTO `tb_periodos` VALUES(4, '2017-01-19', '2017-12-19');
INSERT INTO `tb_periodos` VALUES(5, '2018-01-19', '2018-12-19');
INSERT INTO `tb_periodos` VALUES(6, '2019-12-15', '2019-12-19');
INSERT INTO `tb_periodos` VALUES(7, '2020-01-19', '2020-12-19');
INSERT INTO `tb_periodos` VALUES(8, '2021-01-19', '2021-12-22');
INSERT INTO `tb_periodos` VALUES(9, '2022-01-10', '2022-12-18');
INSERT INTO `tb_periodos` VALUES(10, '2023-01-09', '2023-12-19');

CREATE TABLE `tb_profesores` (
  `cod_profesor` bigint(20) NOT NULL,
  `identificacion` bigint(20) NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `genero` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tb_profesores` VALUES(1, 6394880, 'ALEJANDRO', 'LOPEZ ARANGO', 1);
INSERT INTO `tb_profesores` VALUES(2, 6131888, 'MIGUEL', 'GARCÍA ANGARITA', 1);
INSERT INTO `tb_profesores` VALUES(3, 6358838, 'MARCO', 'CARDONA LOPEZ', 1);
INSERT INTO `tb_profesores` VALUES(4, 6394881, 'RICHARD', 'CASTIBLANCO MUÑOZ', 1);
INSERT INTO `tb_profesores` VALUES(5, 6288331, 'YULIS PATRICIA', 'SANDOVAL PARRA', 2);
INSERT INTO `tb_profesores` VALUES(6, 6380133, 'BEATRIZ', 'NUÑEZ GIRALDO', 2);
INSERT INTO `tb_profesores` VALUES(7, 6380122, 'GLORIA PATRICIA', 'PASTRANA SAMPER', 2);
INSERT INTO `tb_profesores` VALUES(8, 6380129, 'MARIELENA', 'REALPE CERÓN', 2);
INSERT INTO `tb_profesores` VALUES(10, 6380159, 'JUAN PABLO', 'NIÑO RENDÓN', 1);


ALTER TABLE `tb_calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_periodo` (`id_periodo`),
  ADD KEY `id_estudiante` (`id_estudiante`);

ALTER TABLE `tb_cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_estudiante` (`cod_estudiante`),
  ADD KEY `id_profesor` (`cod_profesor`),
  ADD KEY `cod_periodo` (`cod_periodo`),
  ADD KEY `cod_grado` (`cod_grado`);

ALTER TABLE `tb_estudiantes`
  ADD PRIMARY KEY (`cod_estudiante`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `genero` (`genero`);

ALTER TABLE `tb_generos`
  ADD PRIMARY KEY (`cod_genero`);

ALTER TABLE `tb_grados`
  ADD PRIMARY KEY (`cod_grado`);

ALTER TABLE `tb_materias`
  ADD PRIMARY KEY (`cod_materia`),
  ADD KEY `id_grado` (`id_grado`);

ALTER TABLE `tb_materias_grados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_grado` (`id_grado`);

ALTER TABLE `tb_materias_profesores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_profesor_2` (`id_profesor`);

ALTER TABLE `tb_periodos`
  ADD PRIMARY KEY (`cod_periodo`);

ALTER TABLE `tb_profesores`
  ADD PRIMARY KEY (`cod_profesor`),
  ADD UNIQUE KEY `identificacion` (`identificacion`),
  ADD KEY `genero` (`genero`);


ALTER TABLE `tb_calificaciones`
  MODIFY `id_calificacion` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tb_cursos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tb_estudiantes`
  MODIFY `cod_estudiante` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

ALTER TABLE `tb_generos`
  MODIFY `cod_genero` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `tb_grados`
  MODIFY `cod_grado` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tb_materias`
  MODIFY `cod_materia` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `tb_materias_grados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `tb_materias_profesores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `tb_profesores`
  MODIFY `cod_profesor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `tb_calificaciones`
  ADD CONSTRAINT `tb_calificaciones_ibfk_1` FOREIGN KEY (`id_materia`) REFERENCES `tb_materias` (`cod_materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_calificaciones_ibfk_2` FOREIGN KEY (`id_estudiante`) REFERENCES `tb_estudiantes` (`cod_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_calificaciones_ibfk_3` FOREIGN KEY (`id_periodo`) REFERENCES `tb_periodos` (`cod_periodo`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_cursos`
  ADD CONSTRAINT `tb_cursos_ibfk_1` FOREIGN KEY (`cod_profesor`) REFERENCES `tb_profesores` (`cod_profesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_cursos_ibfk_2` FOREIGN KEY (`cod_periodo`) REFERENCES `tb_periodos` (`cod_periodo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_cursos_ibfk_3` FOREIGN KEY (`cod_grado`) REFERENCES `tb_grados` (`cod_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_cursos_ibfk_4` FOREIGN KEY (`cod_estudiante`) REFERENCES `tb_estudiantes` (`cod_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_estudiantes`
  ADD CONSTRAINT `tb_estudiantes_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `tb_generos` (`cod_genero`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_materias`
  ADD CONSTRAINT `tb_materias_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `tb_grados` (`cod_grado`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_materias_grados`
  ADD CONSTRAINT `tb_materias_grados_ibfk_1` FOREIGN KEY (`id_grado`) REFERENCES `tb_grados` (`cod_grado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_materias_grados_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `tb_materias` (`cod_materia`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_materias_profesores`
  ADD CONSTRAINT `tb_materias_profesores_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `tb_profesores` (`cod_profesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_materias_profesores_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `tb_materias` (`cod_materia`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_profesores`
  ADD CONSTRAINT `tb_profesores_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `tb_generos` (`cod_genero`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
