select av.clave from
(select pp.x,pp.Y, e.clave,pp.PUNTO_ID from area_verde e join poligono p on e.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id 
)as av
join(
select p.PUNTO_ID,p.x,p.y from punto p
join punto_contorno pc on p.PUNTO_ID = pc.PUNTO_ID
join contorno c on c.CONTORNO_ID = pc.CONTORNO_ID
join pasillo pa on pa.CONTORNO_ID = c.CONTORNO_ID)
as pas where pas.punto_id = av.punto_id group by av.clave;