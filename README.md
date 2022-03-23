# How this stuff works🤨

Configs are stored in a **Git bare repository**
in `$HOME/.cfg ` using a special alias so that commands are run against that repository and not the usual .git local folder, which would interfere with any other Git repositories around.

To get started:

- Add this magical alias to your `.bashrc`, `.zshrc` or `config.fish`:
```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
- Create a Git bare repository in $HOME/.cfg
```
git init --bare $HOME/.cfg
```

- Set a flag `--local` to the repository - to hide files we are not explicitly tracking yet:
```
cfg config --local status.showUntrackedFiles no
```

Now, any file within the $HOME directory can be versioned with normal commands, replacing `git` with newly created `cfg` alias, like:
```
cfg status
cfg add .vimrc
cfg commit -m 'Add vimrc'
cfg push
```

# How to install all this junk on a new system🔌

- Clone into a bare repository in .cfg directory of $HOME:
```
git clone --bare <git-repo-url> $HOME/.cfg
```

- Define the alias in the current shell scope:
```
alias cfg='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

- Checkout the actual content from the bare repository to your $HOME:
```
cfg checkout
```

- Set the flag showUntrackedFiles to no on this specific (local) repository:
```
cfg config --local status.showUntrackedFiles no
```