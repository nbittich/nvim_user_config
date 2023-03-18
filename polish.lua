return function()
  -- Java
  vim.api.nvim_create_autocmd("Filetype", {
    pattern = "java", -- autocmd to start jdtls
    callback = function()
      local config = require("astronvim.utils.lsp").config "jdtls"
      if config.root_dir and config.root_dir ~= "" then require("jdtls").start_or_attach(config) end
    end,
  })
  -- Rust
  vim.api.nvim_create_autocmd("Filetype", {
    pattern = "rust", -- autocmd to start jdtls
    callback = function()
      -- local config = require("astronvim.utils.lsp").config "rust-tools"
      require("rust-tools").setup() 
    end,
  })
  
end
