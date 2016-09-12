select av.CLAVE from
(select pp.PUNTO_ID,pp.x,pp.y,a.CLAVE 
from avenida a join poligono p on a.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id) as av 
join
(select pp.PUNTO_ID, pp.x, pp.y from centro_comerical cc join poligono p on cc.POLIGONO_ID = p.POLIGONO_ID
join contorno_poligono cp on p.POLIGONO_ID = cp.POLIGONO_ID 
join contorno c on c.CONTORNO_ID = cp.CONTORNO_ID
join punto_contorno pc on pc.CONTORNO_ID = c.CONTORNO_ID
join punto pp on pp.punto_id = pc.punto_id) as cc where cc.punto_id = av.punto_id group by av.clave  ;