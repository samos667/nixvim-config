{ # The neovim tabline plugin. -- https://github.com/romgrk/barbar.nvim
  plugins.barbar = {
    enable = true;

    keymaps = {
      next.key = "<TAB>";
      previous.key = "<S-TAB>";
      close.key = "<C-w>";
    };
  };
}
