<p>Docker compose con Odoo 16 y postgres15.<p>
Se reinicia siempre al reiniciar el sistema.
En el puerto 10016 tenemos Odoo.
No es valido para arquitectura ARM64.

# levantar los contenedores
docker compose up -d

# parar los contenedores
docker compose stop

# borrar contenedores y volúmenes
docker compose down -v

