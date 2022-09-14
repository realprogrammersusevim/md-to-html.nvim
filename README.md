# Markdown to HTML

![GitHub Repo stars](https://img.shields.io/github/stars/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)
[![GitHub license](https://img.shields.io/github/license/realprogrammersusevim/md-to-html.nvim?style=for-the-badge)](https://github.com/realprogrammersusevim/md-to-html.nvim/blob/main/LICENSE)

## Description

This is a very small and lightweight NeoVim plugin to convert a Markdown document into simple HTML.

## Requirements

This plugin relies on a Perl script to do the actual translation. To run this script you need Perl 5.8 or newer.

## Installation

Install this plugin like you would any other plugin. Here are examples for the two most common plugin managers.

Vim-Plug:

```vim
Plug "realprogrammersusevim/md-to-html.nvim"
```

Packer:

```lua
use {
    "realprogrammersusevim/md-to-html.nvim"
    cmd = MarkdownToHtml
  }
```

## Usage

Currently this plugin only has one command `:MarkdownToHtml`. As of yet, there are no configuration options.

## Credits

[Markdown.pl](https://daringfireball.net/projects/markdown/)
