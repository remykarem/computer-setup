# Setup

* Shell: zsh
  * Theme: [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
  * Shell prompt: [Starship](https://starship.rs)
  * Syntax highlighting: [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
* Terminal emulator: iTerm2

  `Ctrl+W` to delete word

* Fonts: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts)
* Package manager: brew
* Git - Install with Xcode
* Git commit signing using GPG:

  ```sh
  # Assumes homebrew and existing key-pair
  brew install pinentry-mac
  # Get the secret key value
  gpg2 --list-secret-keys | grep ^sec
  git config --global user.signingkey {secret-value}
  git config --global gpg.program $(which gpg)
  # Sign everything by default
  git config --global commit.gpgsign true
  echo "no-tty" >> ~/.gnupg/gpg.conf
  echo $(which pinentry-mac) >> ~/.gnupg/gpg-agent.conf
  ```

  Taken from [Signing Commits in Git](https://nathanielhoag.com/blog/2016/09/05/signing-commits-in-git/). To use with IntelliJ, see [here](https://www.jetbrains.com/help/idea/set-up-GPG-commit-signing.html). GitHub docs [here](https://docs.github.com/en/authentication/managing-commit-signature-verification/adding-a-gpg-key-to-your-github-account).
* OpenSSL 3.*
* AWS

  ```sh
  brew install awscli
  ```

  `~/.aws/credentials`

  ```toml
  [some-profile-name]
  ```

  `~/.aws/config`

  ```toml
  [default]
  region = ap-southeast-1
  ```

  Set default profile in the `export AWS_PROFILE=...`

Existing | Replacement
-------- | ------------
`cat`    | `bat`
`vim`    | `nvim` (Neovim)
(?)      | `tldr`
(Finder) | `broot`
`ls`     | `lsd`
`grep`   | `ripgrep`
`jq`     | `jless`
(?)      | `yq`
`find`   | `fd`
(search) | `fzf`

`nvim` config (`~/.config/nvim/init.vim`):

```txt
set number
```

`bat` config (`~/.config/bat/config`, found from `bat --config-file`):

```txt
# No need all those line numbers
--style plain
```

## Shell aliases

`~/.config/fish/config.fish` for fish

fish:

```txt
starship init fish | source

set -gx PATH "$HOME/.cargo/bin" $PATH

set PATH $HOME/.jenv/bin $PATH
status --is-interactive; and jenv init - | source

alias g=git
```

## Docker

Colima

```
brew install colima
```

```
brew install docker
```

```
brew install docker-compose
```

https://formulae.brew.sh/formula/docker-compose
https://stackoverflow.com/a/74413229/4570466

Docker Desktop

<see official page>

## Languages

### Java

Java SDKs are stored in `~/Library/Java/JavaVirtualMachines` or `/Library/Java/JavaVirtualMachines`.

`/usr/bin/java` looks for `JAVA_HOME`. Otherwise it will look for the JDK with the highest version.

Download different JDKs:
* Manually
* via IntelliJ 
* `brew`

Utils
* `/usr/libexec/java_home` to get the list of java versions

Env manager
* Set `JAVA_HOME` environment variable
* jenv

Auto switch to env based on proj
* For fish, refer to https://github.com/jenv/jenv.

### Rust

https://www.rust-lang.org/tools/install

### Node

Download node via NVM (Homebrew)

Auto switch to env based on proj with this SO [post](https://stackoverflow.com/questions/23556330/run-nvm-use-automatically-every-time-theres-a-nvmrc-file-on-the-directory).


### Python

Poetry

`brew install poetry` and hope that it's in your PATH.

Anaconda

* Install anaconda
* `conda create <env-name> python=3.10`
* `conda install jupyter ipython nb_conda_kernels`

## Crontab

Add crons at by runinng the `crontab -e` command.

```
29 9 * * * open -a "Google Chrome" "???"
 0 * * * * osascript -e 'display notification "Lorem ipsum dolor sit amet" with title "Title" sound name "Frog"'
```

## Aliases and env variables

`~/.gitconfig`

```toml
[alias]
f = fetch
co = checkout
br = branch
lg = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all

[init]
defaultBranch = main
  
[push]
autoSetupRemote = true  # no more git push -u origin main stuff
```

## Applications

* Rectangle
* Unsplash
* Maccy
* Postman
* Proxyman
* TablePlus
* Cloudflare Warp
* VS Code
* IntelliJ
* `zbar`, `qrencode`
* 1Password
* `coreutils` (it has many stuff like `basenc`)
