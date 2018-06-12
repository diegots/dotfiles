1. Cargar el CSV en sqlite
```
.mode csv 
.header on
.import flights14.csv tabla
```
2. Guardar la base de datos del CSV cargado
`.save vuelos.sql`

3. Una consulta de ejemplo:
```
select 
  dep_delay as 'Departure delay',
  arr_delay as 'Arribal delay' 
from tabla 
where 
  origin='JFK' 
  and dest='MIA' 
  and hour='21';
``` 
Documentación: https://www.sqlite.org/cli.html