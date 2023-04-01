SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `tb_bodegas` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_ciudades` (
  `id` bigint(20) NOT NULL,
  `cod_departamento` bigint(20) NOT NULL,
  `nombre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_clientes` (
  `id` bigint(20) NOT NULL,
  `documento` bigint(20) NOT NULL,
  `nombres` int(11) NOT NULL,
  `apellidos` int(11) NOT NULL,
  `cod_ciudad` bigint(20) NOT NULL,
  `correo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_departamentos` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_direcciones_empleados` (
  `id` bigint(20) NOT NULL,
  `cod_empleado` bigint(20) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_direcciones_proveedores` (
  `id` bigint(20) NOT NULL,
  `cod_proveedor` bigint(20) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_documentos_proveedores` (
  `id` bigint(20) NOT NULL,
  `cod_proveedor` bigint(20) NOT NULL,
  `url_ubicacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_empleados` (
  `id` bigint(20) NOT NULL,
  `documento` bigint(20) NOT NULL,
  `cod_ciudad` bigint(20) NOT NULL,
  `cod_grupo` bigint(20) NOT NULL,
  `nombres` varchar(20) NOT NULL,
  `apelldios` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_facturas` (
  `id` bigint(20) NOT NULL,
  `doc_cliente` bigint(20) NOT NULL,
  `doc_forma_pago` bigint(20) NOT NULL,
  `cod_vendedor` bigint(20) NOT NULL,
  `total` int(11) NOT NULL,
  `total_antes_iva` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_formas_pago` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_grupos_empleados` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_ingresos_productos` (
  `id` bigint(20) NOT NULL,
  `cod_producto` bigint(20) NOT NULL,
  `cod_bodega` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_lineas_factura` (
  `id` bigint(20) NOT NULL,
  `cod_factura` bigint(20) NOT NULL,
  `cod_producto` bigint(20) NOT NULL,
  `cod_bodega` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_productos` (
  `id` bigint(20) NOT NULL,
  `proveedor` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_proveedores` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `nit` varchar(12) NOT NULL,
  `rut` int(11) NOT NULL,
  `material` bigint(20) NOT NULL,
  `cod_ciudad` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_salarios_empleados` (
  `id` bigint(20) NOT NULL,
  `cod_empleado` bigint(20) NOT NULL,
  `salario` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_stock_productos` (
  `id` bigint(20) NOT NULL,
  `cod_producto` bigint(20) NOT NULL,
  `cod_bodega` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_telefonos_clientes` (
  `id` bigint(20) NOT NULL,
  `cod_cliente` bigint(20) NOT NULL,
  `telefono` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_telefonos_empleados` (
  `id` bigint(20) NOT NULL,
  `cod_empleado` bigint(20) NOT NULL,
  `celular` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_telefonos_proveedores` (
  `id` bigint(20) NOT NULL,
  `cod_proveedor` bigint(20) NOT NULL,
  `cod_tipo_telefono` bigint(20) NOT NULL,
  `valor` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `tb_tipos_materiales` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `tb_bodegas`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_ciudades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_departamento` (`cod_departamento`);

ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD KEY `cod_ciudad` (`cod_ciudad`);

ALTER TABLE `tb_departamentos`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_direcciones_empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_empleado` (`cod_empleado`);

ALTER TABLE `tb_direcciones_proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_proveedor` (`cod_proveedor`);

ALTER TABLE `tb_documentos_proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_proveedor` (`cod_proveedor`);

ALTER TABLE `tb_empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `documento` (`documento`),
  ADD KEY `cod_ciudad` (`cod_ciudad`),
  ADD KEY `cod_grupo` (`cod_grupo`);

ALTER TABLE `tb_facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doc_cliente` (`doc_cliente`),
  ADD KEY `doc_forma_pago` (`doc_forma_pago`),
  ADD KEY `cod_vendedor` (`cod_vendedor`);

ALTER TABLE `tb_formas_pago`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_grupos_empleados`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_ingresos_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_producto` (`cod_producto`),
  ADD KEY `cod_bodega` (`cod_bodega`);

ALTER TABLE `tb_lineas_factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_producto` (`cod_producto`),
  ADD KEY `cod_factura` (`cod_factura`),
  ADD KEY `cod_bodega` (`cod_bodega`);

ALTER TABLE `tb_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proveedor` (`proveedor`);

ALTER TABLE `tb_proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material` (`material`),
  ADD KEY `cod_ciudad` (`cod_ciudad`);

ALTER TABLE `tb_salarios_empleados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cod_empleado` (`cod_empleado`);

ALTER TABLE `tb_stock_productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_producto` (`cod_producto`),
  ADD KEY `cod_bodega` (`cod_bodega`);

ALTER TABLE `tb_telefonos_clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_cliente` (`cod_cliente`);

ALTER TABLE `tb_telefonos_empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_empleado` (`cod_empleado`);

ALTER TABLE `tb_telefonos_proveedores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cod_proveedor` (`cod_proveedor`),
  ADD KEY `cod_tipo_telefono` (`cod_tipo_telefono`);

ALTER TABLE `tb_tipos_materiales`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tb_bodegas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_ciudades`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_departamentos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_direcciones_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_direcciones_proveedores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_documentos_proveedores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_facturas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_formas_pago`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_grupos_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_ingresos_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_lineas_factura`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_proveedores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_salarios_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_stock_productos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_telefonos_clientes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_telefonos_empleados`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_telefonos_proveedores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

ALTER TABLE `tb_tipos_materiales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;


ALTER TABLE `tb_ciudades`
  ADD CONSTRAINT `tb_ciudades_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `tb_departamentos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_clientes`
  ADD CONSTRAINT `tb_clientes_ibfk_1` FOREIGN KEY (`cod_ciudad`) REFERENCES `tb_ciudades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_direcciones_empleados`
  ADD CONSTRAINT `tb_direcciones_empleados_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `tb_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_direcciones_proveedores`
  ADD CONSTRAINT `tb_direcciones_proveedores_ibfk_1` FOREIGN KEY (`cod_proveedor`) REFERENCES `tb_proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_documentos_proveedores`
  ADD CONSTRAINT `tb_documentos_proveedores_ibfk_1` FOREIGN KEY (`cod_proveedor`) REFERENCES `tb_proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_empleados`
  ADD CONSTRAINT `tb_empleados_ibfk_1` FOREIGN KEY (`cod_ciudad`) REFERENCES `tb_ciudades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_empleados_ibfk_2` FOREIGN KEY (`cod_grupo`) REFERENCES `tb_grupos_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_facturas`
  ADD CONSTRAINT `tb_facturas_ibfk_1` FOREIGN KEY (`doc_cliente`) REFERENCES `tb_clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_facturas_ibfk_2` FOREIGN KEY (`doc_forma_pago`) REFERENCES `tb_formas_pago` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_facturas_ibfk_3` FOREIGN KEY (`cod_vendedor`) REFERENCES `tb_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_ingresos_productos`
  ADD CONSTRAINT `tb_ingresos_productos_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `tb_productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_ingresos_productos_ibfk_2` FOREIGN KEY (`cod_bodega`) REFERENCES `tb_bodegas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_lineas_factura`
  ADD CONSTRAINT `tb_lineas_factura_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tb_facturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_lineas_factura_ibfk_2` FOREIGN KEY (`cod_producto`) REFERENCES `tb_productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_lineas_factura_ibfk_3` FOREIGN KEY (`cod_bodega`) REFERENCES `tb_bodegas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_productos`
  ADD CONSTRAINT `tb_productos_ibfk_1` FOREIGN KEY (`proveedor`) REFERENCES `tb_proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_proveedores`
  ADD CONSTRAINT `tb_proveedores_ibfk_1` FOREIGN KEY (`cod_ciudad`) REFERENCES `tb_ciudades` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_proveedores_ibfk_2` FOREIGN KEY (`material`) REFERENCES `tb_tipos_materiales` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_salarios_empleados`
  ADD CONSTRAINT `tb_salarios_empleados_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `tb_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_stock_productos`
  ADD CONSTRAINT `tb_stock_productos_ibfk_1` FOREIGN KEY (`cod_producto`) REFERENCES `tb_productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_stock_productos_ibfk_2` FOREIGN KEY (`cod_bodega`) REFERENCES `tb_bodegas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_telefonos_clientes`
  ADD CONSTRAINT `tb_telefonos_clientes_ibfk_1` FOREIGN KEY (`cod_cliente`) REFERENCES `tb_clientes` (`documento`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_telefonos_empleados`
  ADD CONSTRAINT `tb_telefonos_empleados_ibfk_1` FOREIGN KEY (`cod_empleado`) REFERENCES `tb_empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `tb_telefonos_proveedores`
  ADD CONSTRAINT `tb_telefonos_proveedores_ibfk_1` FOREIGN KEY (`cod_proveedor`) REFERENCES `tb_proveedores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
