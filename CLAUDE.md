# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal zsh configuration — a fork of Oh-My-Zsh adapted for macOS. The entry point is `zsh_cfg.sh`, which is sourced from `~/.zshrc`.

## Architecture

`zsh_cfg.sh` is the loader that runs on shell startup in three passes:

1. **Lib** — sources every `lib/*.zsh` file automatically. This is where all custom functions, aliases, and settings live.
2. **Plugins** — loads plugins listed in `$plugins` (set in `~/.zshrc`) from either `$ZSH_CUSTOM/plugins/` or `plugins/`.
3. **Theme** — loads `$ZSH_THEME` from `theme/` (or `$ZSH_CUSTOM` for overrides).

## Key files

| File | Purpose |
|------|---------|
| `lib/aliases.zsh` | General shell aliases |
| `lib/dev-aliases.zsh` | Dev tool aliases (mongo, nchat) |
| `lib/git.zsh` | Git prompt helpers and `git_branchoff` function |
| `lib/global-variables.zsh` | Exported env vars and short path variables — **do not commit secrets here** |
| `lib/audiodevice.zsh` | `aod` function wrapping `lib/pythonscripts/audiodevice.py` |
| `lib/tmux-sessions.zsh` | `start-work-session` / `start-server-session` helpers |
| `theme/hGen.zsh-theme` | Primary custom prompt theme |

## Local / machine-specific config

The following files are gitignored and intended for machine-specific overrides:

- `locals.zsh` — secrets, machine-local env vars (use instead of `global-variables.zsh` for anything sensitive)
- `projects.zsh` — project-specific paths/aliases
- `custom/*` — custom plugins or theme overrides

## Security note

`lib/global-variables.zsh` currently contains a hardcoded `OPENAI_API_KEY`. Move any API keys to `locals.zsh` (gitignored) and revoke/rotate the exposed key.
