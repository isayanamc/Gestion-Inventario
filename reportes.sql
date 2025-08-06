DECLARE
    v_usuario VARCHAR2(30);
    v_fecha   DATE;
    v_total_inventario NUMBER;
BEGIN
    v_usuario := USER;
    v_fecha := SYSDATE;


    v_total_inventario := InventarioDisponible;


    DBMS_OUTPUT.PUT_LINE('Usuario conectado: ' || v_usuario);
    DBMS_OUTPUT.PUT_LINE('Fecha del sistema: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Valor total del inventario disponible: ₡' || TO_CHAR(v_total_inventario, '999G999G999'));


END;
/
CREATE OR REPLACE FUNCTION TotalVendidos(
    fecha_inicio IN DATE,
    fecha_fin IN DATE
)
RETURN NUMBER
IS
    v_total NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM venta v
    JOIN detalle_venta dv ON v.id_venta = dv.id_venta
    WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin;


    RETURN v_total;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1;
END;
/


SET SERVEROUTPUT ON;


DECLARE
    v_total NUMBER;
    v_inicio DATE;
    v_fin DATE;
BEGIN
    -- i. Último mes (julio 2025 si hoy es agosto 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);  -- 01-JUL-2025
    v_fin := LAST_DAY(v_inicio);                      -- 31-JUL-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('i. Total vendidos en el último mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- ii. Penúltimo mes (junio 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -2);  -- 01-JUN-2025
    v_fin := LAST_DAY(v_inicio);                      -- 30-JUN-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('ii. Total vendidos en el penúltimo mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iii. Últimos 12 meses
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE), -12);
    v_fin := SYSDATE;
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iii. Total vendidos en los últimos 12 meses (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iv. Desde la primera venta hasta el fin del mes anterior
    SELECT MIN(fecha_venta) INTO v_inicio FROM venta;
    v_fin := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);
    v_fin := LAST_DAY(v_fin);
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iv. Total vendidos desde la primera venta hasta fin del mes anterior (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


END;
/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR c_categorias IS
        SELECT id_categoria, nombre FROM categoria ORDER BY nombre;


    CURSOR c_productos(p_id_categoria NUMBER) IS
        SELECT id_producto, nombre FROM producto
        WHERE id_categoria = p_id_categoria
        ORDER BY nombre;


    v_total NUMBER;
    v_count NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('REPORTE MATRICIAL DE INVENTARIO DISPONIBLE');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Categoría - Producto              | L1 | L2 | L3 | L4 | L5 | L6 | L7 | L8 | L9 | L10 | TOTAL');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');


    FOR r_cat IN c_categorias LOOP
        DBMS_OUTPUT.PUT_LINE(CHR(10) || r_cat.nombre);


        FOR r_prod IN c_productos(r_cat.id_categoria) LOOP
            v_total := 0;
            -- Línea base del producto
            DBMS_OUTPUT.PUT('  ' || RPAD(r_prod.nombre, 28));


            -- Iterar por los 10 locales
            FOR loc_id IN 1..10 LOOP
                SELECT COUNT(*) INTO v_count
                FROM inventario
                WHERE id_producto = r_prod.id_producto
                  AND id_local = loc_id
                  AND estado = 'Disponible';


                v_total := v_total + v_count;
                DBMS_OUTPUT.PUT('| ' || LPAD(v_count, 2) || ' ');
            END LOOP;


            DBMS_OUTPUT.PUT_LINE('| ' || LPAD(v_total, 3));
        END LOOP;
    END LOOP;
END;
/

-- ===================================

DECLARE
    v_usuario VARCHAR2(30);
    v_fecha   DATE;
    v_total_inventario NUMBER;
BEGIN
    v_usuario := USER;
    v_fecha := SYSDATE;


    v_total_inventario := InventarioDisponible;


    DBMS_OUTPUT.PUT_LINE('Usuario conectado: ' || v_usuario);
    DBMS_OUTPUT.PUT_LINE('Fecha del sistema: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Valor total del inventario disponible: ₡' || TO_CHAR(v_total_inventario, '999G999G999'));


