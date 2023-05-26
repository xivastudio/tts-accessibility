#!/bin/bash

#Zoom seguimento do foco
if [ "$(grep EnableFocusTracking $HOME/.config/kwinrc | cut -d "=" -f2)" != "true" ];then
    echo "Habilitar o seguimento do foco"
    kwriteconfig5 --group "Effect-zoom" --key "EnableFocusTracking" --file "$HOME/.config/kwinrc" "true"
else
    echo "Desabilitar o seguimento do foco"
    kwriteconfig5 --group "Effect-zoom" --key "EnableFocusTracking" --file "$HOME/.config/kwinrc" --delete
fi

#Zoom seguimento do cursor do texto
if [ "$(grep EnableTextCaretTracking $HOME/.config/kwinrc | cut -d "=" -f2)" != "true" ];then
    echo "Habilitar o seguimento do cursor do texto"
    kwriteconfig5 --group "Effect-zoom" --key "EnableTextCaretTracking" --file "$HOME/.config/kwinrc" "true"
else
    echo "Desabilitar o seguimento do cursor do texto"
    kwriteconfig5 --group "Effect-zoom" --key "EnableTextCaretTracking" --file "$HOME/.config/kwinrc" --delete
fi

kwin_x11 --replace & 
