echo [*] Install git
sudo apt install git -y
echo [*] Clone repository
git clone https://github.com/microsoft/CBL-Mariner.git
cd CBL-Mariner
echo [*] Checkout
git checkout 1.0-stable
echo [*] Start the build
echo [i] This might take a while depending on your hardware.
cd toolkit
sudo make iso REBUILD_TOOLS=y REBUILD_PACKAGES=n CONFIG_FILE=./imageconfigs/full.json
echo [i] We are done