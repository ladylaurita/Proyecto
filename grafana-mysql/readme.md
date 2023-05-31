docker compose con grafana en el puerto 3000 y mysql en el 3307.
<p>mysql incorpora una base de datos de mediciones atmosféricas ficticia que se carga automaticamente.
<p>En la carpeta grafana esta el json correspondiente a un dashboard.

# levantar contenedor
docker compose up -d

# primer usuario/contraseña
admin/admin

# conexion con la base de datos
host: hattp://localhost:3307
database: h2olock
user: root
password: secret

# archivo .json
seleccionar agragar panel e importar.
por último arrastar el archivo.

# parar los contenedores
docker compose stop

# borrar contenedores y volúmenes
docker compose down -v
