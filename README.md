# Configurations #

Here are the all configurations worth tracking and useful to setup a new workspace without any issue.

## Setup ##

```shell
# If you don't have .config directory in the home directory,
# just run the following command.
# This will create the .config directory and clone the repo to it.
git clone git@github.com:syodage/configs.git .config
# If you already have the .config directory with some configurations.
# run the following commands.
cd .config
git init
git remote add git@github.com:syodage/configs.git
# or use https
# git remote add origin https://github.com/syodage/configs.git
git fetch
git pull origin master --ff-only

# link .p10k.zsh powerlevel10k config file
cd ~ # Goto home
ln -s .config/commons/.p10k.zsh
```

## Development ##

When configurations are ready track, remove those from the `.gitignore` file and commit it to the repo. This repo only contains the minimal configurations need to be tracked.
When configurations are ready to track, remove that directory from the `.gitignore` file and commit it to the repo. This repo only contains the minimal configurations need to be tracked.

## Configs ##

- `commons` directory contain extra configuration files, you may need to create soft link for those configuration files.
- [alacritty](https://github.com/alacritty/alacritty) terminal configurations.

---
All right reserved to `Shameera R Yodage <3`