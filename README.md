[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/mastercodeon31415/copyparty-playit-android/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/mastercodeon31415/copyparty-playit-android)](https://github.com/mastercodeon31415/copyparty-playit-android/issues)
[![GitHub stars](https://img.shields.io/github/stars/mastercodeon31415/copyparty-playit-android)](https://github.com/mastercodeon31415/copyparty-playit-android/stargazers)

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
You must ```exit``` the chroot and then run ```copyparty``` to start copyparty. You can pass any arguments you need with the shell alias. 

Then simply run copyparty or playit
Note: This will take up about 3.3gb of space after the Installation is finished. 

Demo video i posted to youtube

[![Installation Demo](https://img.youtube.com/vi/rvyFQc77POQ/0.jpg)](https://www.youtube.com/watch?v=rvyFQc77POQ)

## Contributing

Contributions are welcome! If you have suggestions for improvements or encounter any issues, please feel free to open an issue or submit a pull request.

## Donation links

Anything is super helpful! Anything donated helps me keep developing this program and others!
- https://www.paypal.com/paypalme/lifeline42
- https://cash.app/$codoen314

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/mastercodeon31415/copyparty-playit-android/blob/main/LICENSE) file for details. 