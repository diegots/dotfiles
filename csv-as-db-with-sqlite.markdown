Primero trabajado con en intérprete interactivo de SQLite:

1. Cargar el CSV en sqlite. La primera fila debe contener los nombres de las columnas
```
.mode csv 
.header on
.import flights14.csv tabla
```
2. Ver la definición de la tabla creada
`.schema`

3. Guardar la base de datos del CSV cargado
`.save vuelos.sql`

4. Una consulta de ejemplo:
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
Las consultas se pueden lanzar desde la linea de comandos con la base de datos guardada:
```
sqlite3 vuelos.sql 'select dep_delay from tabla where origin="JFK" and dest="MIA" and hour="21";'
```

- [Documentación en (sqlite.org)](https://www.sqlite.org/cli.html)
- [CSV de ejemplo utilizado](https://github.com/Rdatatable/data.table/blob/master/vignettes/flights14.csv)