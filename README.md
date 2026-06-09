# .zsh

Personal zsh configuration, forked from Oh-My-Zsh and adapted for macOS.

## Structure

| Path | Purpose |
|------|---------|
| `zsh_cfg.sh` | Loader — sources all `lib/*.zsh` files, then plugins, then theme |
| `lib/` | Functions, aliases, and settings (auto-sourced) |
| `plugins/` | Zsh plugins |
| `theme/` | `hGen.zsh-theme` custom prompt |
| `cache/` | Homebrew completion cache (auto-generated) |

## Key lib files

| File | Purpose |
|------|---------|
| `aliases.zsh` | General shell aliases |
| `dev-aliases.zsh` | Dev tool aliases (mongo, nchat) |
| `git.zsh` | Git prompt helpers and `git_branchoff` function |
| `global-variables.zsh` | Exported env vars and short path variables |
| `tmux-sessions.zsh` | `start-work-session` / `start-server-session` helpers |
| `aerospace.zsh` | `ff` — fuzzy window picker via fzf + aerospace |
| `edit-command-line.zsh` | Binds `Ctrl+X Ctrl+E` to open current command in `$EDITOR` |

## Local / machine-specific config

Gitignored files for machine-local overrides:

- `locals.zsh` — secrets and machine-local env vars (use instead of `global-variables.zsh`)
- `projects.zsh` — project-specific paths and aliases
- `custom/*` — custom plugins or theme overrides

## Tools

See `tools.md` for a full list of non-default tools used by this config.
