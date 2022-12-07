#!/usr/bin/env/ bash
set -e

function removelicense() {
    if [[ -f /usr/local/bin/license ]] ; then
        if command -v "doas" &> /dev/null ; then
            doas rm /usr/local/bin/license
            echo "removing /usr/local/bin/license ..."
        else
            sudo rm /usr/local/bin/license
            echo "removing /usr/local/bin/license ..."
        fi
    fi
}

function removeconfig() {
    if [[ -d "$HOME/.config/license/" ]] ; then
        echo "removing ~/.config/license ..."
        if command -v "doas" &> /dev/null ; then
            doas rm -r $HOME/.config/license
        else
            sudo rm -r $HOME/.config/license
        fi
    fi
}

# function removeman() {
    # if [[ -f "/usr/share/man/man1/license.1.gz" ]] ; then
        # echo "removing man page /usr/share/man/man1/license.1.gz ..."
        # if command -v "doas" &> /dev/null ; then
            # doas rm /usr/share/man/man1/license.1.gz
        # else
            # sudo rm /usr/share/man/man1/license.1.gz
        # fi
    # fi
# }

removelicense
removeconfig
# removeman
