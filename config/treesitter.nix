{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent = {
        enable = true;
      };
      highlight = {
        enable = true;
      };
      incremental_selection = {
        enable = true;
        keymaps = {
            init_selection = "<CR>";
            node_incremental = "<CR>";
            scope_incremental = "<TAB>";
            node_decremental = "<S-TAB>";
        };
      };
    };
   };

   plugins.treesitter-context = {
     enable = true;
   };

   plugins.treesitter-refactor = {
     enable = true;
     navigation.enable = true;
   };
}
