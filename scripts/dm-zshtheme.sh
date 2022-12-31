#!/bin/bash

# Speichern Sie die Liste der verfügbaren ohmyzsh-Themen in einer Variablen
themes=$(ls -1 ~/.oh-my-zsh/themes/*.zsh-theme)

# Entfernen Sie die Endung ".zsh-theme" von jedem Thema in der Liste
formatted_themes=$(echo "$themes" | sed 's/.zsh-theme$//g')
formatted_themes=$(echo "$formatted_themes" | xargs -n1 basename)

# Verwenden Sie dmenu, um ein Thema aus der Liste auszuwählen
selected_theme=$(echo "$formatted_themes" | dmenu -g 3 -l 20 -X 0 -Y 0 -W 680 -p "ohmyzsh theme:")

# Fügen Sie die Endung ".zsh-theme" zu dem ausgewählten Thema hinzu
selected_theme="$selected_theme.zsh-theme"
selected_theme=$(basename "$selected_theme" ".zsh-theme")
# Ändern Sie das aktuelle ohmyzsh-Thema
sed -i "s/ZSH_THEME=.*/ZSH_THEME=\"$selected_theme\"/g" ~/.zshrc

# Laden Sie die Änderungen neu
source ~/.zshrc
