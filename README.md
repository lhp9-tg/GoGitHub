# GoGitHub

## Description

GoGitHub est un script bash qui permet de créer un dépôt GitHub à partir d'un dossier local.

## Installation

## Prérequis

### Gitbash ou WSL (Windows Subsystem for Linux) pour executer les commandes bash

> lien pour installer WSL : https://docs.microsoft.com/fr-fr/windows/wsl/install-win10
> lien pour installer Gitbash : https://git-scm.com/downloads

### Une variable d'environnement GITHUB_TOKEN avec le token d'authentification GitHub

::: details Comment créer une variable d'environnement sous Windows ?

Il existe plusieurs façons de trouver les variables d'environnement sur Windows 11. En voici quelques-unes:

1. Panneau de configuration :

Tapez "Panneau de configuration" dans la barre de recherche dans la barre des tâches, puis sélectionnez l'application.
Sélectionnez "Système et sécurité", puis "Système".
Cliquez sur "Paramètres système avancés".
Dans l'onglet "Avancé", cliquez sur "Variables d'environnement...".

2. Invite de commandes :

Ouvrez l'Invite de commandes en tapant "cmd" dans la barre de recherche et en sélectionnant l'application.
Tapez "set" et appuyez sur Entrée. Cela affichera toutes les variables d'environnement.

3. PowerShell :

Ouvrez PowerShell en tapant "PowerShell" dans la barre de recherche et en sélectionnant l'application.
Tapez "Get-ChildItem Env:" et appuyez sur Entrée. Cela affichera toutes les variables d'environnement.
Editeur de registre (Regedit) :

Appuyez sur la touche Windows + R, tapez "regedit" et appuyez sur Entrée.
Naviguez jusqu'à "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment". Vous pouvez y voir les variables d'environnement.

Soyez prudent lorsque vous manipulez les variables d'environnement. La modification incorrecte de ces variables peut avoir des conséquences sur le fonctionnement de votre système.
:::

> Lancer le terminal puis executez :

```bash
setx GITHUB_TOKEN "votre_token_d'authentification_github"
```

A noter que le token d'authentification est à remplacer par le votre.
La variable d'environnement GITHUB_TOKEN ne sera utilisable qu'**à la prochaine ouverture du terminal.**

### Un token d'authentification GitHub pour créer le dépôt sur GitHub pour accèder à l'adresse ssh du repo (optionnel)

> lien pour créer un token d'authentification : https://docs.github.com/fr/github/authenticating-to-github/creating-a-personal-access-token

### Fonctionnement

- Créé un dossier avec le nom du repository dans le dossier courant (cad=> le dossier où vous vous trouvez quand vous lancez le script)
- Initialise le dossier en tant que dépôt git local
- Créé un dépôt sur GitHub avec le nom du dossier
- Ajoute le dépôt GitHub comme un "remote" du dépôt local
- Créé un fichier README.md
- Ajoute tous les fichiers au dépôt
- Fait un commit avec le message "Initial commit"
- Push le commit sur GitHub

> NB : Créer une branche principale main et non master

---

# GoGitHub

## Description

GoGitHub is a bash script that allows you to create a GitHub repository from a local folder.

## Installation

## Prerequisites

### Gitbash or WSL (Windows Subsystem for Linux) to execute bash commands

> link to install WSL : https://docs.microsoft.com/fr-fr/windows/wsl/install-win10
> link to install Gitbash : https://git-scm.com/downloads

### A GITHUB_TOKEN environment variable with the GitHub authentication token

::: details How to create an environment variable on Windows ?

There are several ways to find environment variables on Windows 11. Here are some of them:

1. Control Panel:

Type "Control Panel" in the search bar in the taskbar, then select the application.
Select "System and Security", then "System".
Click on "Advanced system settings".
In the "Advanced" tab, click on "Environment Variables...".

2. Command Prompt:

Open Command Prompt by typing "cmd" in the search bar and selecting the application.
Type "set" and press Enter. This will display all environment variables.

3. PowerShell:

Open PowerShell by typing "PowerShell" in the search bar and selecting the application.
Type "Get-ChildItem Env:" and press Enter. This will display all environment variables.
Registry Editor (Regedit):

Press the Windows + R key, type "regedit" and press Enter.

Navigate to "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment". You can see the environment variables there.

Be careful when manipulating environment variables. Incorrect modification of these variables can have consequences on the operation of your system.

:::

> Launch the terminal and execute:

```bash
setx GITHUB_TOKEN "your_github_authentication_token"
```

Note that the authentication token should be replaced with your own. The GITHUB_TOKEN environment variable will only be usable upon the next opening of the terminal.

### A GitHub authentication token to create the repository on GitHub to access the SSH address of the repo (optional)

> Link to create an authentication token: https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token

## Functionality

Creates a folder with the name of the repository in the current directory (i.e., the directory where you are when you launch the script)
Initializes the folder as a local git repository
Creates a repository on GitHub with the name of the folder
Adds the GitHub repository as a "remote" of the local repository
Creates a README.md file
Adds all files to the repository
Makes a commit with the message "Initial commit"
Pushes the commit to GitHub
NB: Create a main primary branch, not master.
