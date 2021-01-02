# Termux.config
This repo contains my Termux configuration files.

To setup a new Termux home, run ./install.sh

## About packages.txt
packages.txt contains my manual selection of packages. It is generated with

```
apt-mark showmanual > packages.txt
```

packages can be restored with

```
cat packages.txt | xargs -L 1 pkg install
```
