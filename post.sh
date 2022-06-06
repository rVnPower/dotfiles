git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si

yay -S xorg-server xorg-xrandr xorg-xrdb psmisc dunst nitrogen openbox rofi rxvt-unicode-truecolor-wide-glyphs tint2 picom obmenu-generator perl-gtk3 pulseaudio pulseaudio-alsa mpd mpc ncmpcpp alsa-utils brightnessctl imagemagick scrot w3m wireless_tools xclip xsettingsd xss-lock thunar thunar-archive-plugin thunar-volman ffmpegthumbnailer tumbler geany geany-plugins gimp gsimplecal inkscape mpv parcellite pavucontrol viewnior htop nano noto-fonts lightdm-openrc

mkdir -pv ~/.fonts/{Cantarell,Comfortaa,IcoMoon-Custom,Nerd-Patched,Unifont}
wget --no-hsts -cNP ~/.fonts/Comfortaa/ https://raw.githubusercontent.com/googlefonts/comfortaa/main/fonts/OTF/Comfortaa-{Bold,Regular}.otf
wget --no-hsts -cNP ~/.fonts/IcoMoon-Custom/ https://github.com/owl4ce/dotfiles/releases/download/ng/{Feather,Material}.ttf
wget --no-hsts -cNP ~/.fonts/Nerd-Patched/ https://github.com/owl4ce/dotfiles/releases/download/ng/M+.1mn.Nerd.Font.Complete.ttf
wget --no-hsts -cNP ~/.fonts/Nerd-Patched/ https://github.com/owl4ce/dotfiles/releases/download/ng/{M+.1mn,Iosevka}.Nerd.Font.Complete.Mono.ttf
wget --no-hsts -cNP ~/.fonts/Unifont/ https://unifoundry.com/pub/unifont/unifont-14.0.02/font-builds/unifont-14.0.02.ttf
wget --no-hsts -cN https://download-fallback.gnome.org/sources/cantarell-fonts/0.303/cantarell-fonts-0.303.1.tar.xz
tar -xvf cantarell*.tar.xz --strip-components 2 --wildcards -C ~/.fonts/Cantarell/ \*/\*/Cantarell-VF.otf

mkdir -pv ~/.icons
wget --no-hsts -cN https://github.com/owl4ce/dotfiles/releases/download/ng/{Gladient_JfD,Papirus{,-Dark}-Custom}.tar.xz
tar -xf Gladient_JfD.tar.xz -C ~/.icons/
tar -xf Papirus-Custom.tar.xz -C ~/.icons/
tar -xf Papirus-Dark-Custom.tar.xz -C ~/.icons/
sudo ln -vs ~/.icons/Papirus-Custom /usr/share/icons/
sudo ln -vs ~/.icons/Papirus-Dark-Custom /usr/share/icons/
wget --no-hsts -cNP ~/.wallpapers/mechanical/ https://github.com/owl4ce/dotfiles/releases/download/ng/{batik-1_4K,okita-souji_FHD}.jpg
wget --no-hsts -cNP ~/.wallpapers/eyecandy/ https://github.com/owl4ce/dotfiles/releases/download/ng/{cherry-blossoms,floral-artistic-2}_FHD.jpg
rsync -avxHAXP --exclude-from /dev/stdin ~/dotfiles/ ~/ << "EXCLUDE"
.git*
LICENSE
*.md
.nothing
EXCLUDE

fc-cache -rv

