# Setup

* Shell: zsh/fish/nushell
  * Plugin manager - Fisher (for fish)
* Terminal emulator: iTerm2
* Fonts: [FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts)
* Shell prompt: Starship/Fig
* Package manager: brew
* Git - Install with Xcode
* Git commit signing using GPG: https://gist.github.com/danieleggert/b029d44d4a54b328c0bac65d46ba4c65

Existing | Replacement
-------- | ------------
`cat`    | `bat`
(Finder) | `broot`
`ls`     | `lsd`
`grep`   | `ripgrep`
`jq`     | `jless`
`find`   | `fd`
(search) | `fzf`

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
* ?

### Python



### Rust

https://www.rust-lang.org/tools/install

### Node

Download node via NVM

https://github.com/FabioAntunes/fish-nvm includes npm, yarn, npx

Env manager - use NVM

Auto switch to env based on proj:

```txt
# NVM stuff
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
```

Source: https://stackoverflow.com/questions/23556330/run-nvm-use-automatically-every-time-theres-a-nvmrc-file-on-the-directory

## Crontab

<>

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
* Wireless@SG

