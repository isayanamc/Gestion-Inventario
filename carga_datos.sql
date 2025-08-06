BEGIN
    INSERT INTO Categoria (nombre) VALUES ('Electrónica');
    INSERT INTO Categoria (nombre) VALUES ('Ropa');
    INSERT INTO Categoria (nombre) VALUES ('Alimentos');
    INSERT INTO Categoria (nombre) VALUES ('Hogar');
    INSERT INTO Categoria (nombre) VALUES ('Juguetes');
    INSERT INTO Categoria (nombre) VALUES ('Deportes');
    INSERT INTO Categoria (nombre) VALUES ('Libros');
    INSERT INTO Categoria (nombre) VALUES ('Muebles');
    INSERT INTO Categoria (nombre) VALUES ('Herramientas');
    INSERT INTO Categoria (nombre) VALUES ('Jardinería');
    INSERT INTO Categoria (nombre) VALUES ('Automotriz');
    INSERT INTO Categoria (nombre) VALUES ('Belleza');
    INSERT INTO Categoria (nombre) VALUES ('Salud');
    INSERT INTO Categoria (nombre) VALUES ('Mascotas');
    INSERT INTO Categoria (nombre) VALUES ('Oficina');
    INSERT INTO Categoria (nombre) VALUES ('Arte');
    INSERT INTO Categoria (nombre) VALUES ('Música');
    INSERT INTO Categoria (nombre) VALUES ('Películas');
    INSERT INTO Categoria (nombre) VALUES ('Software');
    INSERT INTO Categoria (nombre) VALUES ('Hardware');
    COMMIT;
END;
/


BEGIN
    INSERT INTO Fabricante (nombre) VALUES ('TechCorp');
    INSERT INTO Fabricante (nombre) VALUES ('FashionCo');
    INSERT INTO Fabricante (nombre) VALUES ('FoodGiant');
    INSERT INTO Fabricante (nombre) VALUES ('HomeEssentials');
    INSERT INTO Fabricante (nombre) VALUES ('PlayTime');
    INSERT INTO Fabricante (nombre) VALUES ('SportGear');
    INSERT INTO Fabricante (nombre) VALUES ('BookWorm');
    INSERT INTO Fabricante (nombre) VALUES ('ComfortLiving');
    INSERT INTO Fabricante (nombre) VALUES ('ToolMaster');
    INSERT INTO Fabricante (nombre) VALUES ('GreenThumb');
    INSERT INTO Fabricante (nombre) VALUES ('AutoParts');
    INSERT INTO Fabricante (nombre) VALUES ('BeautyPlus');
    INSERT INTO Fabricante (nombre) VALUES ('HealthFirst');
    INSERT INTO Fabricante (nombre) VALUES ('PetPal');
    INSERT INTO Fabricante (nombre) VALUES ('OfficePro');
    INSERT INTO Fabricante (nombre) VALUES ('ArtisticTouch');
    INSERT INTO Fabricante (nombre) VALUES ('SoundWave');
    INSERT INTO Fabricante (nombre) VALUES ('CinemaMagic');
    INSERT INTO Fabricante (nombre) VALUES ('CodeCrafters');
    INSERT INTO Fabricante (nombre) VALUES ('CircuitWorks');
    COMMIT;
END;
/


