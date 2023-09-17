use diego;

select * from SPACENTRO_1;
select * from SPAescalon_2;
select * from SPAsantatecla_3;

--GRUPOS
--SAUNA,MASAJE,HIDRO,YOGA
--*Cantidad de personas que usan cada grupo
--*Cantidad de ingresos de cada persona por sucursal
--*media de edad de los grupos
--*cantidad de hombres o mujeres en cada grupo

--CARACTERICAS 
--PROMEDIO DE INGRESO, EDAD Y MEDIA DE GENERO 
--*edad promedio de los clientes de cada sucursal
--*ingresos promedio de cada sucursal
--*promvisit promedio de cada sucursal
--*cantidad de hombres o mujeres por sucursal

SELECT
    'Sauna' AS grupo,
    COUNT(CASE WHEN Sauna = 1 THEN 1 ELSE NULL END) AS cantidad
FROM SPAsantatecla_3
UNION ALL
SELECT
    'Masaje' AS grupo,
    COUNT(CASE WHEN Masaje = 1 THEN 1 ELSE NULL END) AS cantidad
FROM SPAsantatecla_3
UNION ALL
SELECT
    'Hidro' AS grupo,
    COUNT(CASE WHEN Hidro = 1 THEN 1 ELSE NULL END) AS cantidad
FROM SPAsantatecla_3
UNION ALL
SELECT
    'Yoga' AS grupo,
    COUNT(CASE WHEN Yoga = 1 THEN 1 ELSE NULL END) AS cantidad
FROM SPAsantatecla_3
ORDER BY cantidad DESC;

------------------------------------------------------------------------
--INGRESOS POR SUCURSAL
SELECT ROUND(SUM(Ingresos), 2) AS TotalIngresos FROM SPACENTRO_1 ;
SELECT ROUND(SUM(Ingresos), 2) AS TotalIngresos FROM SPAescalon_2 ;
SELECT ROUND(SUM(Ingresos), 2) AS TotalIngresos FROM SPAsantatecla_3 ;

