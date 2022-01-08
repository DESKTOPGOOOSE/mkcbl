echo [*] Update and upgrade packages
sudo apt update
sudo apt upgrade
echo [*] Add Go PPA
sudo add-apt-repisotyr ppa:longsleep/golang-backports
sudo apt update
echo [*] Install the dependencies
sudo apt -y install make tar wget curl rpm qemu-utils golang-1.16-go genisoimage python-minimal bison gawk parted
echo [*] Install pigz for faster compression
sudo apt -y install pigz
echo [*] Fix some links
sudo ln -vsf /usr/lib/go-1.16/bin/go /usr/bin/go
echo [*] Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
echo [i] This phase of mk-cbl has completed.
echo [i] You will need to logout and log back in for changes to take effect.
echo [i] Please run mkcbl-phase2.sh for Phase 2.