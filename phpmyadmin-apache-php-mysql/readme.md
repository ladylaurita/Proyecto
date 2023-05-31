Este contenedor contiene las últimas versiones de apache, mysql y phpmyadmin y la versión 7.2 de php.
<p>Se reinicia siempre al reiniciar el sistema.
<p>En este caso le hemos indicado que nos permita acceder sin contraseña a mysql y tiene la zona horaria de Madrid
<p>En el puerto 81 esta phpmyadmin, en el puerto 80 tenemos apache/php y el 3306  mysql.
<p>la pagina de prueba index.html de la carpeta de prueba se carga automaticamente.

# levantar los contenedores
docker compose up -d
  
# parar los contenedores
docker compose stop

# borrarcontenedores y volúmenes
docker compose down -v


