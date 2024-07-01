call plug#begin()
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'nvim-tree/nvim-web-devicons'
	Plug 'lewis6991/impatient.nvim'
	Plug 'lilydjwg/colorizer'
	Plug 'nvim-neo-tree/neo-tree.nvim'
	Plug 'MunifTanjim/nui.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
	Plug 'OmniSharp/omnisharp-vim'
	Plug 'uZer/pywal16.nvim', { 'as': 'pywal16' }
call plug#end()

set rnu
set tabstop=4
set shiftwidth=4
hi LineNr ctermfg=grey
highlight EndOfBuffer ctermfg=0

lua << EOF
	require('pywal16').setup {}
	require('lualine').setup {}
	require("neo-tree").setup {
		close_if_last_window = true,
		enable_git_status = true,
        enable_diagnostics = true,
		window = {
        	position = "left",
        	width = 25,
		}
	}
EOF

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
noremap <C-T> :Neotree toggle <CR>
noremap <C-R> :!
noremap <A-Right> :BufferLineCycleNext <CR>
noremap <A-Left> :BufferLineCyclePrev <CR>

au BufNewFile,BufRead *.snw set filetype=snow
