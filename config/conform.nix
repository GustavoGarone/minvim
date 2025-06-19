{
  plugins = {
    comment = {
      enable = true;
    };
    conform-nvim = {
      enable = true;
      settings = {
        formatters_by_ft = {
          nix = ["alejandra"];
          python = ["isort" "black"];
          r = ["styler"];
          julia = ["runic"];
          quarto = ["mdformat" "injected"];
          markdown = ["mdformat" "injected"];
          latex = ["tex-fmt"];
          yaml = ["yamlfix"];
          "_" = [
            "squeeze_blanks"
            "trim_whitespace"
            "trim_newlines"
          ];
        };
        format_on_save =
          # Lua
          ''
            function(bufnr)
              if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
              end

              -- if slow_format_filetypes[vim.bo[bufnr].filetype] then
              --   return
              -- end

              -- local function on_format(err)
              --   if err and err:match("timeout$") then
              --     slow_format_filetypes[vim.bo[bufnr].filetype] = true
              --   end
              -- end

              return { timeout_ms = 10000, lsp_fallback = true }, on_format
            end
          '';
        formatters = {
          runic = {
            command = "julia";
            args = ["--project=@runic" "-e" "using Runic; exit(Runic.main(ARGS))"];
          };
        };
      };
    };
  };
}
