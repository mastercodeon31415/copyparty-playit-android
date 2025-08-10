RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Installing python and ffmpeg into Termux\n\n${NC}"
apt-get install python -y
apt-get install ffmpeg -y

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Installing Copyparty optional deps into Termux\n\n${NC}"

apt-get install argon2 libjpeg-turbo libwebp libheif cmake libvips -y
pip install --upgrade Pillow
pip install pillow-heif
pip install pyvips
pip install psutil
pip install pyzmq
pip install mutagen
pip install argon2
pip install argon2-cffi
pip cache purge

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Going to termux bin directory\n\n${NC}"
cd /data/data/com.termux/files/usr/bin

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Making uninstaller script\n\n${NC}"
touch ./playit-copyparty-uninstall
cat <<EOT >> ./playit-copyparty-uninstall
# Change directory
cd /data/data/com.termux/files/usr/bin
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Remove directories and files
printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Uninstalling PlayIt Copyparty kali chroot!\n\n${NC}"
rm -rf ./kali-binds
rm -rf ./kali-fs
rm -rf ./start-kali
printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Uninstall finished!\n\n${NC}"
rm -rf ./playit-copyparty-uninstall
EOT
chmod +x ./playit-copyparty-uninstall

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Downloading\n\n${NC}"
wget https://github.com/mastercodeon31415/copyparty-playit-android/raw/refs/heads/main/kali.sh

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Executing kali installerr script\n\n${NC}"
chmod 777 ./kali.sh
./kali.sh
rm -rf ./kali.sh
mv ./start-kali.sh ./start-kali

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Navigating to Termux home directory and downloading copyparty + making shell alias\n\n${NC}"
cd /data/data/com.termux/files/home

wget https://github.com/9001/copyparty/releases/latest/download/copyparty-sfx.py
touch ./copyparty
echo python3 ./copyparty-sfx.py '"$@"' > ./copyparty
chmod +x ./copyparty

cd 

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] PlayIt Copyparty Install complete! Starting kali chroot!\n\n${NC}"
start-kali