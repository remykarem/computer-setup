# Setup

* Shell: zsh/fish/nushell
  * Plugin manager - Fisher (for fish)
* Terminal emulator: iTerm2
* Fonts: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts)
* Shell prompt: Starship/Fig
* Package manager: brew
* Git - Install with Xcode
* Git commit signing using GPG: https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65
* OpenSSL 3.*

Existing | Replacement
-------- | ------------
`cat`    | `bat`
`vim`    | `nvim` (Neovim)
(?)      | `tldr`
(Finder) | `broot`
`ls`     | `lsd`
`grep`   | `ripgrep`
`jq`     | `jless`
`find`   | `fd`
(search) | `fzf`

`nvim` config (`~/.config/nvim/init.vim`):

```txt
set number
```

## Docker

Colima

```
brew install colima
```

```
brew install docker
```

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

Download node via NVM

https://github.com/FabioAntunes/fish-nvm includes npm, yarn, npx

Env manager - use NVM

Auto switch to env based on proj with this SO [post](https://stackoverflow.com/questions/23556330/run-nvm-use-automatically-every-time-theres-a-nvmrc-file-on-the-directory).


### Python

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
* Clipy
* Postman
* Proxyman
* TablePlus
* Cloudflare Warp
* VS Code
* IntelliJ
