Docker compose con la última versión de wordpress y mysql.
Se reinicia siempre al reiniciar el sistema.
En el puerto 8080 tenemos wordpress y en 3306 mysql. 
Wordpress se ha instalado a diferencia que en el contenedor wordpress unido al contenedor mysql.

# levantar los contenedores
docker compose up -d

# parar los contenedores
docker compose stop

# borrar contenedores y volúmenes
docker compose down -v
