echo Parar o projeto 2?
pause
echo ...parando MYSQL!
docker stop projeto2_mysql_1
timeout /t 12
echo ...Mysql PARADO!
echo ...parando Wordpres 1, 2 e 3!
docker stop projeto2_wordpress1_1
docker stop projeto2_wordpress2_1
docker stop projeto2_wordpress3_1
timeout /t 5
echo ...Wordpres 1, 2 e 3 PARADOS!
echo ...parando NgInx!
docker stop projeto2_nginx_1
echo ...NgInx PARADO!
echo Abrir navegador
timeout /t 5
start "localhost" "http://localhost"
