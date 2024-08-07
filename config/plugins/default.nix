{
  imports = [
    ./floaterm.nix
    ./harpoon.nix
    ./languages
    ./lualine.nix
    ./markdown-preview.nix
    # ./neorg.nix
    ./neo-tree.nix
    ./startify.nix
    ./tagbar.nix
    ./telescope.nix
    ./git.nix
    ./todo.nix
    ./ui
    ./lsp
    ./utils
  ];

  colorschemes.catppuccin = {
    enable = true;
    settings.flavour = "mocha";
  };

  plugins = {
    gitsigns = {
      enable = true;
      settings.signs = {
        add.text = "+";
        change.text = "~";
      };
    };

    nvim-autopairs.enable = true;

    nvim-colorizer = {
      enable = true;
      userDefaultOptions.names = false;
    };

    oil.enable = true;
  };
}
