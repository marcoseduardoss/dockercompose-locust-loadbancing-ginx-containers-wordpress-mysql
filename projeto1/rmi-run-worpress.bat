echo off
cls
echo Remover imagem do Wordpress?
pause
docker stop wordpress 
echo ...Container do Wordpress PARADO!
docker rm wordpress
echo ...Container do Wordpress REMOVIDO!
docker rmi wordpress 
echo ...Imagem do Wordpress REMOVIDA!
docker run -d -p 8080:80 --name wordpress --link wordpress-db:mysql -e WORDPRESS_DB_HOST=wordpress-db:3306 -e WORDPRESS_DB_USER=usr-wordpress -e WORDPRESS_DB_PASSWORD=pwd-wordpress -e WORDPRESS_DB_NAME=wordpress -v www:/var/www/html wordpress 
echo ...NOVA Imagem do Wordpress INSTALADA!
echo .
echo .
echo Abrir navegador
timeout /t 30
start "localhost" "http://localhost:8080"
