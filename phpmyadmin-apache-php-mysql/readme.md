Este contenedor contiene las últimas versiones de apache, mysql y phpmyadmin y la versión 7.2 de php.
Se reinicia siempre al reiniciar el sistema.
En este caso le hemos indicado que nos permita acceder sin contraseña a mysql y le he puesto la zona horaria de Madrid
En el puerto 81 esta phpmyadmin, en el puerto 80 tenemos apache/php y el 3306  mysql.
Para poder ver nuestro sitio web a través del puerto 80 tenemos que configurar el sitio y crear una página:

 docker exec -it www bash
 
 apt update
 apt install nano
 cd /etc/apache2/sites-available
 sudo cp 000-default.conf prueba.com.conf
 sudo nano prueba.com.conf
 
# editamos el archivo prueba.com.conf
 <VirtualHost *:80>
     ServerAdmin webmaster@localhost
     DocumentRoot /var/www/html
     <Directory "/var/www/html">
         Options Indexes FollowSymLinks MultiViews
         AllowOverride None
         Order allow,deny
         allow from all
     </Directory>
     DirectoryIndex index.html  
</VirtualHost>

# guardamos el archivo
sudo a2ensite prueba.com.conf

# creamos un sitio web
nano var/www/html/index.html
<h1>funciona<h1>

# reiniciamos apache
service apache2 reload


# parar los contenedores
docker compose stop

# borrarcontenedores y volúmenes
docker compose down -v


