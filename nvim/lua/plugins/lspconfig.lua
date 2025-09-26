return {
  "neovim/nvim-lspconfig",
  setup = {
    require("lspconfig").qmlls.setup({}),
  },
}