BEGIN
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-123456', 'Distribuidora Central S.A.', 'Calle 1, Av 2', 'San Pedro', '2234-5678', 'info@distcentral.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-234567', 'Suministros Globales Ltda.', 'Av 5, Calle 10', 'Curridabat', '2289-0123', 'ventas@suminglobal.net', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-345678', 'Comercializadora del Este', 'Ruta 32, Km 5', 'Goicoechea', '2256-7890', 'contacto@comercialeste.com', 'Inactivo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-456789', 'Importaciones Pura Vida', 'Barrio Escalante', 'San Jose', '2222-3344', 'sales@puravida.cr', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-567890', 'TecnoAbastecimiento S.A.', 'Zona Industrial', 'Heredia', '2678-9012', 'soporte@tecnoabaste.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-678901', 'Logística del Norte', 'Frente al Parque', 'Alajuela', '2432-1098', 'logistica@norte.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-789012', 'Soluciones Integrales CR', 'Centro Comercial', 'Cartago', '2550-1122', 'info@solucionescr.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-890123', 'Distribuciones del Sur', 'Carretera Interamericana', 'Perez Zeledon', '2771-3344', 'ventas@distrisur.com', 'Inactivo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-901234', 'Abastecimiento Rápido', 'Calle Principal', 'Liberia', '2666-5566', 'rapido@abastece.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-012345', 'Grupo Mayorista', 'Bodegas del Este', 'Limón', '2798-7788', 'contacto@grupomayorista.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-112233', 'Proveedores Unidos', 'Diagonal a la iglesia', 'San Isidro', '2770-9988', 'unidos@proveedores.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-223344', 'Comercio Eficaz', 'Contiguo al banco', 'Puntarenas', '2661-0011', 'eficaz@comercio.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-334455', 'Suministros del Valle', 'Finca #5', 'Orotina', '2428-1234', 'valle@suministros.com', 'Inactivo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-445566', 'Distribuciones Costarricenses', 'Centro Urbano', 'Nicoya', '2685-6789', 'cr@distribuciones.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-556677', 'Logística Verde', 'Parque Industrial', 'Grecia', '2494-0099', 'verde@logistica.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-667788', 'Abastecedores del Pacífico', 'Playa Hermosa', 'Jaco', '2643-1122', 'pacifico@abastece.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-778899', 'Comercializadora del Centro', 'Avenida Central', 'San Jose', '2200-1100', 'centro@comercial.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-889900', 'Proveeduría Nacional', 'Barrio Lujan', 'San Jose', '2211-2211', 'nacional@provee.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-990011', 'Suministros del Atlántico', 'Puerto Viejo', 'Limón', '2750-3344', 'atlantico@suministros.com', 'Activo');
    INSERT INTO Proveedor (cedula_juridica, nombre, direccion, distrito, telefono, correo, estado) VALUES ('3-101-001122', 'Distribuciones del Valle Central', 'San Rafael', 'Heredia', '2260-5566', 'vallecentral@distribuye.com', 'Activo');
    COMMIT;
END;
/


BEGIN
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Juan Pérez', 'Calle 10, Av 12', 'San Sebastian', '8888-1111', 'juan.perez@email.com', TO_DATE('1990-05-15', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Maria Rodriguez', 'Av Central, Casa #5', 'Moravia', '7777-2222', 'maria.r@email.com', TO_DATE('1985-11-20', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Carlos Gómez', 'Residencial Los Robles', 'Desamparados', '6666-3333', 'carlos.g@email.com', TO_DATE('1992-03-01', 'YYYY-MM-DD'), 'inactivo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Ana López', 'Condominio Las Flores', 'Escazu', '5555-4444', 'ana.lopez@email.com', TO_DATE('1978-08-25', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Pedro Ramirez', 'Barrio Cuba, Casa #10', 'San Jose', '4444-5555', 'pedro.r@email.com', TO_DATE('1995-01-10', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Laura Fernández', 'Paseo Colón, Edificio A', 'San Jose', '3333-6666', 'laura.f@email.com', TO_DATE('1980-07-07', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Diego Soto', 'Urbanización El Bosque', 'Tres Rios', '2222-7777', 'diego.s@email.com', TO_DATE('1998-04-18', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Sofia Vargas', 'Calle de la Amargura', 'San Pedro', '1111-8888', 'sofia.v@email.com', TO_DATE('1991-09-30', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Gabriel Castro', 'Avenida Escazú', 'Escazu', '9999-0000', 'gabriel.c@email.com', TO_DATE('1983-02-14', 'YYYY-MM-DD'), 'inactivo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Valeria Herrera', 'Barrio Dent', 'San Pedro', '0000-1111', 'valeria.h@email.com', TO_DATE('1993-12-05', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Ricardo Mora', 'La Sabana', 'San Jose', '1234-5678', 'ricardo.m@email.com', TO_DATE('1975-06-22', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Elena Solano', 'Rohrmoser', 'Pavas', '8765-4321', 'elena.s@email.com', TO_DATE('1988-10-10', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Andres Rojas', 'Santa Ana Centro', 'Santa Ana', '9876-5432', 'andres.r@email.com', TO_DATE('1996-01-01', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Mariana Blanco', 'Ciudad Colón', 'Mora', '6543-2109', 'mariana.b@email.com', TO_DATE('1982-04-04', 'YYYY-MM-DD'), 'inactivo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Fernando Ruiz', 'San Antonio de Belen', 'Belen', '3456-7890', 'fernando.r@email.com', TO_DATE('1970-11-11', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Camila Soto', 'Heredia Centro', 'Heredia', '2345-6789', 'camila.s@email.com', TO_DATE('1994-03-20', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Pablo Quesada', 'Alajuela Centro', 'Alajuela', '1098-7654', 'pablo.q@email.com', TO_DATE('1987-07-17', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Isabella Jimenez', 'Cartago Centro', 'Cartago', '5678-9012', 'isabella.j@email.com', TO_DATE('1999-08-08', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Lucas Salazar', 'Liberia Centro', 'Liberia', '9012-3456', 'lucas.s@email.com', TO_DATE('1981-02-28', 'YYYY-MM-DD'), 'activo');
    INSERT INTO Cliente (nombre, direccion, distrito, telefono, correo, fecha_nacimiento, estado) VALUES ('Daniela Quirós', 'Puntarenas Centro', 'Puntarenas', '7890-1234', 'daniela.q@email.com', TO_DATE('1997-05-05', 'YYYY-MM-DD'), 'activo');
    COMMIT;
END;
/


BEGIN
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Principal', 'San Jose, Centro');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Sucursal Este', 'Curridabat, Plaza del Sol');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Bodega Central', 'Alajuela, Zona Franca');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Heredia', 'Heredia, Paseo de las Flores');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Sucursal Oeste', 'Escazu, Multiplaza');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Punto de Venta Cartago', 'Cartago, Metrocentro');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Almacén Liberia', 'Liberia, Centro Comercial');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Puntarenas', 'Puntarenas, Paseo de los Turistas');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Sucursal Limón', 'Limón, Puerto Viejo');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Oficina Central', 'San Jose, Torre Mercedes');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Sur', 'Perez Zeledon, San Isidro');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Punto de Recogida', 'La Uruca, Bodega #3');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Express', 'San Pedro, Calle de la Amargura');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Centro de Distribución', 'Grecia, Zona Industrial');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Local Virtual', 'Online');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Tienda Outlet', 'Alajuela, City Mall');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Sucursal Norte', 'San Carlos, Ciudad Quesada');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Mini Tienda', 'Goicoechea, Guadalupe');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Showroom', 'Escazu, Avenida Escazu');
    INSERT INTO Local (nombre, ubicacion) VALUES ('Centro de Servicio', 'San Jose, La Uruca');
    COMMIT;
