select com.clave from
(select p.PUNTO_ID,p.x,p.y from punto p
join punto_contorno pc on p.PUNTO_ID = pc.PUNTO_ID
join contorno c on c.CONTORNO_ID = pc.CONTORNO_ID
join pasillo pa on pa.CONTORNO_ID = c.CONTORNO_ID
where pa.clave = "AZUL") as pas 
join
(select p.PUNTO_ID, p.x, p.y, co.clave from comercio co 
join punto p on co.PUNTO_ID = p.PUNTO_ID
) as com where com.punto_id = pas.punto_id;

