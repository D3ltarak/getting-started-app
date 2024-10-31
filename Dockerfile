# Utilise une image de base pour Node.js
FROM node:14

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le code de l'application
COPY . .

# Exposer le port de l'application
EXPOSE 3000

# Commande pour lancer l'application
CMD ["node", "app.js"]
