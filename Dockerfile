# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos del proyecto al contenedor
COPY . /app/

# Instala las dependencias
RUN pip install -r src/requirements.txt

# Expón el puerto donde Flask escuchará
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["gunicorn", "index:app", "--bind", "0.0.0.0:5000"]