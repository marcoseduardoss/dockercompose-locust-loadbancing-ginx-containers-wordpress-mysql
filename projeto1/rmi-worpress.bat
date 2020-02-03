echo off
cls
echo Remover imagem do Wordpress?
pause
docker stop wordpress 
echo Container do Wordpress paradado...
docker rm wordpress
echo Container do Wordpress REMOVIDO...
docker rmi wordpress 
echo ...Imagem do Wordpress REMOVIDA!
