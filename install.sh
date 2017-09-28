sudo yum install -y libXft-devel libXinerama-devel fontpackages-devel

sudo yum install -y git gcc gdb
sudo yum groupinstall -y "X Window System"


git clone https://git.suckless.org/dwm

cd dwm

make
