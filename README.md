# Linux Dotfiles

This repository stores my Linux configuration files (dotfiles) for easy setup on new machines.

## What’s in here

- `.bashrc` — Bash configuration
- `.profile` — User profile configuration
- `.config/kitty/kitty.conf` — Kitty terminal settings
- `.config/picom/picom.conf` — Picom compositor settings
- …and any other configs you add

## Using this repository

This setup uses a **bare Git repository** so you can track your home directory without moving files around.

### Step 1: Clone the repository

```bash
git clone --bare https://github.com/dfanso/dotfiles.git $HOME/.cfg
````

### Step 2: Define the `config` alias

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

To make it permanent, add this line to your `.bashrc` or `.zshrc`:

```bash
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> ~/.bashrc
source ~/.bashrc
```

### Step 3: Checkout the files

```bash
config checkout
```

> If there are conflicts with existing files, you may need to back them up first.

### Step 4: Ignore untracked files

```bash
config config --local status.showUntrackedFiles no
```

### Step 5: Commit and push changes

Whenever you update your dotfiles:

```bash
config add <file>
config commit -m "Update <file>"
config push
```

### Notes

* This method allows you to manage dotfiles in Git without moving them out of your home directory.
* Works on Linux, WSL, and macOS.
* Make sure `git` is installed on the system.


