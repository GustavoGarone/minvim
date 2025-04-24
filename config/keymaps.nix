{
  keymaps = [
    {
      action = "<Cmd>Neotree toggle<CR>";
      key = "<Leader>e";
      options = {
        desc = "Toggle Neotree [E]xplorer";
        silent = true;
      };
    }
    {
      action = "<Cmd>split<CR><C-w>12-<Cmd>terminal<CR>i";
      key = "<Leader>t";
      options = {
        desc = "Open [T]erminal";
        silent = true;
      };
    }
    {
      action = "<Cmd>vsplit<CR><C-w>12-<Cmd>terminal<CR>i";
      key = "<Leader>t";
      options = {
        desc = "Open [T]erminal";
        silent = true;
      };
    }
    {
      action = "<Cmd>set spell spelllang=pt<CR>";
      key = "<Leader>sp";
      options = {
        desc = "[S]pell [p]ortuguese";
        silent = true;
      };
    }
    {
      action = "<Cmd>set spell spelllang=en<CR>";
      key = "<Leader>se";
      options = {
        desc = "[S]pell [e]nglish";
        silent = true;
      };
    }
    {
      action = "<Cmd>set nospell<CR>";
      key = "<Leader>sn";
      options = {
        desc = "[S]pell [n]ospell";
        silent = true;
      };
    }
    {
      action = "<Cmd>QuartoSend<CR>";
      key = "<Leader>qs";
      options = {
        desc = "[q]uarto [s]end";
        silent = true;
      };
    }
    {
      action = "<Cmd>QuartoSendAll<CR>";
      key = "<Leader>qa";
      options = {
        desc = "[q]uarto send [a]ll";
        silent = true;
      };
    }
    {
      action = "<Cmd>QuartoPreview<CR>";
      key = "<Leader>qp";
      options = {
        desc = "[Q]uarto [p]review";
        silent = true;
      };
    }
    # Center screen when scrolling
    {
      action = "<C-d>zz";
      key = "<C-d>";
    }
    {
      action = "<C-u>zz";
      key = "<C-u>";
    }
    {
      action = "nzzzv";
      key = "n";
    }
    {
      action = "Nzzv";
      key = "N";
    }
    # Window navigation
    {
      action = "<C-w>j";
      key = "<C-j>";
    }
    {
      action = "<C-w>h";
      key = "<C-h>";
    }
    {
      action = "<C-w>k";
      key = "<C-k>";
    }
    {
      action = "<C-w>l";
      key = "<C-l>";
    }
    # Bufferline
    {
      action = "<cmd>BufferLineCycleNext<CR>";
      key = "<Tab>";
      mode = [ "n" "v" ];
      options = {
        desc = "Go to next [Tab]";
      };
    }
    {
      action = "<cmd>BufferLineCyclePrev<CR>";
      key = "<S-Tab>";
      mode = [ "n" "v" ];
      options = {
        desc = "Go to previous [Tab]";
      };
    }
    {
      action = "<cmd>bdelete<CR>";
      key = "<Leader>x";
      options = {
        desc = "Delete current buffer";
      };
    }
    {
      action = "<cmd>bdelete!<CR>";
      key = "<Leader>X";
      options = {
        desc = "Delete! current buffer";
      };
    }
    # Copiar e colar sem trocar | Não funcionando ainda
    {
      action = "_d";
      key = "<Leader>d";
      options = {
        desc = "[D]elete without overwriting clipboard";
      };
    }
    {
      action = "_p";
      key = "<Leader>p";
      options = {
        desc = "[P]aste without overwriting clipboard";
      };
    }
  ];
}
