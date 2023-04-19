# Markdown to HTML

![GitHub Repo stars](https://img.shields.io/github/stars/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)
[![GitHub license](https://img.shields.io/github/license/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/LICENSE)

## Description

This is an extremely small and lightweight NeoVim plugin to convert a Markdown
document into simple HTML.

https://user-images.githubusercontent.com/93488695/190666214-3f16a123-5bb5-4103-9130-428b25f3eade.mov

## Requirements

NeoVim >= 0.5

## Installation

Everything is coded in pure Lua. There are absolutely no heavy dependencies like
Pandoc to download and set up. That means you can install this plugin like you
would any other plugin. Here are examples for the two most common plugin
managers.

**Vim-Plug:**

```vim
Plug 'realprogrammersusevim/md-to-html.nvim', { 'on': 'MarkdownToHTML', 'NewMarkdownToHTML' }
```

**Packer:**

```lua
use {
    'realprogrammersusevim/md-to-html.nvim',
    cmd = { 'MarkdownToHTML', 'NewMarkdownToHTML' },
  }
```

**Lazy.nvim**

```lua
{
  'realprogrammersusevim/md-to-html.nvim',
  cmd = { 'MarkdownToHTML', 'NewMarkdownToHTML' },
}
```

## Usage

Currently this plugin only has two commands. `:MarkdownToHTML` converts the
current buffer in place and `:NewMarkdownToHTML` which creates a new file with
the same name but converted to HTML instead of Markdown. As of yet, there are no
configuration options.

## Credits

[CREDITS.md](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/CREDITS.md)
