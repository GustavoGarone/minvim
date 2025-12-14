{
  plugins = {
    luasnip = {
      enable = true;
    };
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "nvim_lsp_signature_help";}
          {name = "nvim_lsp_document_symbol";}
          {name = "copilot";}
          {name = "luasnip";}
          {name = "buffer";}
          {name = "path";}
        ];
        experimental.ghost_text = true;
        performance = {
          debounce = 60;
          fetching_timeout = 200;
          max_view_entries = 30;
        };
        window = {
          completion.winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None";
          completion.border = "rounded";
          documentation.border = "rounded";
          completion.col_offset = -3;
          completion.side_padding = 0;
        };
        formatting = {
          expandable_indicator = true;
          fields = [
            "kind"
            "abbr"
            "menu"
          ];
        };
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_next_item()
              elseif require("luasnip").expand_or_jumpable() then
                require("luasnip").expand_or_jump()
              else
                fallback()
              end
            end, {'i', 's'})
          '';
          "<S-Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.select_prev_item()
              elseif require("luasnip").jumpable(-1) then
                require("luasnip").jump(-1)
              else
                fallback()
              end
            end, {'i', 's'})
          '';
          "<S-f>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
        };
      };
    };
  };
}
