{
  # An incremental parsing system for programming tools -- https://github.com/tree-sitter/tree-sitter
  plugins = {
    treesitter = {
      enable = true;

      nixvimInjections = true;

      folding = true;
      indent = true;
    };

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };

    hmts.enable = true;
  };

  imports = [
    ./comment.nix
    ./treesitter-context.nix
    ./treesitter-commentstring.nix
  ];
}
