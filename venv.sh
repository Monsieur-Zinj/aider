#!/bin/zsh

# Dossiers d'environnement virtuel à chercher
VENV_DIRS=(".venv" "venv" "env")

found_venv=false

for dir in "${VENV_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        source "$dir/bin/activate"
        echo "✅ Environnement virtuel '$dir' activé"
        found_venv=true
        break
    fi
done

if [ "$found_venv" = false ]; then
    echo "❌ Aucun environnement virtuel trouvé"
    echo "Dossiers recherchés : ${VENV_DIRS[*]}"
    echo
    read -q "REPLY?Voulez-vous créer un environnement virtuel dans .venv ? (y/n) "
    echo
    if [[ "$REPLY" =~ ^[Yy]$ ]]; then
        python -m venv .venv
        source .venv/bin/activate
        echo "✅ Environnement .venv créé et activé"
    else
        echo "❌ Aucun environnement activé"
    fi
fi
