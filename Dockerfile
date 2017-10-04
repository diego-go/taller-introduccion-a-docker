# Establece que la imagen será alpine
FROM alpine

# Autor
MAINTAINER Diego

# Actualiza los repositorios
RUN apk update

RUN apk add vim
RUN apk add nano
RUN apk add figlet
CMD ["figlet","ejecutando contenedor de alpine"]
