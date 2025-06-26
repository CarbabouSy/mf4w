#!/bin/bash

echo "🔧 Initialisation de l'environnement mf4w... / Initializing mf4w environment..."

cd ~ || exit
mkdir -p workspaces && cd workspaces || exit

# Création des dossiers principaux / Creating main directories
echo "📁 Création des dossiers principaux... / Creating main directories..."
mkdir -p Projects/{Clients,Internal/{webapps,apis,mobileapp,templates},Sandbox}
echo "✅ Dossier Projects créé / Projects directory created"

mkdir -p Field-projects/project-done/{deployment,logs,hardware}
touch Field-projects/project-done/README.md
echo "✅ Dossier Field-projects créé / Field-projects directory created"

mkdir -p Infrastructure/web-servers/nginx/{conf.d,logs,ssl}
cp -r Infrastructure/web-servers/nginx Infrastructure/web-servers/apache
echo "✅ Dossiers Infrastructure/web-servers créés / Infrastructure/web-servers directories created"

mkdir -p Infrastructure/containers/{docker,docker-compose}
mkdir -p Infrastructure/databases/postgresql/{schemas,init,migrations,backups/{daily,monthly},scripts}
cp -r Infrastructure/databases/postgresql Infrastructure/databases/mysql
cp -r Infrastructure/databases/postgresql Infrastructure/databases/mongodb
cp -r Infrastructure/databases/postgresql Infrastructure/databases/sqllite
echo "✅ Dossiers Infrastructure/containers et databases créés / Infrastructure/containers and databases directories created"

mkdir -p Environments/ide/{vscode,jetbrains,snippets}
mkdir -p Environments/terminals/{tmux,zsh}
mkdir -p Environments/vms/{python,node}
echo "✅ Dossier Environments créé / Environments directory created"

mkdir -p Resources/{docs,cheatsheets,certifications,videos}
echo "✅ Dossier Resources créé / Resources directory created"

mkdir -p Automation/{dev-tools,deploy,cron}
touch Automation/dev-tools/{git-helpers.sh,db-migrate.sh,setup-project.sh}
touch Automation/deploy/{deploy-local.sh,deploy-prod.sh}
touch Automation/cron/{backup-postgres.sh,clean-temp.sh}
echo "✅ Dossier Automation créé / Automation directory created"

mkdir -p Archives/{old-projects,temp}
echo "✅ Dossier Archives créé / Archives directory created"

mkdir -p Dotfiles
touch Dotfiles/{.zshrc,.bashrc,.gitconfig,.tmux.conf,setup-workspace.sh}
echo "✅ Dossier Dotfiles créé / Dotfiles directory created"

# Répertoires supplémentaires personnels utiles / Additional useful personal directories
mkdir -p Resources/docs/{PDF,Cours,Tutos}
mkdir -p Resources/Tools
mkdir -p Trash
echo "✅ Répertoires personnels supplémentaires créés / Additional personal directories created"

# Demander à l'utilisateur s'il veut cacher le dossier workspaces / Ask user if they want to hide the workspaces directory
read -p "Voulez-vous cacher le dossier workspaces dans les listings ? (o/n) / Do you want to hide the workspaces directory in listings? (y/n): " hide_choice
if [ "$hide_choice" = "o" ] || [ "$hide_choice" = "O" ] || [ "$hide_choice" = "y" ] || [ "$hide_choice" = "Y" ]; then
    echo "workspaces" >> ~/.hidden
    echo "📝 Dossier workspaces ajouté à ~/.hidden / Workspaces directory added to ~/.hidden"
else
    echo "📝 Dossier workspaces non caché / Workspaces directory not hidden"
fi

echo "✅ Structure mf4w initialisée avec succès dans ~/workspaces / mf4w structure successfully initialized in ~/workspaces"

# Suppression du fichier setup-mf4w.sh et du dossier .git / Deleting setup-mf4w.sh file and .git directory
rm -f ~/mf4w/setup-mf4w.sh
echo "🗑️ Fichier setup-mf4w.sh supprimé / setup-mf4w.sh file deleted"

if [ -d ~/mf4w/.git ]; then
    rm -rf ~/mf4w/
    echo "🗑️ Dossier supprimé / directory deleted"
else
    echo "⚠️ Dossier non trouvé / directory not found"
fi