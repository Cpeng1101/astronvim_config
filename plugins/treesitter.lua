return {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "comment",
    "cpp",
    "dockerfile",
    "json",
    "latex",
    "lua",
    "make",
    "markdown",
    "python",
    "regex",
    "vim",
    "yaml",
  },
  indent = { enable = true, disable = { "python" } },

  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = 1000,
  },
}
