{
  plugins = {
    toggleterm = {
      enable = true;
      settings = {
        direction = "float";
        float_opts = {
          border = "curved";
          height = 40;
          width = 130;
        };
        open_mapping = "[[<c-t>]]";
      };
    };
  };
  keymaps = [
    {
      action = "<C-\\><C-n>";
      key = "<Esc>";
      mode="t";
    }
    {
      mode="n";
      action = "<cmd>ToggleTerm direction=\"vertical\"<CR>";
      key = "<Leader>tv";
      options = {
        desc = "[T]erminal [v]ertical";
        silent = true;
      };
    }
    {
      mode="n";
      action = "<cmd>ToggleTerm direction=\"horizontal\"<CR>";
      key = "<Leader>th";
      options = {
        desc = "[T]erminal [h]orizontal";
        silent = true;
      };
    }
    {
      mode="n";
      action = "2<c-n>";
      key = "<Leader>tf";
      options = {
        desc = "[T]erminal [f]loating";
        silent = true;
      };
    }
  ];
}
