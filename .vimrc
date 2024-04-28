so ~/.vim/plugins.vim

set numberwidth=1 
set cc=80 
set nu
set relativenumber
set wildmenu
set expandtab
set tabstop=2
set noshowmode
au BufEnter * set fo-=c fo-=r fo-=o

noremap <Space> <Nop>
noremap <CR> <Nop>
let mapleader="\<Space>"
nnoremap <leader>a $a
nnoremap <leader>q<leader> :Files<CR>
noremap <C-S-e> :NERDTreeToggle<CR>
noremap <C-s> :w<CR>

noremap  <leader><CR> :w<CR>
        \:let $VIM_DIR=expand('%:p')<CR> 
        \:rightbelow vert term<CR> clear && make TARGET=$VIM_DIR <CR>
noremap ñ :vertical resize 85<CR>
 
" configuración en inset
autocmd InsertEnter * set norelativenumber
autocmd InsertEnter * IndentLinesDisable

" configuración en normal
autocmd InsertLeave * set relativenumber
autocmd InsertLeave * IndentLinesEnable

"modificando tema
colorscheme dark1
if $TERM == 'linux'
  colorscheme dark1
else
  colorscheme gruvbox
  hi Normal ctermbg=none
  hi ColorColumn ctermbg=red
endif
