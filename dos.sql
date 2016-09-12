select ci.x cinex, ci.y ciney, ca.x cafex, ca.y cafey, 
sqrt(power(ci.x - ca.x,2) + power(ci.y - ca.y,2)) distancia 
from punto ci, punto ca, comercio cci, comercio cca 
where cci.clave = "CINE" and
cci.punto_id = ci.punto_id and
cca.clave = "CAFE" and
cca.punto_id = ca.punto_id;