END;
/
CREATE OR REPLACE FUNCTION TotalVendidos(
    fecha_inicio IN DATE,
    fecha_fin IN DATE
)
RETURN NUMBER
IS
    v_total NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM venta v
    JOIN detalle_venta dv ON v.id_venta = dv.id_venta
    WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin;


    RETURN v_total;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1;
END;
/


SET SERVEROUTPUT ON;


DECLARE
    v_total NUMBER;
    v_inicio DATE;
    v_fin DATE;
BEGIN
    -- i. Último mes (julio 2025 si hoy es agosto 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);  -- 01-JUL-2025
    v_fin := LAST_DAY(v_inicio);                      -- 31-JUL-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('i. Total vendidos en el último mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- ii. Penúltimo mes (junio 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -2);  -- 01-JUN-2025
    v_fin := LAST_DAY(v_inicio);                      -- 30-JUN-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('ii. Total vendidos en el penúltimo mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iii. Últimos 12 meses
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE), -12);
    v_fin := SYSDATE;
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iii. Total vendidos en los últimos 12 meses (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iv. Desde la primera venta hasta el fin del mes anterior
    SELECT MIN(fecha_venta) INTO v_inicio FROM venta;
    v_fin := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);
    v_fin := LAST_DAY(v_fin);
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iv. Total vendidos desde la primera venta hasta fin del mes anterior (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


END;
/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR c_categorias IS
        SELECT id_categoria, nombre FROM categoria ORDER BY nombre;


    CURSOR c_productos(p_id_categoria NUMBER) IS
        SELECT id_producto, nombre FROM producto
        WHERE id_categoria = p_id_categoria
        ORDER BY nombre;


    v_total NUMBER;
    v_count NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('REPORTE MATRICIAL DE INVENTARIO DISPONIBLE');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Categoría - Producto              | L1 | L2 | L3 | L4 | L5 | L6 | L7 | L8 | L9 | L10 | TOTAL');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');


    FOR r_cat IN c_categorias LOOP
        DBMS_OUTPUT.PUT_LINE(CHR(10) || r_cat.nombre);


        FOR r_prod IN c_productos(r_cat.id_categoria) LOOP
            v_total := 0;
            -- Línea base del producto
            DBMS_OUTPUT.PUT('  ' || RPAD(r_prod.nombre, 28));


            -- Iterar por los 10 locales
            FOR loc_id IN 1..10 LOOP
                SELECT COUNT(*) INTO v_count
                FROM inventario
                WHERE id_producto = r_prod.id_producto
                  AND id_local = loc_id
                  AND estado = 'Disponible';


                v_total := v_total + v_count;
                DBMS_OUTPUT.PUT('| ' || LPAD(v_count, 2) || ' ');
            END LOOP;


            DBMS_OUTPUT.PUT_LINE('| ' || LPAD(v_total, 3));
        END LOOP;
    END LOOP;
END;
/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR c_ventas IS
        SELECT v.fecha_venta, c.nombre AS cliente, SUM(dv.precio_venta) AS total_venta
        FROM venta v
        JOIN cliente c ON v.id_cliente = c.id_cliente
        JOIN detalle_venta dv ON v.id_venta = dv.id_venta
        GROUP BY v.fecha_venta, c.nombre
        ORDER BY v.fecha_venta;


BEGIN
    DBMS_OUTPUT.PUT_LINE('REPORTE DE VENTAS POR CLIENTE');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('Fecha', 15) || RPAD('Cliente', 20) || 'Total Venta');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');


    FOR r IN c_ventas LOOP
        DBMS_OUTPUT.PUT_LINE(
            RPAD(TO_CHAR(r.fecha_venta, 'DD/MM/YYYY'), 15) ||
            RPAD(r.cliente, 20) ||
            '₡' || TO_CHAR(r.total_venta, '999G999G999')
        );
    END LOOP;
END;
/

-- ===================================

DECLARE
    v_usuario VARCHAR2(30);
    v_fecha   DATE;
    v_total_inventario NUMBER;
BEGIN
    v_usuario := USER;
    v_fecha := SYSDATE;


    v_total_inventario := InventarioDisponible;


    DBMS_OUTPUT.PUT_LINE('Usuario conectado: ' || v_usuario);
    DBMS_OUTPUT.PUT_LINE('Fecha del sistema: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Valor total del inventario disponible: ₡' || TO_CHAR(v_total_inventario, '999G999G999'));


