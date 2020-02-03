echo off
cls
echo Remover imagem do Mysql?
pause
docker stop wordpress-db 
echo ...Container do Mysql PARADO!
docker rm wordpress-db
echo ...Container do Mysql REMOVIDO!
docker rmi wordpress-db 
echo ...Imagem do Mysql REMOVIDA!
docker run -d -p 3306:3306 --name wordpress-db -e MYSQL_ROOT_PASSWORD=r00t -e MYSQL_DATABASE=wordpress -e MYSQL_USER=usr-wordpress -e MYSQL_PASSWORD=pwd-wordpress mysql:5.7
echo ...NOVA Imagem do Mysql INSTALADA!
echo .
echo .
echo Abrir navegador
timeout /t 30
start "localhost" "http://localhost:8080"
