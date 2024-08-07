{pkgs, ...}: {
  extraPackages = [pkgs.alejandra];
  plugins = {
    lsp.servers.nil_ls.enable = true;

    conform-nvim = {
      formattersByFt = {
        nix = ["alejandra"];
      };
    };
  };
}
