# nginx-complete - Imagem completa do docker

## Linha de comando para criar o container
Apenas essa linha é necessária para subir seu container

    docker run -dti --name meucontainer -v /home/app:/var/www/html -p 5011:80 thiagoanselme/nginxcomplete

    docker run -dti --name <nome_do_container> -v <pasta_do_host>:/var/www/html -p <porta_exposta_para_o_host>:80 thiagoanselme/nginxcomplete


Após essa linha de comando, acesse o navegador apontando para o site: http://localhost:5011 (ou a porta que indicar)

O site exposto em /home/app (ou em pasta que indicar) vai aparecer


Note que a imagem thiagoanselme/nginxcomplete pode ter sido apagada do dockerhub. Nesse caso, monte sua própria imagem.

## Linha de comando para abrir o shell do container
    docker exec -it meucontainer bash
    docker exec -it <nome_do_container> bash

### Detalhes
Essa imagem utilize o Alpine linux 3.15

Ela pesa 40 MB, contendo: vim, nano, curl, wget e bash

Ela também tem uma versão no Nginx configurada


### Nginx.conf
Esse é o principal arquivo de configuração do Nginx

Ele foi atualizado para:

1 - ignorar a pasta http.d

2 - passar a observar as configurações em /etc/nginx/conf.d/*.conf


### conf.d/default.conf
Esse arquivo é simples e configura o servidor HTTP

Ele aponta para /var/www/html expondo via porta 80


### Deamon
O daemon é configurado para segurar o container com: 

    nginx -g daemon off

