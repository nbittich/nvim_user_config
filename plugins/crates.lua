return {
  {
    "saecki/crates.nvim",
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("crates").setup()
    end,
  },
}
