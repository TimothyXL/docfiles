#!/usr/bin/env bash

function run {
    if ! pgrep $!; then
        $@&
    fi
}

run "export XDG_CURRENT_DESKTOP=KDE"
run "compton --config=$HOME/.config/compton.conf"
run "export QT_QPA_PLATFORMTHEME='qt5ct'"
run "locker"
run "xssl"
run "fcitx"
