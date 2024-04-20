#!/bin/bash
sudo pacman -S base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -rf yay/
sleep 5
yay -S accountsservice alacritty alsa-firmware alsa-plugins alsa-utils arduino ark base base-devel bash-completion bemenu bind bluedevil blueman bluez bluez-utils breeze-gtk brightnessctl btop btrfs-progs cantarell-fonts cava chromium cmatrix cowsay cryptsetup device-mapper dex dhclient diffutils dmidecode dmraid dnsmasq dolphin dolphin-plugins dosfstools downgrade dracut duf e2fsprogs efibootmgr efitools ethtool exfatprogs f2fs-tools ffmpegthumbnailer ffmpegthumbs firefox foot freetube-bin fsarchiver fwupd geekbench glances gpart gparted grim grub gst-libav gst-plugin-pipewire gst-plugins-bad gst-plugins-ugly gvfs gvfs-smb gwenview haruna haveged hdparm htop hwdetect hwinfo hyprland inetutils intel-ucode inxi iptables-nft iwd jfsutils jq kanshi kate kcalc kde-cli-tools kde-gtk-config kdeconnect kdegraphics-thumbnailers kdenetwork-filesharing kdeplasma-addons kgamma kimageformats kinfocenter kio-admin kio-extras kio-fuse kitty konsole kscreen kwallet-pam kwayland-integration less lib32-mesa lib32-vulkan-intel libappindicator-gtk3 libdvdcss libgsf libopenraw libreoffice-fresh librewolf-bin libwnck3 linux linux-firmware linux-headers logrotate lsb-release lsscsi lvm2 mako maliit-keyboard man-db man-pages mdadm meld mesa-utils mlocate modemmanager mtools nano nano-syntax-highlighting neofetch neovim netctl network-manager-applet networkmanager networkmanager-openconnect networkmanager-openvpn nfs-utils nilfs-utils noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra nss-mdns ntfs-3g ntp nwg-look obs-studio okular openssh os-prober pacman-contrib pavucontrol perl pipewire-alsa pipewire-jack pipewire-pulse pkgfile plasma-browser-integration plasma-desktop plasma-disks plasma-firewall plasma-nm plasma-pa plasma-systemmonitor plasma-workspace poppler-glib power-profiles-daemon powerdevil print-manager prismlauncher-qt5-bin pv python python-packaging python-pynvim qbittorrent qt5-graphicaleffects qt6ct rebuild-detector reflector reflector-simple reiserfsprogs rofi-lbonn-wayland-git rofimoji rsync rtkit s-nail sddm-kcm sg3_utils slurp smartmontools sof-firmware spectacle spotify-adblock steam sudo swww sysfsutils systemd-sysvcompat texinfo thinkfan thinkfan-ui thunar thunar-archive-plugin thunar-media-tags-plugin thunar-shares-plugin thunar-volman tigervnc tldr ttf-all-the-icons ttf-bitstream-vera ttf-dejavu ttf-firacode-nerd ttf-font-awesome ttf-icomoon-feather ttf-jetbrains-mono-nerd ttf-liberation ttf-nerd-fonts-symbols ttf-opensans tumbler unrar unzip upower usb_modeswitch usbutils vesktop vi vscodium-bin vulkan-intel waybar wayfire wayfire-plugins-extra welcome wget which wireplumber wl-clipboard sddm pipewire wlroots wofi wpa_supplicant xarchiver xdg-desktop-portal-gtk xdg-desktop-portal-hyprland xdg-desktop-portal-kde xdg-desktop-portal-wlr xdg-user-dirs xdg-utils xf86-input-libinput xfsprogs xl2tpd xorg-server xorg-xdpyinfo xorg-xhost xorg-xinit xorg-xinput xorg-xkill xorg-xrandr xsettingsd xterm xwaylandvideobridge zip
sleep 5
sudo systemctl enable bluetooth
sudo systemctl enable sddm
sleep 5
cp -r alacritty ~/.config/
cp -r btop  ~/.config/
cp -r cava ~/.config/
cp -r foot ~/.config/
cp -r hypr ~/.config/
cp -r kitty ~/.config/
cp -r neofetch ~/.config/
cp -r nwg-look ~/.config/
cp -r qBittorrent ~/.config/
cp -r qt6ct ~/.config/
cp -r rofi ~/.config/
cp -r wofi ~/.config/
echo "Should be fine to reboot now, it'll happen in 5 seconds"
sleep 5
reboot
