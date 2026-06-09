# Non-default tools

Tools referenced in `~/.zshrc` and `lib/*.zsh` that are not part of macOS or zsh out of the box.

## Shell & Prompt

| Tool | Source | Purpose |
|------|--------|---------|
| [Homebrew](https://brew.sh) | `/opt/homebrew/bin/brew` | Package manager — bootstraps most tools below |
| [starship](https://starship.rs) | `brew` | Cross-shell prompt |
| [fzf](https://github.com/junegunn/fzf) | `brew` | Fuzzy finder; keybindings sourced via `fzf --zsh` |
| [source-highlight](https://www.gnu.org/software/src-highlite/) | `brew` | Syntax highlighting in `less` via `src-hilite-lesspipe.sh` |

## Terminal & Multiplexing

| Tool | Source | Purpose |
|------|--------|---------|
| [tmux](https://github.com/tmux/tmux) | `brew` | Terminal multiplexer; `start-work-session` / `start-server-session` helpers |
| [aerospace](https://github.com/nikitabobko/AeroSpace) | `brew` | Tiling window manager for macOS; `ff` function lists windows via fzf |
| [ranger](https://github.com/ranger/ranger) | `brew` | Terminal file manager (`suranger` alias) |

## Node / JS

| Tool | Source | Purpose |
|------|--------|---------|
| [nvm](https://github.com/nvm-sh/nvm) | `brew` (`/opt/homebrew/opt/nvm`) | Node version manager |
| [pnpm](https://pnpm.io) | standalone | Fast Node package manager; home at `~/Library/pnpm` |
| [browser-sync](https://browsersync.io) | `pnpm/npm` | Dev server proxy (`serve-this` alias) |

## Networking

| Tool | Source | Purpose |
|------|--------|---------|
| [arp-scan](https://github.com/royhills/arp-scan) | `brew` | LAN host discovery (`nwscan` function) |

## Dev Tools

| Tool | Source | Purpose |
|------|--------|---------|
| [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/) | installer | Manages JetBrains IDEs; adds scripts to PATH |
| [tree](http://mama.indstate.edu/users/ice/tree/) | `brew` | Directory tree viewer (`t` / `tree` / `dirt` aliases) |

## Messaging

| Tool | Source | Purpose |
|------|--------|---------|
| [nchat](https://github.com/d99kris/nchat) | `brew` | Terminal WhatsApp & Telegram client (`nchat-w` / `nchat-t` aliases) |

## PATH-configured (historically present, may be inactive)

These appear in the `$PATH` array in `~/.zshrc` but are not actively called by any lib file:

- **Anaconda3** — `/usr/local/anaconda3/bin` (Python distribution)
- **TeX Live** — `/usr/local/texlive/2015/bin/x86_64-darwin` (LaTeX, 2015 vintage)
- **GNAT** — `/usr/local/gnat/bin` (Ada compiler)
- **SPARK 2014** — `/opt/spark2014/bin` (Ada formal verification)
- **php7** — `/usr/local/php7/bin`
- **.NET Core** — `/usr/local/share/dotnet/dotnet`
- **MongoDB** — `mongod` via `mongostart` alias (config at `/usr/local/etc/mongod.conf`)
