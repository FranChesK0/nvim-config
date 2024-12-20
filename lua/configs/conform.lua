local options = {
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "prettier" },
    go = { "gofumpt", "goimports-reviser", "golines" },
    html = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    lua = { "stylua" },
    python = { "isort", "black" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  formatters = {
    -- python
    isort = {
      command = "isort",
      args = {
        "--profile",
        "black",
        "--line-length",
        "90",
        "--extend-skip",
        "__init__.py",
        "--trailing-comma",
        "--quiet",
        "-",
      },
    },
    black = {
      command = "black",
      args = {
        "--line-length",
        "90",
        "--quiet",
        "-",
      },
    },

    -- Go
    ["go-imports-reviser"] = {
      prepend_args = {
        "-rm-unused",
      },
    },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
