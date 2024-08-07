{ # Vim plugin that displays tags in a window, ordered by scope -- https://github.com/preservim/tagbar
  plugins.tagbar = {
    enable = true;

    settings.width = 50;
  };

  keymaps = [{
    mode = "n";
    key = "<C-g>";
    action = ":TagbarToggle<cr>";
    options.silent = true;
  }];
}
