echo off
cls
echo Baixar a imagem do Docker Hub?
pause
docker pull mysql:5.7
echo Iniciar o MySQL?
pause
docker run -d -p 3306:3306 --name wordpress-db -e MYSQL_ROOT_PASSWORD=r00t -e MYSQL_DATABASE=wordpress -e MYSQL_USER=usr-wordpress -e MYSQL_PASSWORD=pwd-wordpress mysql:5.7
echo Baixar e iniciar imagem do Wordpress?
pause
docker run -d -p 8080:80 --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=wordpress-db:3306 -e WORDPRESS_DB_USER=usr-wordpress -e WORDPRESS_DB_PASSWORD=pwd-wordpress -e WORDPRESS_DB_NAME=wordpress wordpress
echo Abrir navegador
start "localhost" "http://localhost:8080"