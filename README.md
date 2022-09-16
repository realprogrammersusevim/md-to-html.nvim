# Markdown to HTML

![GitHub Repo stars](https://img.shields.io/github/stars/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)
[![GitHub license](https://img.shields.io/github/license/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/LICENSE)

## Description

This is a very small and lightweight NeoVim plugin to convert a Markdown document into simple HTML. This is not meant to be used as a Markdown previewer (I would suggest [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) for that) but  as a way to export Markdown into text with HTML tags. It is still in beta, so expect large changes in the near future. However, it is completely working and reliable enough to be used as a daily driver.

## Requirements

NeoVim >= 0.5

## Installation

Remember how I said that it was pure Lua? I wasn't kidding you. There are absolutely no dependencies like pandoc to download and set up. That means you can install this plugin like you would any other plugin. Here are examples for the two most common plugin managers.

**Vim-Plug:**

```vim
Plug 'realprogrammersusevim/md-to-html.nvim', { 'on': 'MarkdownToHtml' }
```

And then run `PlugInstall`

**Packer:**

```lua
use {
    "realprogrammersusevim/md-to-html.nvim",
    cmd = MarkdownToHtml
  }
```

After adding that to your config run `PackerInstall`

## Usage

Currently this plugin only has two commands. `:MarkdownToHtml` converts the current buffer in place and `:NewMarkdownToHtml` which creates a new file with the same name but converted to HTML instead of Markdown. As of yet, there are no configuration options.

## Credits

[CREDITS.md](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/CREDITS.md)
