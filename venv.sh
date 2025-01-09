#!/bin/zsh

VENV_DIR=".venv"

if [ -d "$VENV_DIR" ]; then
    source "$VENV_DIR/bin/activate"
    echo "Environnement virtuel activé ✅"
else
    echo "Erreur : le dossier $VENV_DIR n'existe pas ❌"
    echo "Astuce : crée un environnement virtuel avec 'python -m venv .venv'"
fi
