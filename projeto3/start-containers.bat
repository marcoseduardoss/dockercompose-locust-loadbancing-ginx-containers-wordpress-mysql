echo Iniciar o projeto 2?
pause
echo ...iniciando MYSQL!
docker start projeto2_mysql_1
timeout /t 12
echo ...Mysql INICIADO!
echo ...Iniciando Wordpres 1, 2 e 3!
docker start projeto2_wordpress1_1
docker start projeto2_wordpress2_1
docker start projeto2_wordpress3_1
timeout /t 5
echo ...Wordpres 1, 2 e 3 INICIADOS!
echo ...iniciando NgInx!
docker start projeto2_nginx_1
echo ...NgInx INICIADO!
echo Abrir navegador
timeout /t 5 
start "localhost" "http://localhost"
