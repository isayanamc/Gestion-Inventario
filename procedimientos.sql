CREATE OR REPLACE PROCEDURE registrar_venta(
    p_cli IN Venta.id_cliente%TYPE,
    p_pro IN Producto.id_producto%TYPE,
    p_loc IN NUMBER  -- como id_local no está en VENTA, lo ponemos manual
) IS
    v_ven Venta.id_venta%TYPE;
    v_pre Producto.precio%TYPE;
    v_inv_id Detalle_Venta.id_inventario%TYPE;
BEGIN
    -- Seleccionar una unidad disponible del producto en inventario
    SELECT id_inventario INTO v_inv_id
    FROM Inventario
    WHERE id_producto = p_pro
      AND estado = 'Disponible'
      AND id_local = p_loc
      AND ROWNUM = 1;


    -- Obtener precio del producto
    SELECT precio INTO v_pre
    FROM Producto
    WHERE id_producto = p_pro;


    -- Insertar venta
    INSERT INTO Venta(id_cliente, fecha_venta)
    VALUES (p_cli, SYSDATE)
    RETURNING id_venta INTO v_ven;


    -- Insertar detalle
    INSERT INTO Detalle_Venta(id_venta, id_inventario, precio_venta)
    VALUES (v_ven, v_inv_id, v_pre);


    -- Marcar unidad como vendida
    UPDATE Inventario
    SET estado = 'Vendido'
    WHERE id_inventario = v_inv_id;


    DBMS_OUTPUT.PUT_LINE('Venta registrada con ID: ' || v_ven);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No hay unidades disponibles del producto ' || p_pro || ' en el local ' || p_loc);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- ===================================

CREATE OR REPLACE PROCEDURE registrar_compra IS
    -- Variables generales
    v_id_proveedor    COMPRA.ID_PROVEEDOR%TYPE;
    v_id_producto     DETALLE_COMPRA.ID_PRODUCTO%TYPE;
    v_cantidad        NUMBER;
    v_id_compra       COMPRA.ID_COMPRA%TYPE;
    v_costo_unitario  NUMBER := 100; -- valor de ejemplo, ajustalo si ocupás


    -- Para seleccionar locales
    CURSOR c_locales IS
        SELECT ID_LOCAL FROM (
            SELECT ID_LOCAL FROM LOCAL ORDER BY DBMS_RANDOM.VALUE
        ) WHERE ROWNUM <= v_cantidad;


    -- Local temporal
    v_local_id        LOCAL.ID_LOCAL%TYPE;
BEGIN
    -- Inicializar proveedor, producto y cantidad (puede ser aleatorio o fijo)
    SELECT ID_PROVEEDOR INTO v_id_proveedor FROM (
        SELECT ID_PROVEEDOR FROM PROVEEDOR ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;


    SELECT ID_PRODUCTO INTO v_id_producto FROM (
        SELECT ID_PRODUCTO FROM PRODUCTO ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;


    v_cantidad := TRUNC(DBMS_RANDOM.VALUE(4, 9)); -- entre 4 y 8


    -- Insertar compra (ID autogenerado)
    INSERT INTO COMPRA (FECHA_COMPRA, ID_PROVEEDOR)
    VALUES (SYSDATE, v_id_proveedor)
    RETURNING ID_COMPRA INTO v_id_compra;


    -- Insertar detalle de la compra
    INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_PRODUCTO, CANTIDAD, COSTO_UNITARIO)
    VALUES (v_id_compra, v_id_producto, v_cantidad, v_costo_unitario);


    -- Repartir por local (una unidad por local aleatorio)
    OPEN c_locales;
    FOR i IN 1..v_cantidad LOOP
        FETCH c_locales INTO v_local_id;
        EXIT WHEN c_locales%NOTFOUND;


        INSERT INTO INVENTARIO (
            ID_PRODUCTO,
            NUMERO_SERIE,
            ID_LOCAL,
            ESTADO,
            FECHA_INGRESO
        ) VALUES (
            v_id_producto,
            'SN-' || v_id_producto || '-' || TO_CHAR(SYSDATE, 'YYMMDDHH24MISS') || '-' || LPAD(i, 2, '0'),
            v_local_id,
            'Disponible',
            SYSDATE
        );
    END LOOP;
    CLOSE c_locales;


    DBMS_OUTPUT.PUT_LINE('Compra registrada con ID: ' || v_id_compra);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || v_id_producto || ', Cantidad: ' || v_cantidad);


EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- ===================================

