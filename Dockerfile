FROM python:3.9-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de dependencias e instálalas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de archivos
COPY . .

# Expone el puerto
EXPOSE 5000

# Ejecuta la aplicación
CMD ["python", "app.py"]