END;
/


BEGIN
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Smartphone X', 'Teléfono inteligente de última generación', 799.99, 1, 1);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Camiseta Algodón', 'Camiseta básica de algodón 100%', 19.99, 2, 2);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Arroz Grano Oro 5kg', 'Arroz blanco de alta calidad', 8.50, 3, 3);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Set Ollas Acero Inox', 'Juego de 5 ollas de acero inoxidable', 120.00, 4, 4);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Muñeca Princesa', 'Muñeca articulada con accesorios', 35.00, 5, 5);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Balón de Fútbol Pro', 'Balón oficial de fútbol profesional', 45.00, 6, 6);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('El Señor de los Anillos', 'Novela de fantasía épica', 25.00, 7, 7);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Silla Ergonómica', 'Silla de oficina con soporte lumbar', 180.00, 8, 8);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Taladro Inalámbrico', 'Taladro de impacto con batería recargable', 95.00, 9, 9);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Manguera de Jardín 20m', 'Manguera reforzada para riego', 30.00, 10, 10);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Aceite Motor Sintético', 'Aceite 5W-30 para motores modernos', 15.00, 11, 11);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Crema Hidratante Facial', 'Crema antiedad con ácido hialurónico', 40.00, 12, 12);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Vitaminas Multivitamínicas', 'Suplemento diario con vitaminas y minerales', 22.00, 13, 13);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Alimento para Perros 10kg', 'Comida seca premium para perros adultos', 50.00, 14, 14);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Resma Papel Bond', '500 hojas de papel tamaño carta', 7.50, 15, 15);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Laptop Ultrabook', 'Portátil ligero y potente', 1199.99, 1, 1);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Jeans Slim Fit', 'Pantalones vaqueros ajustados', 49.99, 2, 2);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Leche Entera 1L', 'Leche pasteurizada y homogeneizada', 2.00, 3, 3);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Licuadora Potente', 'Licuadora de alta velocidad para batidos', 70.00, 4, 4);
    INSERT INTO Producto (nombre, descripcion, precio, id_categoria, id_fabricante) VALUES ('Kit de Construcción LEGO', 'Set de bloques de construcción', 60.00, 5, 5);
    COMMIT;
