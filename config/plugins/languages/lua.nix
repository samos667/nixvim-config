{pkgs, ...}: {
  extraPackages = with pkgs; [
    stylua
    lua54Packages.luacheck
  ];

  plugins = {
    lsp.servers.lua-ls.enable = true;

    conform-nvim = {
      formattersByFt = {
        lua = ["stylua"];
      };
    };

    lint = {
      lintersByFt = {
        lua = ["luacheck"];
      };
    };
  };
}
