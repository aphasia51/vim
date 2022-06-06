local au = vim.api.nvim_create_autocmd

-- go settings
au({"BufWritePre"}, { pattern = "*.go", command = ":silent! lua require('go.format').gofmt()" })

