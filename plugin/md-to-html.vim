" Title:        md-to-html
" Description:  Convert markdown to html
" Author:       Jonathan Milligan

" Prevent the plugin from being loaded more than once
if exists('g:loaded_md_to_html') | finish | endif

" Save user coptions
let s:save_cpo = &cpo
set cpo&vim

" Define the command to convert markdown to html in a new file
command! NewMarkdownToHtml lua require'md-to-html'.new_md_to_html()

" Define the command to convert markdown to html in the current file
command! MarkdownToHtml lua require'md-to-html'.md_to_html()

" Restore user options
let &cpo = s:save_cpo
unlet s:save_cpo

" That's it! We finished loading the plugin
let g:loaded_md_to_html = 1
