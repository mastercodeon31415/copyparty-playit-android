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
Start the kali chroot by the following:
```
start-kali
```

Then you can run playit to start the playit agent.
Copyparty is not installed into the chroot.
You must ```exit``` the chroot and then run ```copyparty ``` to start copyparty. You can pass any arguments you need with the shell alias. 

Then simply run copyparty or playit
Note: This will take up about 3.3gb of space after the Installation is finished. 

Demo video i posted to youtube

[![Installation Demo](https://img.youtube.com/vi/rvyFQc77POQ/0.jpg)](https://www.youtube.com/watch?v=rvyFQc77POQ)