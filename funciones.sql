CREATE OR REPLACE FUNCTION InventarioDisponible
RETURN NUMBER
IS
    v_total NUMBER := 0;
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