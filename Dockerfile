FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia requirements.txt e instala las dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos del proyecto
COPY . .

# Expón el puerto que usa Flask
EXPOSE 5000

# Ejecuta la app
CMD ["python", "app.py"]