BEGIN
    -- Suma los precios de los productos en estado 'Disponible'
    SELECT SUM(p.precio)
    INTO v_total
    FROM inventario i
    JOIN producto p ON i.id_producto = p.id_producto
    WHERE i.estado = 'Disponible';


    RETURN v_total;


EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1;
END;
/

-- ===================================

BEGIN
    v_usuario := USER;
    v_fecha := SYSDATE;


    v_total_inventario := InventarioDisponible;


    DBMS_OUTPUT.PUT_LINE('Usuario conectado: ' || v_usuario);
    DBMS_OUTPUT.PUT_LINE('Fecha del sistema: ' || TO_CHAR(v_fecha, 'DD-MM-YYYY HH24:MI:SS'));
    DBMS_OUTPUT.PUT_LINE('Valor total del inventario disponible: ₡' || TO_CHAR(v_total_inventario, '999G999G999'));


END;
/

-- ===================================

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

-- ===================================

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

-- ===================================

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

BEGIN
    -- Seleccionar una unidad disponible del producto en inventario
    SELECT id_inventario INTO v_inv_id
    FROM Inventario
    WHERE id_producto = p_pro
      AND estado = 'Disponible'
      AND id_local = p_loc
      AND ROWNUM = 1;


    -- Obtener precio del producto
    SELECT precio INTO v_pre
    FROM Producto
    WHERE id_producto = p_pro;


    -- Insertar venta
    INSERT INTO Venta(id_cliente, fecha_venta)
    VALUES (p_cli, SYSDATE)
    RETURNING id_venta INTO v_ven;


    -- Insertar detalle
    INSERT INTO Detalle_Venta(id_venta, id_inventario, precio_venta)
    VALUES (v_ven, v_inv_id, v_pre);


    -- Marcar unidad como vendida
    UPDATE Inventario
    SET estado = 'Vendido'
    WHERE id_inventario = v_inv_id;


    DBMS_OUTPUT.PUT_LINE('Venta registrada con ID: ' || v_ven);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No hay unidades disponibles del producto ' || p_pro || ' en el local ' || p_loc);
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- ===================================

BEGIN
  registrar_venta(1, 1, 1); -- Producto 1 en local 1, cliente 1
  registrar_venta(2, 2, 4); -- Producto 2 en local 4, cliente 2
  registrar_venta(3, 3, 3); -- Producto 3 en local 3, cliente 3
END;
/

-- ===================================

BEGIN
    -- Inicializar proveedor, producto y cantidad (puede ser aleatorio o fijo)
    SELECT ID_PROVEEDOR INTO v_id_proveedor FROM (
        SELECT ID_PROVEEDOR FROM PROVEEDOR ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;


    SELECT ID_PRODUCTO INTO v_id_producto FROM (
        SELECT ID_PRODUCTO FROM PRODUCTO ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;


    v_cantidad := TRUNC(DBMS_RANDOM.VALUE(4, 9)); -- entre 4 y 8


    -- Insertar compra (ID autogenerado)
    INSERT INTO COMPRA (FECHA_COMPRA, ID_PROVEEDOR)
    VALUES (SYSDATE, v_id_proveedor)
    RETURNING ID_COMPRA INTO v_id_compra;


    -- Insertar detalle de la compra
    INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_PRODUCTO, CANTIDAD, COSTO_UNITARIO)
    VALUES (v_id_compra, v_id_producto, v_cantidad, v_costo_unitario);


    -- Repartir por local (una unidad por local aleatorio)
    OPEN c_locales;
    FOR i IN 1..v_cantidad LOOP
        FETCH c_locales INTO v_local_id;
        EXIT WHEN c_locales%NOTFOUND;


        INSERT INTO INVENTARIO (
            ID_PRODUCTO,
            NUMERO_SERIE,
            ID_LOCAL,
            ESTADO,
            FECHA_INGRESO
        ) VALUES (
            v_id_producto,
            'SN-' || v_id_producto || '-' || TO_CHAR(SYSDATE, 'YYMMDDHH24MISS') || '-' || LPAD(i, 2, '0'),
            v_local_id,
            'Disponible',
            SYSDATE
        );
    END LOOP;
    CLOSE c_locales;


    DBMS_OUTPUT.PUT_LINE('Compra registrada con ID: ' || v_id_compra);
    DBMS_OUTPUT.PUT_LINE('Producto: ' || v_id_producto || ', Cantidad: ' || v_cantidad);


EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- ===================================

BEGIN
    registrar_compra;
    registrar_compra;
    registrar_compra;
    registrar_compra;
END;
/