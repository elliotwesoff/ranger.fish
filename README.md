# ranger.fish 🐟

> add a nice blue 'r' to your shell prompt if the current shell was
created by ranger (you pressed S).

## Installation

0. Ensure `ps` and `xargs` are in your PATH
1. Install [fisher](https://github.com/jorgebucaran/fisher)
2. `fisher install elliotwesoff/ranger.fish`

## How it works

Upon installation, `ranger.fish` backs up your current `fish_prompt`
to `~/.config/fish/_ranger_fish_prompt_original.fish`. If you haven't
changed the default prompt, that's fine, the default will be stored
in that file. The `fish_prompt` function is then overwritten with a
new function that eventually calls your old one.

Upon uninstallation, the original `fish_prompt` is rewritten as the
default. If you need to make changes to your shell prompt while using
this plugin, I would advise making changes to the backed up function.
