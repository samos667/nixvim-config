{ pkgs, ... }:
let
  nu-grammar = pkgs.tree-sitter.buildGrammar {
    language = "nu";
    version = "0.0.0+rev=0bb9a60";
    src = pkgs.fetchFromGitHub {
      owner = "nushell";
      repo = "tree-sitter-nu";
      rev = "0bb9a602d9bc94b66fab96ce51d46a5a227ab76c";
      hash = "sha256-A5GiOpITOv3H0wytCv6t43buQ8IzxEXrk3gTlOrO0K0=";
    };
  };
in {

  plugins.lsp.servers.nushell.enable = true;

  # Set filetype to "nu" for files named "*.nu"
  filetype.extension.nu = "nu";

  # Add our nu parser to treesitter and associate it with nu filetype.
  extraConfigLua = ''
    local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

    parser_config.nu = {
      filetype = "nu",
    }
  '';

  # Add the nu injections
  extraFiles = {
    "/queries/nu/highlights.scm" =
      (builtins.readFile "${nu-grammar}/queries/nu/highlights.scm");
    "/queries/nu/injections.scm" =
      (builtins.readFile "${nu-grammar}/queries/nu/injections.scm");
  };

  plugins = {
    treesitter = {
      languageRegister.nu = "nu";
      grammarPackages = [ nu-grammar ]
        ++ pkgs.vimPlugins.nvim-treesitter.allGrammars;
    };
  };
}
