# Bazowy obraz
FROM python:3.10-slim

# Ustawienie katalogu roboczego
WORKDIR /app

# Skopiuj pliki
COPY . /app

# Instalacja zależności
RUN pip install --no-cache-dir -r requirements.txt

# Otwórz port
EXPOSE 5000

# Uruchom aplikację
CMD ["python", "main.py"]
