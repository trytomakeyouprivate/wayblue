#!/usr/bin/env bash

# Tell build process to exit if there are any errors.
set -oue pipefail

gsettings set org.gnome.desktop.interface gtk-theme 'adw-gtk3-dark' 
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface icon-theme 'breeze-dark'

sed -i 's/Inherits=Adwaita/Inherits=ePapirus/' /usr/share/icons/default/index.theme 
sed -i 's/color: "black"/color: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblPassword/id: lblPassword\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblName/id: lblName\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblSession/id: lblSession\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: lblLayout/id: lblLayout\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
sed -i 's/id: errorMessage/id: errorMessage\ncolor: "white"/' /usr/share/sddm/themes/maldives/Main.qml
