select max(pas.comercios) as comercios, pas.CLAVE from
(select count(pa.CLAVE) comercios, pa.CLAVE from comercio co
join punto p on co.PUNTO_ID = p.PUNTO_ID
join punto_contorno pc on pc.PUNTO_ID = p.PUNTO_ID
join contorno c on c.CONTORNO_ID = pc.CONTORNO_ID
join pasillo pa on pa.CONTORNO_ID = c.CONTORNO_ID group by pa.CLAVE) as pas