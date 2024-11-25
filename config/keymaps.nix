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
      action = "<Cmd>MoltenEvaluateVisual<CR>";
      key = "<Leader>mv";
      options.desc = "[M]olten run [v]isual";
    }
    {
      action = "<Cmd>MoltenEvaluateLine<CR>";
      key = "<C-CR>";
      options = {
        desc = "Molten evaluate line";
        silent = true;
      };
    }
    {
      action = "<Cmd>MoltenImagePopup<CR>";
      key = "<Leader>mi";
      options = {
        desc = "[M]olten [i]mage popup";
        silent = true;
      };
    }
    {
      action = "<Cmd>MoltenHideOutput<CR>";
      key = "<Leader>mh";
      options = {
        desc = "[M]olten [h]ide output";
        silent = true;
      };
    }
    {
      action = "<Cmd>MoltenShowOutput<CR>";
      key = "<Leader>ms";
      options = {
        desc = "[M]olten [s]how output";
        silent = true;
      };
    }
    {
      action = "<Cmd>QuartoSend<CR>";
      key = "<Leader>mc";
      options = {
        desc = "[M]olten run [c]ell";
        silent = true;
      };
    }
    {
      action = "<Cmd>QuartoSendAll<CR>";
      key = "<Leader>ma";
      options = {
        desc = "[M]olten run [a]ll";
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
  ];
}
