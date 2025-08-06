CREATE TABLE Categoria (
    id_categoria NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100) UNIQUE NOT NULL
);


CREATE TABLE Fabricante (
    id_fabricante NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100) UNIQUE NOT NULL
);


CREATE TABLE Proveedor (
    id_proveedor NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    cedula_juridica VARCHAR2(30) UNIQUE,
    nombre VARCHAR2(100),
    direccion VARCHAR2(255),
    distrito VARCHAR2(100),
    telefono VARCHAR2(20),
    correo VARCHAR2(100),
    estado VARCHAR2(10) CHECK (estado IN ('Activo', 'Inactivo'))
);


CREATE TABLE Cliente (
    id_cliente NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100),
    direccion VARCHAR2(255),
    distrito VARCHAR2(100),
    telefono VARCHAR2(20),
    correo VARCHAR2(100),
    fecha_nacimiento DATE,
    estado VARCHAR2(10) CHECK (estado IN ('activo', 'inactivo'))
);


CREATE TABLE Local (
    id_local NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100),
    ubicacion VARCHAR2(255)
);


CREATE TABLE Producto (
    id_producto NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nombre VARCHAR2(100) UNIQUE NOT NULL,
    descripcion VARCHAR2(255),
    precio DECIMAL(10,2),
    id_categoria NUMBER NOT NULL,
    id_fabricante NUMBER NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id_categoria),
    FOREIGN KEY (id_fabricante) REFERENCES Fabricante(id_fabricante)
);


CREATE TABLE Compra (
    id_compra NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fecha_compra DATE,
    id_proveedor NUMBER NOT NULL,
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);


CREATE TABLE Venta (
    id_venta NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    fecha_venta DATE,
    id_cliente NUMBER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);


CREATE TABLE Detalle_Compra (
    id_compra NUMBER,
    id_producto NUMBER,
    cantidad NUMBER,
    costo_unitario DECIMAL(10,2),
    PRIMARY KEY (id_compra, id_producto),
    FOREIGN KEY (id_compra) REFERENCES Compra(id_compra),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto)
);


CREATE TABLE Inventario (
    id_inventario NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    id_producto NUMBER NOT NULL,
    numero_serie VARCHAR2(50) UNIQUE,
    id_local NUMBER NOT NULL,
    estado VARCHAR2(20) CHECK (estado IN ('Disponible', 'Vendido', 'Dañado')),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (id_local) REFERENCES Local(id_local)
);


CREATE TABLE Producto_Proveedor (
    id_producto NUMBER,
    id_proveedor NUMBER,
    PRIMARY KEY (id_producto, id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES Producto(id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES Proveedor(id_proveedor)
);


CREATE TABLE Detalle_Venta (
    id_venta NUMBER,
    id_inventario NUMBER,
    precio_venta DECIMAL(10,2),
    PRIMARY KEY (id_venta, id_inventario),
    FOREIGN KEY (id_venta) REFERENCES Venta(id_venta),
    FOREIGN KEY (id_inventario) REFERENCES Inventario(id_inventario)
);


ALTER TABLE Inventario ADD fecha_ingreso DATE;
