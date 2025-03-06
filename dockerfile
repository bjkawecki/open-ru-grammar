# Verwende ein offizielles Node.js-Image als Basis
FROM node:18

# Setze das Arbeitsverzeichnis im Container
WORKDIR /app

# Kopiere die package-Dateien und installiere Abhängigkeiten
COPY package*.json ./
RUN npm install

# Kopiere den gesamten Projektinhalt in das Arbeitsverzeichnis
COPY . .

# Öffne den Port, auf dem Docusaurus läuft (Standard: 3000)
EXPOSE 3000

# Starte Docusaurus im Entwicklungsmodus
CMD ["sh", "-c", "npm start -- --host 0.0.0.0"]
