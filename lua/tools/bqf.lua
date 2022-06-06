vim.cmd([[
    hi BqfPreviewBorder guifg=#50a14f ctermfg=71
    hi link BqfPreviewRange Search
]])

require('bqf').setup({
    auto_enable = true,
    auto_resize_height = true, -- highly recommended enable
    preview = {
        win_height = 12,
        win_vheight = 12,
        delay_syntax = 80,
        border_chars = {'┃', '┃', '━', '━', '┏', '┓', '┗', '┛', '█'},
        should_preview_cb = function(bufnr, qwinid)
            local ret = true
            local bufname = vim.api.nvim_buf_get_name(bufnr)
            local fsize = vim.fn.getfsize(bufname)
            if fsize > 100 * 1024 then
                -- skip file size greater than 100k
                ret = false
            elseif bufname:match('^fugitive://') then
                -- skip fugitive buffer
                ret = false
            end
            return ret
        end
    },
    -- make `drop` and `tab drop` to become preferred
    func_map = {
        drop = 'o',
        openc = 'O',
        split = '<C-s>',
        tabdrop = '<C-t>',
        tabc = '',
        ptogglemode = 'z,',
    },
    filter = {
        fzf = {
            action_for = {['ctrl-s'] = 'split', ['ctrl-t'] = 'tab drop'},
            extra_opts = {'--bind', 'ctrl-o:toggle-all', '--prompt', '> '}
        }
    }
})


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.017  000.017: --- NVIM STARTING ---
000.417  000.399: locale set
000.682  000.265: inits 1
000.694  000.012: window checked
000.697  000.003: parsing arguments
003.263  002.566: expanding arguments
003.293  000.030: inits 2
003.698  000.405: init highlight
003.700  000.002: waiting for UI
005.516  001.817: done waiting for UI
005.557  000.041: init screen for UI
005.620  000.062: init default mappings
005.832  000.212: init default autocommands
006.552  000.074  000.074: sourcing /usr/share/nvim/runtime/ftplugin.vim
006.684  000.033  000.033: sourcing /usr/share/nvim/runtime/indent.vim
006.830  000.034  000.034: sourcing /usr/share/nvim/archlinux.vim
006.844  000.124  000.090: sourcing /etc/xdg/nvim/sysinit.vim
026.806  019.931  019.931: sourcing /home/xhs/.config/nvim/init.lua
026.815  000.822: sourcing vimrc file(s)
026.872  000.025  000.025: sourcing /home/xhs/.local/share/nvim/site/pack/packer/start/filetype.nvim/filetype.vim
026.955  000.035  000.035: sourcing /usr/share/nvim/runtime/filetype.lua
027.000  000.031  000.031: sourcing /usr/share/nvim/runtime/filetype.vim
027.147  000.064  000.064: sourcing /usr/share/nvim/runtime/syntax/synload.vim
027.384  000.350  000.286: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
027.864  000.013  000.013: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
027.884  000.009  000.009: sourcing /usr/share/nvim/runtime/plugin/health.vim
027.922  000.028  000.028: sourcing /usr/share/nvim/runtime/plugin/man.vim
027.943  000.009  000.009: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
027.961  000.008  000.008: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
027.983  000.012  000.012: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
028.108  000.007  000.007: sourcing /home/xhs/.local/share/nvim/rplugin.vim
028.114  000.121  000.114: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
028.167  000.043  000.043: sourcing /usr/share/nvim/runtime/plugin/shada.vim
028.195  000.016  000.016: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
028.218  000.011  000.011: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
028.236  000.008  000.008: sourcing /usr/share/nvim/runtime/plugin/tohtml.vim
028.259  000.013  000.013: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
028.281  000.011  000.011: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
028.896  000.048  000.048: sourcing /usr/share/nvim/runtime/autoload/provider/pythonx.vim
029.089  000.114  000.114: sourcing /usr/share/nvim/runtime/autoload/remote/host.vim
029.155  000.357  000.195: sourcing /usr/share/nvim/runtime/autoload/provider/python3.vim
029.168  000.809  000.452: sourcing /usr/share/vim/vimfiles/plugin/black.vim
029.563  000.381  000.381: sourcing /usr/share/vim/vimfiles/plugin/fzf.vim
029.675  000.094  000.094: sourcing /usr/share/vim/vimfiles/plugin/gtags-cscope.vim
029.879  000.190  000.190: sourcing /usr/share/vim/vimfiles/plugin/gtags.vim
036.293  002.997  002.997: sourcing /home/xhs/.local/share/nvim/site/pack/packer/start/zephyr-nvim/colors/zephyr.vim
037.049  000.171  000.171: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer/plugin/nvim-lsp-installer.vim
037.545  000.271  000.271: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim/plugin/lspsaga.vim
037.874  000.020  000.020: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim/plugin/lspsaga.vim
067.850  001.888  001.888: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/nvim-cmp/plugin/cmp.lua
078.503  000.041  000.041: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim/plugin/lspsaga.vim
079.452  000.028  000.028: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer/plugin/nvim-lsp-installer.vim
079.943  050.015  044.600: sourcing /home/xhs/.config/nvim/plugin/packer_compiled.lua
080.152  001.105: loading rtp plugins
080.465  000.141  000.141: sourcing /home/xhs/.local/share/nvim/site/pack/packer/start/nvim-lspconfig/plugin/lspconfig.vim
080.728  000.051  000.051: sourcing /home/xhs/.local/share/nvim/site/pack/packer/start/plenary.nvim/plugin/plenary.vim
080.859  000.515: loading packages
081.549  000.231  000.231: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim
081.688  000.029  000.029: sourcing /home/xhs/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua
081.698  000.579: loading after plugins
081.709  000.011: inits 3
083.789  002.080: reading ShaDa
083.939  000.150: opening buffers
084.092  000.153: BufEnter autocommands
084.096  000.004: editing files in windows
084.099  000.004: VimEnter autocommands
084.102  000.002: UIEnter autocommands
084.104  000.002: before starting main loop
084.340  000.236: first screen update
084.343  000.003: --- NVIM STARTED ---
