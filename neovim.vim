#mkdir -p ~/.config/nvim/
#touch ~/.config/nvim/init.vim

# For windows
# mkdir -p C:\Users\%USERPROFILE%\AppData\Local\nvim\
# touch C:\Users\%USERPROFILE%\AppData\Local\nvim\init.vim

# Подключение плагинов
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Подключение темы
#mkdir -p ~/.config/nvim/themes
#touch ~/.config/nvim/themes/molokai.vim

# Подключение плагинов Lua
#mkdir -p ~/.config/nvim/lua/plugins
#touch ~/.config/nvim/lua/plugins/init.lua




# ~/.config/nvim/init.vim

set t_Co=256 " вклюачем 256 цветов в терминале
set autoindent " автоотступ
set nocompatible " Отменить совместимость c vi
set number " Показывать номера строк
set colorcolumn=120 " Вертикальная линия после 120 симоволов
set clipboard=unnamed " копировать данные в системный буфер обмена
set cursorline " выделить строку с курсором
set softtabstop=4 " ширина таба при использовании его вместо его вместо пробелов
set tabstop=4 " ширина табуляции
set shiftwidth=4 " для регулирования отступов в пробелах
set smarttab " добавление оступа в новой строке по значению shiftwidth (backspace удалит оступ, а не 1 символ)
set expandtab " ставить пробелы вместо табов
set list " включить дополнительное отображение символов и т.д.
set listchars=tab:>- " отображать tab как >-
set pastetoggle=<F3> " включить нормальную вставку
set visualbell " отлючение звукового сигнала при ошибки в vim
syntax on " Включить подсветку синтаксиса
"colorscheme 'molokai' " wombat256, codeschool || цветовая схема
source $HOME/.config/nvim/themes/molokai.vim


filetype on " включить распознавание типов файлов
filetype plugin on " включить типо-спецефичные плагины

call plug#begin()

"Plug 'scrooloose/nerdtree'                                                                                                
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'kyazdani42/nvim-tree.lua' "Plug 'scrooloose/nerdtree'        
Plug 'kyazdani42/nvim-web-devicons' " optional, for file icons

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'bling/vim-airline'
Plug 'tomasr/molokai' "colorscheme

call plug#end()

" Hotkeys
map <C-T> :shell<CR>                                                                                                    
map <C-p> :set paste<CR>                                                                                                
map <C-b> :set number<CR>                                                                                               
map <C-a> :set nonumber<CR>                                                                                             
map <F5>  :NvimTreeOpen<CR>
"map <F5> :NERDTreeToggle<CR>

lua require'nvim-web-devicons'.setup()
lua require'nvim-tree'.setup()


" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
