select es.x, es.y, es.clave from
(select pp.x,pp.Y,pp.PUNTO_ID,c.CLAVE from escuela e join poligono p on e.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id 
)as es
join(
select pp.x,pp.Y, e.clave,pp.PUNTO_ID from avenida e join poligono p on e.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id where e.CLAVE ="AV. CENTRAL")
as av where es.punto_id = av.punto_id group by es.clave;