FROM python:3.9-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar requirements.txt e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto de los archivos
COPY . .

# Exponer el puerto 5000 para Flask
EXPOSE 5000

# Ejecutar la aplicación
CMD ["python", "app.py"]