END;
/


BEGIN
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-01-10', 'YYYY-MM-DD'), 1);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-01-15', 'YYYY-MM-DD'), 2);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-01-20', 'YYYY-MM-DD'), 4);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-02-01', 'YYYY-MM-DD'), 5);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-02-05', 'YYYY-MM-DD'), 6);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-02-10', 'YYYY-MM-DD'), 7);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-02-15', 'YYYY-MM-DD'), 9);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-03-01', 'YYYY-MM-DD'), 10);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-03-05', 'YYYY-MM-DD'), 11);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-03-10', 'YYYY-MM-DD'), 12);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-03-15', 'YYYY-MM-DD'), 14);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-04-01', 'YYYY-MM-DD'), 15);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-04-05', 'YYYY-MM-DD'), 16);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-04-10', 'YYYY-MM-DD'), 17);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-04-15', 'YYYY-MM-DD'), 18);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-05-05', 'YYYY-MM-DD'), 2);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-05-10', 'YYYY-MM-DD'), 4);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-05-15', 'YYYY-MM-DD'), 5);
    INSERT INTO Compra (fecha_compra, id_proveedor) VALUES (TO_DATE('2023-06-01', 'YYYY-MM-DD'), 6);
    COMMIT;
END;
/


BEGIN
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-01-12', 'YYYY-MM-DD'), 1);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-01-18', 'YYYY-MM-DD'), 2);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-01-25', 'YYYY-MM-DD'), 4);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-02-03', 'YYYY-MM-DD'), 5);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-02-08', 'YYYY-MM-DD'), 6);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-02-12', 'YYYY-MM-DD'), 7);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-02-18', 'YYYY-MM-DD'), 8);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-03-03', 'YYYY-MM-DD'), 10);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-03-08', 'YYYY-MM-DD'), 11);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-03-12', 'YYYY-MM-DD'), 12);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-03-18', 'YYYY-MM-DD'), 14);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-04-03', 'YYYY-MM-DD'), 15);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-04-08', 'YYYY-MM-DD'), 16);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-04-12', 'YYYY-MM-DD'), 17);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-04-18', 'YYYY-MM-DD'), 18);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-05-03', 'YYYY-MM-DD'), 1);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-05-08', 'YYYY-MM-DD'), 2);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-05-12', 'YYYY-MM-DD'), 4);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-05-18', 'YYYY-MM-DD'), 5);
    INSERT INTO Venta (fecha_venta, id_cliente) VALUES (TO_DATE('2023-06-03', 'YYYY-MM-DD'), 6);
    COMMIT;
END;
/


