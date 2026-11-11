# cdwt.fish

A lightweight [Fish shell](https://fishshell.com) helper to quickly `cd` into any Git worktree by branch name, with tab completions and directory previews.

## Installation

### Using [Fisher](https://github.com/jorgebucaran/fisher) (recommended)

```fish
fisher install mrtimuk/cdwt.fish
```

### Using [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

```fish
omf install https://github.com/mrtimuk/cdwt.fish
```

### Manual

Clone this repo or copy the files directly into your Fish configuration directory:

```fish
curl -sLo ~/.config/fish/functions/cdwt.fish https://raw.githubusercontent.com/mrtimuk/cdwt.fish/main/functions/cdwt.fish
curl -sLo ~/.config/fish/completions/cdwt.fish https://raw.githubusercontent.com/mrtimuk/cdwt.fish/main/completions/cdwt.fish
```

## Usage

```fish
cdwt <branch>
```

Press `Tab` to display all active worktrees alongside their directory paths:

```text
> cdwt <TAB>
main           (/Users/user/dev/project)
feature-auth   (/Users/user/dev/project-auth)
fix-nav        (/Users/user/dev/project-nav)
```

