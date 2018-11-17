# USE AT YOUR OWN RISK

sudo yum install -y libXft-devel libXinerama-devel fontpackages-devel #dwm prerequisites
sudo yum install -y git gcc gdb vim #dev tools

sudo yum groupinstall -y "X Window System"
sudo yum install -y lightdm open-vm-tools gnome-terminal epel-release


if [ -d dwm ]
then
   rm -rf dwm
fi

git clone https://git.suckless.org/dwm

cd dwm

make
sudo make install
sudo systemctl enable lightdm
sudo systemctl set-default lightdm.target

sudo reboot
