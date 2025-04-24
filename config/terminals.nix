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
      action = "<cmd>ToggleTerm direction=\"vertical\"<CR>";
      key = "<Leader>tv";
      options = {
        desc = "[T]erminal [v]ertical";
        silent = true;
      };
    }
    {
      action = "<cmd>ToggleTerm direction=\"horizontal\"<CR>";
      key = "<Leader>th";
      options = {
        desc = "[T]erminal [h]orizontal";
        silent = true;
      };
    }
    {
      action = "<cmd>ToggleTerm direction=\"float\"<CR>";
      key = "<Leader>th";
      options = {
        desc = "[T]erminal [f]loating";
        silent = true;
      };
    }
  ];
}
