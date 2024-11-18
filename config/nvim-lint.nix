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
      text = [ "vale" ];
    };
    autoCmd = {
      callback.__raw = ''
        function()
          require('lint').try_lint()
        end
      '';
      group = "lint";
      event = [
        "BufEnter"
        "BufWritePost"
        "InsertLeave"
      ];
    };
  };
  autoGroups = {
    lint = {
      clear = true;
    };
  };
}
