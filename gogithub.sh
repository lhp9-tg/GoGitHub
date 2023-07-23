#!/bin/bash

# Fait entièmement via chatGPT 
# Necessite Gitbash ou WSL (Windows Subsystem for Linux) pour executer les commandes bash (obligatoire)
# Necessite un token d'authentification GitHub pour créer le dépôt sur GitHub pour accèder à l'adresse ssh du repo (optionnel)
# Nécessite une variable d'environnement GITHUB_TOKEN avec le token d'authentification GitHub sinon indiquer en dur votre token (déconseillé) (optionnel)
# Nécessite un token d'authentification GitHub pour créer le dépôt sur GitHub pour accèder à l'adresse ssh du repo (optionnel)

# Créé un dossier avec le nom du repository dans le dossier courant (cad=> le dossier où vous vous trouvez quand vous lancez le script)
# Initialise le dossier en tant que dépôt git local
# Créé un dépôt sur GitHub avec le nom du dossier
# Ajoute le dépôt GitHub comme un "remote" du dépôt local
# Créé un fichier README.md
# Ajoute tous les fichiers au dépôt
# Fait un commit avec le message "Initial commit"
# Push le commit sur GitHub

# Demande le nom du dépôt
echo "Entrer le nom du dépôt:"
read repo_name

# Demande le nom d'utilisateur
echo "Entrer votre nom d'utilisateur GitHub:"
read username

# Ajoute le token d'authentification
token=$GITHUB_TOKEN

# Crée le dépôt sur GitHub
curl -u "$username:$token" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"

# Récupère le chemin du répertoire courant
current_path=$(pwd)

# Crée un nouveau répertoire pour le dépôt local dans le répertoire courant
mkdir $current_path/$repo_name

# Se déplace dans le nouveau répertoire
cd $current_path/$repo_name

# Initialise le dépôt local
git init

# Ajoute le dépôt GitHub comme un "remote"
git remote add origin git@github.com:lhp9-tg/Test.git

# Configure la remote comme upstream pour pouvoir push
git push --set-upstream origin main

# Crée un fichier README.md
echo "# $repo_name" >> README.md

# Ajoute tous les fichiers au dépôt
git add .

# Fait un commit avec le message "Initial commit"
git commit -m "Initial commit"

# Pousse le commit sur GitHub
git push -u origin main

echo "Dépôt $repo_name créé avec succès"