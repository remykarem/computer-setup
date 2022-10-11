# Setup

* Shell: zsh/fish/nushell
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

Java SDKs are stored in `~/Library/Java/JavaVirtualMachines`

### Python



### Rust

https://www.rust-lang.org/tools/install

### Node

https://nodejs.org/en/download/

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

