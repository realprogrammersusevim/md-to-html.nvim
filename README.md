# Markdown to HTML

![GitHub Repo stars](https://img.shields.io/github/stars/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)
[![GitHub license](https://img.shields.io/github/license/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/LICENSE)

## Description

This is a very small and lightweight NeoVim plugin to convert a Markdown document into simple HTML.

## Requirements

This plugin is coded in 100% pure Lua. As such, there are absolutely no dependencies. Of course, your NeoVim does need to have support for Lua which I think has been built in since 0.2 and has complete support since 0.5.

## Installation

Install this plugin like you would any other plugin. Here are examples for the two most common plugin managers.

Vim-Plug:

```vim
Plug 'realprogrammersusevim/md-to-html.nvim', { 'on': 'MarkdownToHtml' }
```

Packer:

```lua
use {
    "realprogrammersusevim/md-to-html.nvim"
    cmd = MarkdownToHtml
  }
```

## Usage

Currently this plugin only has one command `:MarkdownToHtml` which creates a new file with the same name but converted to HTML instead of Markdown. As of yet, there are no configuration options.

## Credits

[Markdown.pl](https://daringfireball.net/projects/markdown/)
