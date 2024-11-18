{
  plugins.lint = {
    enable = true;
    lintersByFt = {
      c = [ "cpplint" ];
      cpp = [ "cpplint" ];
      nix = [ "nix" ];
      lua = [ "selene" ];
      python = [ "flake8" ];
      json = [ "jsonlint" ];
      haskell = [ "hlint" ];
      bash = [ "shellcheck" ];
      zsh = [ "zsh" ];
      markdown = [ "vale" ];
    };
  };
}
