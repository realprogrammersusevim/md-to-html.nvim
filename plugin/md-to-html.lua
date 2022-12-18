if vim.g.loaded_markdown_to_html == 1 then
  return
end

local md_to_html = require('md-to-html')

vim.api.nvim_create_user_command('NewMarkdownToHTML', md_to_html.new_md_to_html, {})
vim.api.nvim_create_user_command('MarkdownToHTML', md_to_html.md_to_html, {})
vim.g.loaded_markdown_to_html = 1
