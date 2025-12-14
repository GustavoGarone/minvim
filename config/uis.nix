{
  plugins = {
    bufferline.enable = true;
    which-key.enable = true;
    web-devicons.enable = true;
    colorizer.enable = true;
    notify.enable = true;
    neo-tree = {
      enable = true;
    };
    indent-blankline = {
      enable = true;
      settings = {
        exclude = {
          filetypes = [
            ""
            "checkhealth"
            "help"
            "lspinfo"
            "packer"
            "TelescopePrompt"
            "TelescopeResults"
            "yaml"
            "dashboard"
          ];
          buftypes = [
            "terminal"
            "quickfix"
          ];
        };
      };
    };
    # TODO: Clean this up a bit
    lualine = {
      enable = true;
      lazyLoad.settings.event = "BufEnter";
      lazyLoad.settings.cmd = ["StatusLine"];
      lazyLoad.settings.before.__raw = ''
        require('lsp-progress').setup()
      '';
      settings.theme = "edge";
      settings.options.disabled_filetypes.__unkeyed-1 = "NvimTree";
      settings.options.disabled_filetypes.statusline = [
        "sagaoutline"
        "Trouble"
      ];
      settings.options.component_separators.left = "";
      settings.options.component_separators.right = "";
      settings.options.section_separators.left = "";
      settings.options.section_separators.right = "";
      settings.sections.lualine_a = [
        {
          __unkeyed-1 = "mode";
          separator.right = "";
          padding.left = 1;
        }
      ];
      settings.sections.lualine_b = [
        {
          __unkeyed-1 = "branch";
          color.fg = "BlueSign";
        }
        "diff"
      ];
      settings.sections.lualine_c = [
        "diagnostics"
      ];
      settings.sections.lualine_x = [
        "searchcount"
        "selectioncount"
      ];
      settings.sections.lualine_y = [
        {
          __unkeyed-1.__raw =
            # lua
            ''
              (function()
                local ft = require('lualine.components.filetype'):extend()
                local lsp_progress = require('lsp-progress')

                function ft:update_status()
                  local data = ft.super.update_status(self)
                  return lsp_progress.progress({
                    max_size = 50,
                    format = function(messages)
                        if #messages > 0 then
                            return table.concat(messages, " ")
                        end
                        return data
                    end,
                  })
                end

                return ft
              end)()
            '';
        }
        "progress"
      ];
      settings.sections.lualine_z = [
        {
          __unkeyed-1 = "location";
          separator.left = "";
          padding.right = 1;
        }
      ];
      settings.winbar = {};
      settings.tabline = {};
      settings.extensions = [];
    };
  };
}
