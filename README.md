# Vim-Commentor

Toggling comments became easy! Use `vim-commentor` to toggle comments in any filetype with ease.
Vim-Commentor provides a comment operator that comments out a linewise motion in normal mode, as well as the selected text in visual mode.

Vim-Commentor borrows ideas from the famous [commentary](https://github.com/tpope/vim-commentary) plugin by [Tim Pope](https://github.com/tpope).
It is different from the same because it comments out a line at the beginning, instead of at indented locations, and also comments blank lines, thus solving issues such as [this](https://github.com/tpope/vim-commentary/issues/14) and [this](https://github.com/tpope/vim-commentary/issues/77).

## Features

* The comment-leader is automatically derived from the `commentstring`. Thus, the correct comment-leader is inserted automatically for all the filetypes recognized by Vim.

* The comment mappings are repeatable using the dot (`.`) operator.

## Usage

* To (un)comment a single line: `gcc`

* To (un)comment selected text: `gc`

* To comment out a motion: `gc<motion>`. For example:
    - `gcj` will toggle comment over the current line and the next
    - `gc2k` will toggle comment over the current line and two lines above
    - `gcip` will comment out inside the current paragraph, and so on.

Please see the documentation for more details.

## Installation

Use your favorite plugin-manager, or install manually.
Refer [this article](https://gist.github.com/manasthakur/ab4cf8d32a28ea38271ac0d07373bb53)
for general help on managing plugins in Vim.

[Star this repository](https://github.com/manasthakur/vim-commentor/) on GitHub if you like the plugin.
Feel free to send bricks and bouquets to `manasthakur17@gmail.com`.

## License

[MIT](LICENSE)

