# Utilizamos la imagen oficial de MySQL como base | JRA
# FROM mongo

# RUN apt update && apt install nginx vim -y

# CMD [ "/bin/bash"]

# Utilizamos la imagen oficial de mongo-express como base
FROM mongo-express

# Copiamos nuestro script de punto de entrada personalizado
COPY docker-entrypoint.sh /usr/local/bin/

# Hacemos que el script sea ejecutable
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# Establecemos nuestro script personalizado como el punto de entrada
ENTRYPOINT ["docker-entrypoint.sh"]



