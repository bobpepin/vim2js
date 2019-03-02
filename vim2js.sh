#!/bin/bash
# Syntax: vim2js.sh <input.vim> <output.js>
vim -e -n -s --cmd 'set rtp+=. nocp' -c 'so vimlparser.vim' -c 'exe "so" argv()[0]' -c q -- jscompiler.vim "$@"
