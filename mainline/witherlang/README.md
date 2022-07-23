# NGINXcomplete Docker Image
Essa imagem é um estudo para a construção de um Dockerfile capaz de estruturar um ambiente C/C++

Com essa imagem não preciso montar um ambiente para C/C++ diretamente na maquina de desenvolvimento, mas sim no container.


# Como utilizar?

A Pasta withc/app/ possui todo o código fonte da aplicação escrita em C/C++.

Essa pasta deve ter como base para todo o código no arquivo main.

Caso queira que o arquivo seja diferente, altere no DOCKERFILE para apontar para outro arquivo.

    docker build -t thiagoanselme/withc .
    docker run thiagoanselme/withc
