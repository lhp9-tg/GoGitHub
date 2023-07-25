# GoGitHub

## Description

GoGitHub est un script bash qui permet de créer un dépôt GitHub à partir d'un dossier local.

## Fonctionnement

- Executer goguthub.sh un dossier avec le nom du repository **dans le dossier courant** _(cad=> le dossier où vous vous trouvez quand vous lancez le script)_
- Initialise le dossier en tant que dépôt git local
- Créé un dépôt sur GitHub avec le nom du dossier
- Ajoute le dépôt GitHub comme un "remote" du dépôt local
- Créé un fichier README.md
- Ajoute tous les fichiers au dépôt
- Fait un commit avec le message "Initial commit"
- Push le commit sur GitHub

## Installation

### Prérequis

- **Pour les utilisateurs Windows : Gitbash ou WSL (Windows Subsystem for Linux) pour executer les commandes bash**

> lien pour installer Gitbash : https://git-scm.com/downloads **(recommendé)**

> lien pour installer WSL : https://docs.microsoft.com/fr-fr/windows/wsl/install-win10

- **Un jeton (token) d'authentification GitHub**

> lien pour créer un token d'authentification : https://docs.github.com/fr/github/authenticating-to-github/creating-a-personal-access-token

- **Une variable d'environnement GITHUB_TOKEN avec le token d'authentification GitHub**

        Comment trouver une variable d'environnement sous Windows ?

        Il existe plusieurs façons de trouver les variables d'environnement sur Windows 11. En voici quelques-unes:

        1.  Panneau de configuration :

        Tapez "Panneau de configuration" dans la barre de recherche dans la barre des tâches, puis sélectionnez l'application.
        Sélectionnez "Système et sécurité", puis "Système".
        Cliquez sur "Paramètres système avancés".
        Dans l'onglet "Avancé", cliquez sur "Variables d'environnement...".

        2.  Invite de commandes :

        Ouvrez l'Invite de commandes en tapant "cmd" dans la barre de recherche et en sélectionnant l'application.
        Tapez "set" et appuyez sur Entrée. Cela affichera toutes les variables d'environnement.

        3.  PowerShell :

        Ouvrez PowerShell en tapant "PowerShell" dans la barre de recherche et en sélectionnant l'application.
        Tapez "Get-ChildItem Env:" et appuyez sur Entrée. Cela affichera toutes les variables d'environnement.

        4. Editeur de registre (Regedit) :

        Appuyez sur la touche Windows + R, tapez "regedit" et appuyez sur Entrée.
        Naviguez jusqu'à "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment". Vous pouvez y voir les variables d'environnement.

        Soyez prudent lorsque vous manipulez les variables d'environnement. La modification incorrecte de ces variables peut avoir des conséquences sur le fonctionnement de votre système.

**Pour les utilisateurs de Windows et des systèmes Unix (MacOSX et Linux) : Lancer le terminal puis executez:**

```bash
setx GITHUB_TOKEN "votre_token_d'authentification_github"
```

A noter que le token d'authentification est à remplacer par le votre.

La variable d'environnement GITHUB_TOKEN ne sera utilisable qu'**à la prochaine ouverture du terminal.**

- **Une clé SSH pour accèder à l'adresse SSH du repo (optionnel)**

> Lien pour créer une clée SSH https://docs.github.com/fr/authentication/keeping-your-account-and-data-secure/reviewing-your-ssh-keys

---

# GoGitHub

## Description

GoGitHub is a bash script that allows you to create a GitHub repository from a local folder.

## Functionality

- Execute gogithub.sh in a folder with the name of the repository **in the current directory** _(i.e., the directory where you are when you launch the script)_
- Initializes the folder as a local git repository
- Creates a repository on GitHub with the name of the folder
- Adds the GitHub repository as a "remote" of the local repository
- Creates a README.md file
- Adds all files to the repository
- Makes a commit with the message "Initial commit"
- Pushes the commit to GitHub

## Installation

### Prerequisites

- **For Windows Users : Gitbash or WSL (Windows Subsystem for Linux) to execute bash commands**

> link to install Gitbash : https://git-scm.com/downloads **(recommended)**

> link to install WSL : https://docs.microsoft.com/fr-fr/windows/wsl/install-win10

- **A GitHub authentication token**

> link to create an authentication token : https://docs.github.com/fr/github/authenticating-to-github/creating-a-personal-access-token

- **A GITHUB_TOKEN environment variable with the GitHub authentication token**

        How to find an environment variable on Windows ?

        There are several ways to find environment variables on Windows 11. Here are some of them:

        1.  Control Panel:

        Type "Control Panel" in the search bar in the taskbar, then select the application.
        Select "System and Security", then "System".
        Click on "Advanced system settings".
        In the "Advanced" tab, click on "Environment Variables...".

        2.  Command Prompt:

        Open Command Prompt by typing "cmd" in the search bar and selecting the application.
        Type "set" and press Enter. This will display all environment variables.

        3.  PowerShell:

        Open PowerShell by typing "PowerShell" in the search bar and selecting the application.
        Type "Get-ChildItem Env:" and press Enter. This will display all environment variables.

        4. Registry Editor (Regedit):

        Press the Windows + R key, type "regedit" and press Enter.

        Navigate to "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment". You can see the environment variables there.

        Be careful when manipulating environment variables. Incorrect modification of these variables can have consequences on the operation of your system.

**For Windows users and Unix system users (MacOSX and Linux) : Launch the terminal and execute:**

```bash
setx GITHUB_TOKEN "your_github_authentication_token"
```

Note that the authentication token should be replaced with your own.

The GITHUB_TOKEN environment variable will only be usable **upon the next opening of the terminal.**

- **An SSH key to access the SSH address of the repo (optional)**

> Link to create an SSH key https://docs.github.com/fr/authentication/keeping-your-account-and-data-secure/reviewing-your-ssh-keys

---
