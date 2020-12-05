# MacOS System Configuration with Nix

![nix-darwin system build](https://github.com/thpham/nix-configs/workflows/nix-darwin%20system%20build/badge.svg?branch=master)

## Installing Nix Package Manager

Run the following to perform a multi-user installation for darwin or standard linux. This step is skipped on NixOS.

```bash
if [[ $(uname -s) == 'Darwin' ]]; then
    sh <(curl -L https://releases.nixos.org/nix/nix-2.3.9/install) --daemon --darwin-use-unencrypted-nix-store-volume
else
    sh <(curl -L https://releases.nixos.org/nix/nix-2.3.9/install) --daemon
fi
```

## Update Nix on a multi-user installation

```bash
sudo -i sh -c 'nix-channel --update && nix-env -iA nixpkgs.nix && launchctl remove org.nixos.nix-daemon && launchctl load /Library/LaunchDaemons/org.nixos.nix-daemon.plist'
```

## Update flake lock (nix-2.4pre...)

```
nix flake update --update-input darwin
```

## System Bootstrapping

Clone this repository into `~/.nixpkgs` with

```bash
git clone https://github.com/thpham/nix-configs ~/.nixpkgs
```

You can bootstrap a new system using

```bash
cd ~/.nixpkgs && nix-shell --run "darwinInstall"
```

run the build only with `darwinTest` or progress to a new generation `darwinUpdate`.

## Installing Homebrew dependencies

The few leftover homebrew packages and brew casks are stored in `~/Brewfile`. They can be installed using `cd ~ && brew bundle`.


## [temporary fix] Yabai setup for Big Sur

```
# open/create a new file for writing using the vim editor (use nano or something if you are not familiar with vim)
sudo vim /private/etc/sudoers.d/yabai

# input the line below into the file you are editing.
# replace <user> with your username (output of: whoami).
# change the path to the yabai binary if necessary  (output of: which yabai)
<user> ALL = (root) NOPASSWD: /usr/local/bin/yabai --load-sa
```