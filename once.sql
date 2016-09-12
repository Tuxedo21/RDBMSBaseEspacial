select cen.x, cen.y from (
select pp.x, pp.y,pp.PUNTO_ID from avenida e join poligono p on e.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id where e.CLAVE ="AV. CENTRAL" ) as cen
join(
select pp.x, pp.y, pp.PUNTO_ID from avenida e join poligono p on e.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id where e.CLAVE = "AV. NORTE") 
as nor where cen.punto_id = nor.punto_id group by nor.PUNTO_ID
