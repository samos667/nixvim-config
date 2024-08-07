{pkgs, ...}: {
  extraPackages = with pkgs; [terraform];
  plugins = {
    lsp.servers.terraformls.enable = true;

    conform-nvim = {
      formattersByFt = {
        terraform = ["terraform_fmt"];
      };
    };
  };
}
