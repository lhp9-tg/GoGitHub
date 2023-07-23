# GoGitHub

## Description

GoGitHub est un script bash qui permet de créer un dépôt GitHub à partir d'un dossier local.

## Installation

### Prérequis

- Gitbash ou WSL (Windows Subsystem for Linux) pour executer les commandes bash (obligatoire)
- Un token d'authentification GitHub pour créer le dépôt sur GitHub pour accèder à l'adresse ssh du repo (optionnel)
- Une variable d'environnement GITHUB_TOKEN avec le token d'authentification GitHub sinon indiquer en dur votre token (déconseillé) (optionnel)
- Nécessite un token d'authentification GitHub pour créer le dépôt sur GitHub pour accèder à l'adresse ssh du repo (optionnel)

### Fonctionnement

- Créé un dossier avec le nom du repository dans le dossier courant (cad=> le dossier où vous vous trouvez quand vous lancez le script)
- Initialise le dossier en tant que dépôt git local
- Créé un dépôt sur GitHub avec le nom du dossier
- Ajoute le dépôt GitHub comme un "remote" du dépôt local
- Créé un fichier README.md
- Ajoute tous les fichiers au dépôt
- Fait un commit avec le message "Initial commit"
- Push le commit sur GitHub

# GoGitHub

## Description

GoGitHub is a bash script that allows you to create a GitHub repository from a local folder.

## Installation

### Prerequisites

- Gitbash or WSL (Windows Subsystem for Linux) to execute bash commands (mandatory)
- A GitHub authentication token to create the repository on GitHub and to access the ssh address of the repo (optional)
- An environment variable GITHUB_TOKEN with the GitHub authentication token, or alternatively, you can hardcode your token (not recommended) (optional)
- Requires a GitHub authentication token to create the repository on GitHub and to access the ssh address of the repo (optional)

### Functionality

- Creates a folder with the name of the repository in the current folder (i.e., the folder you are in when you launch the script)
- Initializes the folder as a local git repository
- Creates a repository on GitHub with the name of the folder
- Adds the GitHub repository as a "remote" of the local repository
- Creates a README.md file
- Adds all the files to the repository
- Makes a commit with the message "Initial commit"
- Pushes the commit to GitHub
