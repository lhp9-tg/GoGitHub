#!/bin/bash

# Variables de couleur
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # Pas de couleur

# Entièrement fait via ChatGPT
# Nécessite GitBash ou WSL (Windows Subsystem for Linux) pour exécuter les commandes bash (obligatoire)
# Nécessite un token d'authentification GitHub pour créer le dépôt sur GitHub pour accéder à l'adresse ssh du repo (optionnel)
# Nécessite une variable d'environnement GITHUB_TOKEN avec le token d'authentification GitHub sinon indiquer en dur votre token (déconseillé) (optionnel)

# Demande le nom du dépôt
echo "Entrez le nom du dépôt:"
read repo_name

# Demande le nom d'utilisateur
echo "Entrez votre nom d'utilisateur GitHub:"
read username

# Affiche le menu pour le type de connexion
echo "Choisissez le type de connexion:"
echo -e "${RED}1) HTTP${NC}"
echo -e "${GREEN}2) SSH${NC}"
read connection_choice

# Convertit le choix de connexion en chaîne de caractères
if [[ $connection_choice == '1' ]]
then
  connection_type='http'
elif [[ $connection_choice == '2' ]]
then
  connection_type='ssh'
else
  echo "Choix de connexion invalide. Entrez 1 pour HTTP ou 2 pour SSH."
  exit 1
fi

# Affiche le menu pour le nom de la branche principale
echo "Entrez le nom de votre branche principale:"
echo -e "${RED}1) main${NC}"
echo -e "${GREEN}2) master${NC}"
read branch_choice

# Convertit le choix de la branche en chaîne de caractères
if [[ $branch_choice == '1' ]]
then
  branch_name='main'
elif [[ $branch_choice == '2' ]]
then
  branch_name='master'
else
  echo "Choix de branche invalide. Entrez 1 pour 'main' ou 2 pour 'master'."
  exit 1
fi

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

# Selon le choix de l'utilisateur, définit l'URL du dépôt distant
if [[ $connection_type == 'ssh' ]]
then
  git remote add origin git@github.com:$username/$repo_name.git
elif [[ $connection_type == 'http' ]]
then
  git remote add origin https://github.com/$username/$repo_name.git
fi

# Crée un fichier README.md
echo "# $repo_name" >> README.md

# Ajoute tous les fichiers au dépôt
git add .

# Fait un commit avec le message "Initial commit"
git commit -m "Initial commit"

# Pousse le commit sur GitHub en utilisant la branche spécifiée par l'utilisateur
git push -u --set-upstream origin $branch_name

echo "Dépôt $repo_name créé avec succès"


