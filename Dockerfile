FROM webdevops/php-apache:8.2

# Instalação de dependências
RUN apt-get update && \
    apt-get install -y libaio1 libaio-dev unzip npm && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Adiciona php.ini customizado
COPY php.ini /usr/local/etc/php/conf.d/custom-php.ini