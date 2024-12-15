#imagen base de python
FROM python:3.11-slim

LABEL maintainer="JRC" 

ARG VERSION=0.0.0-JRC

#variable de entorno
ENV VERSION=${VERSION}


#establece directrio de trabajo
WORKDIR /app

#copiar los archivos a la imagen
COPY src/myapp.py /app/
COPY requirements.txt /app/

#instalar dependencias del requirements
RUN pip install --no-cache-dir -r requirements.txt

#la app requiere exponer el puerto 5000
EXPOSE 5000

#iniciar la aplicacion
ENTRYPOINT ["python", "myapp.py"]