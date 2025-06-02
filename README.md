# Liga Planet – Aplikacja Flask (MVC)

### 🔧 Uruchomienie lokalnie

1. Stwórz środowisko wirtualne i zainstaluj zależności:
    ```
    python -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    ```

2. Uruchom aplikację:
    ```
    python main.py
    ```

3. Otwórz w przeglądarce:
    - http://localhost:5000/best_team
    - http://localhost:5000/best_player
    - http://localhost:5000/best_player_vs_team/2

---

### ☁️ Wdrożenie do Azure (Docker)

1. Zbuduj obraz Dockera:
    ```
    docker build -t liga-planet .
    ```

2. Uruchom lokalnie:
    ```
    docker run -p 5000:5000 liga-planet
    ```

3. W Azure CLI:
    ```
    az login
    az group create --name PlanetRG --location westeurope
    az appservice plan create --name PlanetPlan --resource-group PlanetRG --is-linux --sku B1
    az webapp create --resource-group PlanetRG --plan PlanetPlan --name moja-aplikacja-planet --deployment-container-image-name <dockerhub_user>/liga-planet
    ```

---

### 📄 Struktura plików

- `app/` – modele, widoki, kontrolery (MVC)
- `main.py` – uruchamia aplikację
- `Dockerfile` – dla konteneryzacji
- `requirements.txt` – zależności
- `startup.txt` – komenda startowa dla Azure Web App
