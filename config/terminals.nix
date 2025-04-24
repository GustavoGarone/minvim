{
  plugins = {
    toggleterm = {
      enable = true;
      direction = "float";
      settings = {
        float_opts = {
          border = "curved";
          height = 30;
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
      action = "<cmd>Toggleterm direction=\"vertical\"<CR>";
      key = "<Leader>tv";
      options = {
        desc = "[T]erminal [v]ertical";
        silent = true;
      };
    }
    {
      action = "<cmd>Toggleterm direction=\"horizontal\"<CR>";
      key = "<Leader>th";
      options = {
        desc = "[T]erminal [h]orizontal";
        silent = true;
      };
    }
    {
      action = "<cmd>Toggleterm direction=\"float\"<CR>";
      key = "<Leader>th";
      options = {
        desc = "[T]erminal [f]loating";
        silent = true;
      };
    }
  ];
}
