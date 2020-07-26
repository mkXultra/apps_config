:source ~/command.vim
call plug#begin('~/.vim/plugged')
"Plug 'terryma/vim-multiple-cursors'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'easymotion/vim-easymotion'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'tpope/vim-surround'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'SirVer/ultisnips'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()
"�^�u�A�X�y�[�X��F�t��
let g:indent_guides_enable_on_vim_startup = 1
"�Ō�̃J�[�\���ʒu���L������
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END
"set timeout timeoutlen=50
":autocmd InsertEnter * set cul
":autocmd InsertLeave * set nocul
map f <Leader><Leader>s
"�����N�����f�[�^���N���b�v�{�[�h�Ŏg�p���I��͈͎����R�s�[�����N�����f�[�^���N���b�v�{�[�h�Ŏg�p���I��͈͎����R�s�[
set clipboard=unnamed,autoselect
"�����ŃC���T�[�g���[�h
inoremap <silent> jj <ESC>
" ���{����͂Łh��j�h�Ɠ��͂��Ă�Enter�L�[�Ŋm�肳����΃C���T�[�g���[�h�𔲂���
inoremap <silent> ���� <ESC>
inoremap <silent> ��j <ESC>
"setting
"������܂�Ԃ��Ȃ�
set nowrap
"�����R�[�h��UFT-8�ɐݒ�
set encoding=utf-8
" �o�b�N�A�b�v�t�@�C�������Ȃ�
set nobackup
" �X���b�v�t�@�C�������Ȃ�
set noswapfile
" �ҏW���̃t�@�C�����ύX���ꂽ�玩���œǂݒ���
set autoread
" �o�b�t�@���ҏW���ł����̑��̃t�@�C�����J����悤��
set hidden
" ���͒��̃R�}���h���X�e�[�^�X�ɕ\������
set showcmd


" �����ڌn
" �s�ԍ���\��
set number
" ���݂̍s�������\��
"set cursorline
" ���݂̍s�������\���i�c�j
"set cursorcolumn
" �s����1������܂ŃJ�[�\�����ړ��ł���悤��
set virtualedit=onemore
" �C���f���g�̓X�}�[�g�C���f���g
set smartindent
" �r�[�v��������
set visualbell
" ���ʓ��͎��̑Ή����銇�ʂ�\��
set showmatch
" �X�e�[�^�X���C������ɕ\��
set laststatus=2
" �R�}���h���C���̕⊮
set wildmode=list:longest
" �܂�Ԃ����ɕ\���s�P�ʂł̈ړ��ł���悤�ɂ���
nnoremap j gj
nnoremap k gk
" �V���^�b�N�X�n�C���C�g�̗L����
syntax enable


" Tab�n
" �s������������(�^�u���u?-�v�ƕ\�������)
set list listchars=tab:\?\-
" Tab�����𔼊p�X�y�[�X�ɂ���
set expandtab
" �s���ȊO��Tab�����̕\�����i�X�y�[�X�������j
set tabstop=2
" �s���ł�Tab�����̕\����
set shiftwidth=2


" �����n
" ���������񂪏������̏ꍇ�͑啶������������ʂȂ���������
set ignorecase
" ����������ɑ啶�����܂܂�Ă���ꍇ�͋�ʂ��Č�������
set smartcase
" ������������͎��ɏ����Ώە�����Ƀq�b�g������
set incsearch
" �������ɍŌ�܂ōs������ŏ��ɖ߂�
set wrapscan
" ��������n�C���C�g�\��
set hlsearch
" ESC�A�łŃn�C���C�g����
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set guifont=Cica:h11
set printfont=Cica:h8
"set renderingoptions=type:directx,renmode:5
set ambiwidth=double
""""""""""""""""""""""""""""""
"�S�p�X�y�[�X��\��
""""""""""""""""""""""""""""""
"�R�����g�ȊO�őS�p�X�y�[�X���w�肵�Ă���̂� scriptencoding�ƁA
"���̃t�@�C���̃G���R�[�h����v����悤���ӁI
"�S�p�X�y�[�X�������\������Ȃ��ꍇ�A������scriptencoding���w�肷��Ɨǂ��B
"scriptencoding cp932

"�f�t�H���g��ZenkakuSpace���`
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpace���J���[�t�@�C���Őݒ肷��Ȃ玟�̍s�͍폜
    autocmd ColorScheme       * call ZenkakuSpace()
    " �S�p�X�y�[�X�̃n�C���C�g�w��
    autocmd VimEnter,WinEnter * match ZenkakuSpace /�@/
    autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
  augroup END
  call ZenkakuSpace()
endif
"�m�[�}�����[�henter�ŃJ�[�\���ʒu�ŉ��s
nnoremap <CR> i<Return><Esc>
"shell�N����powershell�ɂ���
if has('win32')
  set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
  set shellcmdflag=-c
  set shellquote=\"
  set shellxquote=
endif
:command Terp terminal powershell 
:command Ter terminal  
:command Q q!  
