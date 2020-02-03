echo off
cls
rem echo Baixar a imagem do Mysql 6.7 do Docker Hub?
rem pause
rem docker pull mysql:5.7
rem echo Iniciar o MySQL?
rem pause
rem docker run -d -p 3306:3306 --name wordpress-db -e MYSQL_ROOT_PASSWORD=r00t -e MYSQL_DATABASE=wordpress -e MYSQL_USER=usr-wordpress -e MYSQL_PASSWORD=pwd-wordpress mysql:5.7
echo Baixar e iniciar imagem do Wordpress?
pause
docker run --rm -it -v C:\marcos\pos-devops\projeto1\www:/var/www/html -d -p 8080:80 --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=wordpress-db:3306 -e WORDPRESS_DB_USER=usr-wordpress -e WORDPRESS_DB_PASSWORD=pwd-wordpress -e WORDPRESS_DB_NAME=wordpress wordpress 
echo .
echo .
echo Abrir navegador
timeout /t 30
start "localhost" "http://localhost:8080"