END;
/
CREATE OR REPLACE FUNCTION TotalVendidos(
    fecha_inicio IN DATE,
    fecha_fin IN DATE
)
RETURN NUMBER
IS
    v_total NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO v_total
    FROM venta v
    JOIN detalle_venta dv ON v.id_venta = dv.id_venta
    WHERE v.fecha_venta BETWEEN fecha_inicio AND fecha_fin;


    RETURN v_total;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1;
END;
/


SET SERVEROUTPUT ON;


DECLARE
    v_total NUMBER;
    v_inicio DATE;
    v_fin DATE;
BEGIN
    -- i. Último mes (julio 2025 si hoy es agosto 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);  -- 01-JUL-2025
    v_fin := LAST_DAY(v_inicio);                      -- 31-JUL-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('i. Total vendidos en el último mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- ii. Penúltimo mes (junio 2025)
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -2);  -- 01-JUN-2025
    v_fin := LAST_DAY(v_inicio);                      -- 30-JUN-2025
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('ii. Total vendidos en el penúltimo mes (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iii. Últimos 12 meses
    v_inicio := ADD_MONTHS(TRUNC(SYSDATE), -12);
    v_fin := SYSDATE;
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iii. Total vendidos en los últimos 12 meses (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


    -- iv. Desde la primera venta hasta el fin del mes anterior
    SELECT MIN(fecha_venta) INTO v_inicio FROM venta;
    v_fin := ADD_MONTHS(TRUNC(SYSDATE, 'MM'), -1);
    v_fin := LAST_DAY(v_fin);
    v_total := TotalVendidos(v_inicio, v_fin);
    DBMS_OUTPUT.PUT_LINE('iv. Total vendidos desde la primera venta hasta fin del mes anterior (' || TO_CHAR(v_inicio, 'DD-MM-YYYY') || ' a ' || TO_CHAR(v_fin, 'DD-MM-YYYY') || '): ' || v_total);


END;
/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR c_categorias IS
        SELECT id_categoria, nombre FROM categoria ORDER BY nombre;


    CURSOR c_productos(p_id_categoria NUMBER) IS
        SELECT id_producto, nombre FROM producto
        WHERE id_categoria = p_id_categoria
        ORDER BY nombre;


    v_total NUMBER;
    v_count NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('REPORTE MATRICIAL DE INVENTARIO DISPONIBLE');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE('Categoría - Producto              | L1 | L2 | L3 | L4 | L5 | L6 | L7 | L8 | L9 | L10 | TOTAL');
    DBMS_OUTPUT.PUT_LINE('---------------------------------------------------------------');


    FOR r_cat IN c_categorias LOOP
        DBMS_OUTPUT.PUT_LINE(CHR(10) || r_cat.nombre);


        FOR r_prod IN c_productos(r_cat.id_categoria) LOOP
            v_total := 0;
            -- Línea base del producto
            DBMS_OUTPUT.PUT('  ' || RPAD(r_prod.nombre, 28));


            -- Iterar por los 10 locales
            FOR loc_id IN 1..10 LOOP
                SELECT COUNT(*) INTO v_count
                FROM inventario
                WHERE id_producto = r_prod.id_producto
                  AND id_local = loc_id
                  AND estado = 'Disponible';


                v_total := v_total + v_count;
                DBMS_OUTPUT.PUT('| ' || LPAD(v_count, 2) || ' ');
            END LOOP;


            DBMS_OUTPUT.PUT_LINE('| ' || LPAD(v_total, 3));
        END LOOP;
    END LOOP;
END;
/
SET SERVEROUTPUT ON;


DECLARE
    CURSOR c_ventas IS
        SELECT v.fecha_venta, c.nombre AS cliente, SUM(dv.precio_venta) AS total_venta
        FROM venta v
        JOIN cliente c ON v.id_cliente = c.id_cliente
        JOIN detalle_venta dv ON v.id_venta = dv.id_venta
        GROUP BY v.fecha_venta, c.nombre
        ORDER BY v.fecha_venta;


BEGIN
    DBMS_OUTPUT.PUT_LINE('REPORTE DE VENTAS POR CLIENTE');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');
    DBMS_OUTPUT.PUT_LINE(RPAD('Fecha', 15) || RPAD('Cliente', 20) || 'Total Venta');
    DBMS_OUTPUT.PUT_LINE('-----------------------------------------------------');


    FOR r IN c_ventas LOOP
        DBMS_OUTPUT.PUT_LINE(
            RPAD(TO_CHAR(r.fecha_venta, 'DD/MM/YYYY'), 15) ||
            RPAD(r.cliente, 20) ||
            '₡' || TO_CHAR(r.total_venta, '999G999G999')
        );
    END LOOP;
END;
/


SET SERVEROUTPUT ON;


DECLARE
  CURSOR c_compras IS
    SELECT 
      p.nombre AS producto,
      pr.nombre AS proveedor,
      SUM(dc.cantidad) AS cantidad_total,
      MAX(c.fecha_compra) AS ultima_compra
    FROM Detalle_Compra dc
    JOIN Compra c ON dc.id_compra = c.id_compra
    JOIN Producto p ON dc.id_producto = p.id_producto
    JOIN Proveedor pr ON c.id_proveedor = pr.id_proveedor
    GROUP BY p.nombre, pr.nombre
    ORDER BY p.nombre, ultima_compra;


  v_producto       VARCHAR2(100);
  v_proveedor      VARCHAR2(100);
  v_cantidad_total NUMBER;
  v_ultima_compra  DATE;


BEGIN
  DBMS_OUTPUT.PUT_LINE('REPORTE DE COMPRAS POR PRODUCTO');
  DBMS_OUTPUT.PUT_LINE('Producto | Proveedor | Cantidad | Última Compra');
  DBMS_OUTPUT.PUT_LINE('--------------------------------------------------');


  OPEN c_compras;
  LOOP
    FETCH c_compras INTO v_producto, v_proveedor, v_cantidad_total, v_ultima_compra;
    EXIT WHEN c_compras%NOTFOUND;


    DBMS_OUTPUT.PUT_LINE(
      RPAD(v_producto, 25) || ' | ' || 
      RPAD(v_proveedor, 20) || ' | ' || 
      LPAD(v_cantidad_total, 8) || ' | ' || 
      TO_CHAR(v_ultima_compra, 'DD-MM-YYYY')
    );
  END LOOP;
  CLOSE c_compras;
END;
/

-- ===================================

SELECT
  cat.nombre AS CATEGORIA,
  prod.nombre AS PRODUCTO,
  SUM(CASE WHEN inv.ID_LOCAL = 1 THEN 1 ELSE 0 END) AS "Local 1",
  SUM(CASE WHEN inv.ID_LOCAL = 2 THEN 1 ELSE 0 END) AS "Local 2",
  SUM(CASE WHEN inv.ID_LOCAL = 3 THEN 1 ELSE 0 END) AS "Local 3",
  SUM(CASE WHEN inv.ID_LOCAL = 4 THEN 1 ELSE 0 END) AS "Local 4",
  SUM(CASE WHEN inv.ID_LOCAL = 5 THEN 1 ELSE 0 END) AS "Local 5",
  SUM(CASE WHEN inv.ID_LOCAL = 6 THEN 1 ELSE 0 END) AS "Local 6",
  SUM(CASE WHEN inv.ID_LOCAL = 7 THEN 1 ELSE 0 END) AS "Local 7",
  SUM(CASE WHEN inv.ID_LOCAL = 8 THEN 1 ELSE 0 END) AS "Local 8",
  SUM(CASE WHEN inv.ID_LOCAL = 9 THEN 1 ELSE 0 END) AS "Local 9",
  SUM(CASE WHEN inv.ID_LOCAL = 10 THEN 1 ELSE 0 END) AS "Local 10",
  COUNT(*) AS TOTAL
FROM
  INVENTARIO inv
  JOIN PRODUCTO prod ON inv.ID_PRODUCTO = prod.ID_PRODUCTO
  JOIN CATEGORIA cat ON prod.ID_CATEGORIA = cat.ID_CATEGORIA
WHERE
  inv.ESTADO = 'Disponible'
GROUP BY
  cat.nombre, prod.nombre
ORDER BY
  cat.nombre, prod.nombre;