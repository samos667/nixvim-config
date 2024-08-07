{pkgs, ...}: {
  extraPackages = with pkgs; [
    go
    gofumpt
  ];

  plugins = {
    dap.extensions.dap-go.enable = true;
    neotest.enable = true;
    neotest.adapters.go.enable = true;

    lsp.servers = {
      golangci-lint-ls.enable = true;
      gopls.enable = true;
    };

    conform-nvim = {
      formattersByFt = {
        go = ["gofumpt"];
      };
    };
  };
}
