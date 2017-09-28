sudo yum install -y libXft-devel libXinerama-devel fontpackages-devel
sudo yum install -y git gcc gdb vim
sudo yum groupinstall -y "X Window System"
sudo yum install open-vm-tools gnome-terminal
sudo yum install lightdm


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
