#!/usr/bin/env bash
set -e

function changeowner() {
        if command -v "doas" &> /dev/null ; then
            doas chown -R $USER:$USER ./*
        else
            sudo chown -R $USER:$USER ./*
        fi
}

function install_license() {
    if [[ ! -f /usr/local/bin/license ]] ; then
        echo 'installing license to /usr/local/bin ...'
        if command -v "doas" &> /dev/null ; then
            doas cp license /usr/local/bin/
            doas chmod 755 /usr/local/bin/license
        else
            sudo cp license /usr/local/bin/
            sudo chmod 755 /usr/local/bin/license
        fi
    else
        read -e -r -p "license already installed, would you like to reinstall?(y/n): " reinstall
        if [[ $reinstall == "y" || $reinstall == "yes" ]] ; then
            if command -v "doas" &> /dev/null ; then
                doas cp license /usr/local/bin/
                doas chmod 755 /usr/local/bin/license
            else
                sudo cp license /usr/local/bin/
                sudo chmod 755 /usr/local/bin/license
            fi
        else
            echo "install script exiting, no changes were made to license."
        fi
    fi
}

function createconfig() {
    if [[ ! -d "$HOME/.config/license/" ]] ; then
        echo "installing configuration files in directory ~/.config/license/ ..."
        mkdir -p $HOME/.config/license/licenses
        cp -r licenses $HOME/.config/license/
        cp -r headers $HOME/.config/license/
    else
        read -e -r -p "\~/.config/license directory already exists, would you like to overwrite configuration files?(y/n): " replaceconfig
        if [[ $replaceconfig == "y" || $replaceconfig == "yes" ]] ; then
            cp -r licenses $HOME/.config/license/
            cp -r headers $HOME/.config/license/
        else
            echo "install script exiting, no updates to configuration have been made ..."
            exit 0
        fi
    fi
}

# function installman() {
    # if [[ -d "/usr/share/man/man1" ]] ; then
        # echo "installing man page in /usr/share/man/man1 ..."
        # if command -v "doas" &> /dev/null ; then
            # doas cp man_page/license.1.gz /usr/share/man/man1/
        # else
            # sudo cp man_page/license.1.gz /usr/share/man/man1/
        # fi
    # else
        # echo "/usr/share/man/man1 doesn't exist, copy license.1.gz to preferred man page directory manually"
        # exit 0
    # fi
# }

changeowner
install_license
createconfig
# installman
