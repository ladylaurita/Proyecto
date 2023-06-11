#buscar imagenes disponibles
#docker search mysql

#levantar contenedor MySQL

docker search mysql
docker pull mysql
docker run --name mi_sql -e MYSQL_ROOT_PASSWORD=usuario123 -d mysql
docker exec -it mi_sql bash


#conectarse a la base de datos
# mysql -u root -p
