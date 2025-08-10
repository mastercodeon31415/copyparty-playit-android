# copyparty-playit-android

One shot install command:
```
pkg update -y && pkg upgrade -y -o Dpkg::Options::="--force-confnew" && pkg install wget proot tar -y && wget https://github.com/mastercodeon31415/copyparty-playit-android/raw/refs/heads/main/playit-copyparty-installer.sh && chmod 777 playit-copyparty-installer.sh && ./playit-copyparty-installer.sh
```

Uninstall command:
```
playit-copyparty-uninstall
```

Usage:
Start kali by the following:
```
start-kali
```

Then simply run copyparty or playit