BEGIN
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (1, 'SN-SMART-001', 1, 'Disponible', TO_DATE('2023-01-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (1, 'SN-SMART-002', 1, 'Disponible', TO_DATE('2023-01-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (2, 'SN-CAMI-001', 2, 'Disponible', TO_DATE('2023-01-16', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (3, 'SN-ARROZ-001', 3, 'Disponible', TO_DATE('2023-01-21', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (4, 'SN-OLLAS-001', 1, 'Disponible', TO_DATE('2023-02-02', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (5, 'SN-MUNE-001', 2, 'Disponible', TO_DATE('2023-02-06', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (6, 'SN-BALON-001', 1, 'Disponible', TO_DATE('2023-02-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (7, 'SN-LIBRO-001', 4, 'Disponible', TO_DATE('2023-02-16', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (8, 'SN-SILLA-001', 1, 'Disponible', TO_DATE('2023-03-02', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (9, 'SN-TALADRO-001', 5, 'Disponible', TO_DATE('2023-03-06', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (10, 'SN-MANGUERA-001', 1, 'Disponible', TO_DATE('2023-03-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (11, 'SN-ACEITE-001', 3, 'Disponible', TO_DATE('2023-03-16', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (12, 'SN-CREMA-001', 2, 'Disponible', TO_DATE('2023-04-02', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (13, 'SN-VITAM-001', 1, 'Disponible', TO_DATE('2023-04-06', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (14, 'SN-ALIPERRO-001', 3, 'Disponible', TO_DATE('2023-04-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (15, 'SN-PAPEL-001', 5, 'Disponible', TO_DATE('2023-04-16', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (1, 'SN-SMART-003', 1, 'Vendido', TO_DATE('2023-01-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (1, 'SN-SMART-004', 1, 'Dañado', TO_DATE('2023-01-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (16, 'SN-LAPTOP-001', 1, 'Disponible', TO_DATE('2023-05-02', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (17, 'SN-JEANS-001', 2, 'Disponible', TO_DATE('2023-05-06', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (18, 'SN-LECHE-001', 3, 'Disponible', TO_DATE('2023-05-11', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (19, 'SN-LICUA-001', 1, 'Disponible', TO_DATE('2023-05-16', 'YYYY-MM-DD'));
    INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso) VALUES (20, 'SN-LEGO-001', 2, 'Disponible', TO_DATE('2023-06-01', 'YYYY-MM-DD'));
    COMMIT;
END;
/


BEGIN
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (1, 1);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (1, 5);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (2, 2);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (3, 3);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (4, 4);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (5, 5);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (6, 6);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (7, 7);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (8, 8);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (9, 9);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (10, 10);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (11, 11);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (12, 12);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (13, 13);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (14, 14);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (15, 15);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (16, 1);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (17, 2);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (18, 3);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (19, 4);
    INSERT INTO Producto_Proveedor (id_producto, id_proveedor) VALUES (20, 5);
    COMMIT;
END;
/


BEGIN
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (1, 1, 10, 750.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (1, 4, 5, 100.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (2, 2, 50, 15.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (3, 3, 100, 7.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (4, 5, 20, 30.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (5, 6, 10, 40.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (6, 7, 30, 20.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (7, 8, 5, 160.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (8, 9, 15, 80.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (9, 10, 25, 25.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (10, 11, 40, 12.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (11, 12, 20, 35.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (12, 13, 30, 18.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (13, 14, 10, 45.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (14, 15, 50, 6.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (15, 16, 5, 1100.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (16, 17, 30, 40.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (17, 18, 80, 1.50);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (18, 19, 15, 60.00);
    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario) VALUES (19, 20, 10, 50.00);
    COMMIT;
END;
/


BEGIN
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (1, 1, 799.99);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (1, 4, 120.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (2, 3, 19.99);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (3, 4, 8.50);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (3, 3, 8.50);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (4, 5, 35.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (5, 6, 45.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (6, 7, 25.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (7, 8, 180.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (8, 9, 95.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (9, 10, 30.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (10, 11, 15.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (11, 12, 40.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (12, 13, 22.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (13, 14, 50.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (14, 15, 7.50);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (15, 16, 1199.99);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (16, 17, 49.99);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (17, 18, 2.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (18, 19, 70.00);
    INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta) VALUES (19, 20, 60.00);
    COMMIT;
END;
/


DECLARE
    CURSOR c_proveedores IS
        SELECT id_proveedor, cedula_juridica
        FROM Proveedor
        ORDER BY id_proveedor;


    v_id_proveedor Proveedor.id_proveedor%TYPE;
    v_cedula_juridica Proveedor.cedula_juridica%TYPE;
    v_n_compras NUMBER;
    v_fecha_compra Compra.fecha_compra%TYPE;
    v_id_compra Compra.id_compra%TYPE;
    v_m_detalles NUMBER;
    v_id_producto Producto.id_producto%TYPE;
    v_cantidad NUMBER;
    v_precio_referencia Producto.precio%TYPE;
    v_costo_unitario Detalle_Compra.costo_unitario%TYPE;
    v_id_local Local.id_local%TYPE;
    v_numero_serie Inventario.numero_serie%TYPE;


    FUNCTION get_random_local_id RETURN NUMBER IS
        v_local_id NUMBER;
    BEGIN
        SELECT id_local INTO v_local_id
        FROM (SELECT id_local FROM Local ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;
        RETURN v_local_id;
    END;


    FUNCTION generate_serial_number RETURN VARCHAR2 IS
    BEGIN
        RETURN TO_CHAR(SYSTIMESTAMP, 'YYYYMMDDHH24MISSFF') || DBMS_RANDOM.STRING('X', 8);
    END;


BEGIN
    DBMS_RANDOM.SEED(TO_CHAR(SYSTIMESTAMP, 'YYYYMMDDHH24MISS'));
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('  Iniciando Proceso de Carga de Compras...');
    DBMS_OUTPUT.PUT_LINE('==================================================');


    FOR r_proveedor IN c_proveedores LOOP
        v_id_proveedor := r_proveedor.id_proveedor;
        v_cedula_juridica := r_proveedor.cedula_juridica;
        v_n_compras := TO_NUMBER(SUBSTR(v_cedula_juridica, -1));
        IF v_n_compras = 0 THEN v_n_compras := 1; END IF;


        DBMS_OUTPUT.PUT_LINE(CHR(10) || '--- Procesando Proveedor ID: ' || v_id_proveedor || ' (Cédula Jurídica: ' || v_cedula_juridica || ') ---');
        DBMS_OUTPUT.PUT_LINE('  Compras a generar para este proveedor: ' || v_n_compras);


        FOR i IN 1..v_n_compras LOOP
            v_fecha_compra := TO_DATE('2023-01-15', 'YYYY-MM-DD') + (7 * v_id_proveedor);


            INSERT INTO Compra (fecha_compra, id_proveedor)
            VALUES (v_fecha_compra, v_id_proveedor)
            RETURNING id_compra INTO v_id_compra;


            DBMS_OUTPUT.PUT_LINE('  --------------------------------------------------');
            DBMS_OUTPUT.PUT_LINE('  Creando Compra #' || i || ' para Proveedor ID ' || v_id_proveedor);
            DBMS_OUTPUT.PUT_LINE('  Compra ID: ' || v_id_compra || ', Fecha de Compra: ' || TO_CHAR(v_fecha_compra, 'YYYY-MM-DD'));


            v_m_detalles := MOD(TO_NUMBER(TO_CHAR(v_fecha_compra, 'DD')), 3) + 3;
            DBMS_OUTPUT.PUT_LINE('  Número de Detalles de Compra a generar: ' || v_m_detalles);
            DBMS_OUTPUT.PUT_LINE('  --------------------------------------------------');


            DECLARE
                TYPE product_id_array IS TABLE OF Producto.id_producto%TYPE;
                v_selected_products product_id_array;
            BEGIN
                SELECT id_producto BULK COLLECT INTO v_selected_products
                FROM (SELECT id_producto FROM Producto ORDER BY DBMS_RANDOM.VALUE)
                WHERE ROWNUM <= v_m_detalles;


                IF v_selected_products.COUNT = 0 THEN
                    DBMS_OUTPUT.PUT_LINE('      Advertencia: No se encontraron productos disponibles para la compra ' || v_id_compra || '.');
                    CONTINUE;
                END IF;


                FOR j IN 1..v_selected_products.COUNT LOOP
                    v_id_producto := v_selected_products(j);


                    v_cantidad := TRUNC(DBMS_RANDOM.VALUE(3, 10));


                    SELECT precio INTO v_precio_referencia FROM Producto WHERE id_producto = v_id_producto;


                    v_costo_unitario := v_precio_referencia * 0.8;


                    INSERT INTO Detalle_Compra (id_compra, id_producto, cantidad, costo_unitario)
                    VALUES (v_id_compra, v_id_producto, v_cantidad, v_costo_unitario);


                    DBMS_OUTPUT.PUT_LINE('    Detalle de Compra ' || j || ':');
                    DBMS_OUTPUT.PUT_LINE('      Producto ID: ' || v_id_producto);
                    DBMS_OUTPUT.PUT_LINE('      Cantidad comprada: ' || v_cantidad);
                    DBMS_OUTPUT.PUT_LINE('      Precio de Referencia (Producto): ' || TO_CHAR(v_precio_referencia, 'FM999G999D00'));
                    DBMS_OUTPUT.PUT_LINE('      Costo Unitario (Calculado): ' || TO_CHAR(v_costo_unitario, 'FM999G999D00'));
                    DBMS_OUTPUT.PUT_LINE('      Creando ' || v_cantidad || ' unidades en Inventario...');


                    FOR k IN 1..v_cantidad LOOP
                        v_numero_serie := generate_serial_number();
                        v_id_local := get_random_local_id();


                        INSERT INTO Inventario (id_producto, numero_serie, id_local, estado, fecha_ingreso)
                        VALUES (v_id_producto, v_numero_serie, v_id_local, 'Disponible', v_fecha_compra);


                    END LOOP;
                    DBMS_OUTPUT.PUT_LINE('    --------------------------------------------------');
                END LOOP;
            END;
        END LOOP;
    END LOOP;


    COMMIT;
    DBMS_OUTPUT.PUT_LINE(CHR(10) || '==================================================');
    DBMS_OUTPUT.PUT_LINE('  Proceso de Carga de Compras finalizado exitosamente.');
    DBMS_OUTPUT.PUT_LINE('==================================================');


EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE(CHR(10) || '==================================================');
        DBMS_OUTPUT.PUT_LINE('  ERROR en Proceso de Carga de Compras:');
        DBMS_OUTPUT.PUT_LINE('  ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('==================================================');
END;
/


DECLARE
    CURSOR c_clientes_venta IS
        SELECT id_cliente
        FROM (
            SELECT
                c.id_cliente,
                c.fecha_nacimiento,
                NVL(SUM(dv.precio_venta), 0) AS total_pagado
            FROM Cliente c
            LEFT JOIN Venta v ON c.id_cliente = v.id_cliente
            LEFT JOIN Detalle_Venta dv ON v.id_venta = dv.id_venta
            GROUP BY c.id_cliente, c.fecha_nacimiento
            ORDER BY c.fecha_nacimiento ASC, total_pagado ASC
        )
        WHERE ROWNUM <= 3;


    v_id_cliente Cliente.id_cliente%TYPE;
    v_id_venta Venta.id_venta%TYPE;
    v_last_purchase_date Compra.fecha_compra%TYPE;
    v_start_date Venta.fecha_venta%TYPE;
    v_end_date Venta.fecha_venta%TYPE;
    v_fecha_venta Venta.fecha_venta%TYPE;
    v_id_local Local.id_local%TYPE;
    v_num_productos_venta NUMBER;
    v_id_inventario Inventario.id_inventario%TYPE;
    v_precio_venta Detalle_Venta.precio_venta%TYPE;


    FUNCTION get_random_local_id RETURN NUMBER IS
        v_local_id NUMBER;
    BEGIN
        SELECT id_local INTO v_local_id
        FROM (SELECT id_local FROM Local ORDER BY DBMS_RANDOM.VALUE)
        WHERE ROWNUM = 1;
        RETURN v_local_id;
    END;


    FUNCTION random_date_in_range(p_start_date DATE, p_end_date DATE) RETURN DATE IS
        v_random_seconds NUMBER;
    BEGIN
        IF p_start_date IS NULL OR p_end_date IS NULL OR p_start_date > p_end_date THEN
            RETURN NULL;
        END IF;
        v_random_seconds := DBMS_RANDOM.VALUE(0, (p_end_date - p_start_date) * 24 * 60 * 60);
        RETURN p_start_date + (v_random_seconds / (24 * 60 * 60));
    END;


BEGIN
    DBMS_RANDOM.SEED(TO_CHAR(SYSTIMESTAMP, 'YYYYMMDDHH24MISS'));
    DBMS_OUTPUT.PUT_LINE('==================================================');
    DBMS_OUTPUT.PUT_LINE('  Iniciando Proceso de Carga de Ventas...');
    DBMS_OUTPUT.PUT_LINE('==================================================');


    SELECT NVL(MAX(fecha_compra), TO_DATE('2023-01-01', 'YYYY-MM-DD')) INTO v_last_purchase_date FROM Compra;


    v_start_date := v_last_purchase_date + 10;
    v_end_date := TRUNC(SYSDATE, 'MM');


    IF v_start_date > v_end_date THEN
        DBMS_OUTPUT.PUT_LINE('  Advertencia: La fecha de inicio de ventas (' || TO_CHAR(v_start_date, 'YYYY-MM-DD') || ') es posterior al primer día del mes actual (' || TO_CHAR(v_end_date, 'YYYY-MM-DD') || '). Ajustando rango.');
        v_start_date := v_end_date;
    END IF;


    DBMS_OUTPUT.PUT_LINE('  Rango de fechas de venta: ' || TO_CHAR(v_start_date, 'YYYY-MM-DD') || ' a ' || TO_CHAR(v_end_date, 'YYYY-MM-DD'));
    DBMS_OUTPUT.PUT_LINE('  --------------------------------------------------');


    FOR r_cliente IN c_clientes_venta LOOP
        v_id_cliente := r_cliente.id_cliente;


        DBMS_OUTPUT.PUT_LINE(CHR(10) || '--- Procesando Venta para Cliente ID: ' || v_id_cliente || ' ---');


        v_fecha_venta := random_date_in_range(v_start_date, v_end_date);
        IF v_fecha_venta IS NULL THEN
            DBMS_OUTPUT.PUT_LINE('  Saltando cliente ' || v_id_cliente || ' debido a un rango de fechas de venta inválido o vacío.');
            CONTINUE;
        END IF;


        INSERT INTO Venta (fecha_venta, id_cliente)
        VALUES (v_fecha_venta, v_id_cliente)
        RETURNING id_venta INTO v_id_venta;


        DBMS_OUTPUT.PUT_LINE('  Venta creada: ID ' || v_id_venta || ', Fecha de Venta: ' || TO_CHAR(v_fecha_venta, 'YYYY-MM-DD'));


        v_id_local := get_random_local_id();
        DBMS_OUTPUT.PUT_LINE('  Local de Venta asignado: ' || v_id_local);


        v_num_productos_venta := TRUNC(DBMS_RANDOM.VALUE(1, 4));
        DBMS_OUTPUT.PUT_LINE('  Cantidad de productos de Inventario a vender: ' || v_num_productos_venta);
        DBMS_OUTPUT.PUT_LINE('  --------------------------------------------------');


        DECLARE
            TYPE inventario_id_array IS TABLE OF Inventario.id_inventario%TYPE;
            v_selected_inventarios inventario_id_array;
        BEGIN
            SELECT id_inventario BULK COLLECT INTO v_selected_inventarios
            FROM (
                SELECT id_inventario
                FROM Inventario
                WHERE estado = 'Disponible' AND id_local = v_id_local
                ORDER BY DBMS_RANDOM.VALUE
            )
            WHERE ROWNUM <= v_num_productos_venta;


            IF v_selected_inventarios.COUNT = 0 THEN
                DBMS_OUTPUT.PUT_LINE('    Advertencia: No hay unidades de producto disponibles en el Local ' || v_id_local || ' para la venta ' || v_id_venta || '.');
                CONTINUE;
            END IF;


            FOR j IN 1..v_selected_inventarios.COUNT LOOP
                v_id_inventario := v_selected_inventarios(j);


                SELECT p.precio INTO v_precio_venta
                FROM Inventario i
                JOIN Producto p ON i.id_producto = p.id_producto
                WHERE i.id_inventario = v_id_inventario;


                INSERT INTO Detalle_Venta (id_venta, id_inventario, precio_venta)
                VALUES (v_id_venta, v_id_inventario, v_precio_venta);


                UPDATE Inventario
                SET estado = 'Vendido'
                WHERE id_inventario = v_id_inventario;


                DBMS_OUTPUT.PUT_LINE('    Detalle de Venta ' || j || ':');
                DBMS_OUTPUT.PUT_LINE('      Inventario ID vendido: ' || v_id_inventario);
                DBMS_OUTPUT.PUT_LINE('      Precio de Venta: ' || TO_CHAR(v_precio_venta, 'FM999G999D00'));
                DBMS_OUTPUT.PUT_LINE('      Estado de Inventario actualizado a "Vendido".');
                DBMS_OUTPUT.PUT_LINE('    --------------------------------------------------');
            END LOOP;
        END;
    END LOOP;


    COMMIT;
    DBMS_OUTPUT.PUT_LINE(CHR(10) || '==================================================');
    DBMS_OUTPUT.PUT_LINE('  Proceso de Carga de Ventas finalizado exitosamente.');
    DBMS_OUTPUT.PUT_LINE('==================================================');


EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE(CHR(10) || '==================================================');
        DBMS_OUTPUT.PUT_LINE('  ERROR en Proceso de Carga de Ventas:');
        DBMS_OUTPUT.PUT_LINE('  ' || SQLERRM);
        DBMS_OUTPUT.PUT_LINE('==================================================');
END;
/


SELECT
    l.id_local AS ID_Local,
    l.ubicacion AS Distrito,
    p.id_producto AS ID_Producto,
    p.nombre AS Nombre_Producto,
    SUM(CASE WHEN i.estado = 'Disponible' THEN 1 ELSE 0 END) AS Unidades_Disponibles,
    SUM(CASE WHEN i.estado = 'Vendido' THEN 1 ELSE 0 END) AS Unidades_Vendidas
FROM
    Local l
JOIN
    Inventario i ON l.id_local = i.id_local
JOIN
    Producto p ON i.id_producto = p.id_producto
GROUP BY
    l.id_local,
    l.ubicacion,
    p.id_producto,
    p.nombre
ORDER BY
    l.id_local,
    p.id_producto;