echo off
cls
echo Exibir imagens?
pause
docker ps -a
echo Executar Mysql?
pause
docker start wordpress-db
echo Executar Wordpress?
pause
docker start wordpress
start "localhost" "http://localhost:8080"
timeout /t 30
rem docker images rmi wordpress, wordpress-db
rem docker container rm wordpress, wordpress-db
rem docker images 
rem docker start/pause/stop