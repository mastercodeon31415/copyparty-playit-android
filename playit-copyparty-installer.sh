RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Updating...\n${NC}"
# pkg update -y && pkg upgrade

# printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Installing wget proot tar\n${NC}"
# pkg install wget proot tar -y

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Going to termux bin directory\n${NC}"
cd /data/data/com.termux/files/usr/bin

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Making uninstaller script\n${NC}"
touch ./playit-copyparty-uninstall
cat <<EOT >> ./playit-copyparty-uninstall
# Change directory
cd /data/data/com.termux/files/usr/bin
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Remove directories and files
printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Uninstalling PlayIt Copyparty kali chroot!\n${NC}"
rm -rf ./kali-binds
rm -rf ./kali-fs
rm -rf ./start-kali
printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Uninstall finished!\n${NC}"
rm -rf ./playit-copyparty-uninstall
EOT
chmod +x ./playit-copyparty-uninstall

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Downloading\n${NC}"
wget https://github.com/mastercodeon31415/copyparty-playit-android/raw/refs/heads/main/kali.sh

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Executing kali installerr script\n${NC}"
chmod 777 ./kali.sh
./kali.sh
rm -rf ./kali.sh
mv ./start-kali.sh ./start-kali

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Navigating to kali-fs/bin\n${NC}"
cd /data/data/com.termux/files/usr/bin/kali-fs/bin

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Navigating back to termux home directory\n${NC}"
cd 

printf "${GREEN}[###PlayIt Copyparty INSTALLER###] Ngrok-adb Install complete! Starting kali chroot!\n${NC}"
start-kali