# NGINXcomplete Docker Image
Imagem baseada em Alpine linux completa para o uso, mais leve do que a padrão nginx:alpine

Ele possui vim nano curl nginx bash wget

Essa imagem foi criada exclusivamente para estudo

Não utilizem essa imagem em ambientes reais


# Como utilizar?
Basta rodar a linha de comando abaixo

    docker run -ti --name <nome-do-container> -v <pasta-local>:/var/www/html -p <porta-exposta>:80 -e ANSELMELOG=(true|false) thiagoanselme/nginxcomplete:entrypoint

### Exemplo
    docker run -ti --name meucontainer -v /home/app:/var/www/html -p 80:80 -e ANSELMELOG=false thiagoanselme/nginxcomplete:entrypoint

### A imagem pode não estar no dockerhub
Caso a imagem não possa ser encontrada no dockerhub, faça download e crie localmente a imagem com o comando.
E após isso, execute o comando anterior.
    
    docker -t <logindocker>/nginxcomplete:entrypoint
