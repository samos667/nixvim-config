{
  imports = [
    ./autocommands.nix
    ./completion
    ./dap.nix
    ./keymappings.nix
    ./options.nix
    ./plugins
  ];

  luaLoader.enable = true;

  # Highlight and remove extra white spaces
  highlight.ExtraWhitespace.bg = "red";
  match.ExtraWhitespace = "\\s\\+$";
}
