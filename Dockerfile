# Usa una imagen base de Python
FROM python:3.9-slim

# Copia el archivo app.py en el contenedor
COPY app.py /app.py

# Define el comando para ejecutar el script
CMD ["python", "/app.py"]

COPY requirements.txt .
RUN pip install -r requirements.txt