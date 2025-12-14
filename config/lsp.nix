{pkgs, ...}: {
  # Useful status updates for LSP.
  # https://nix-community.github.io/nixvim/plugins/fidget/index.html
  plugins.fidget = {
    enable = true;
  };

  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugi#extraplugins
  extraPlugins = with pkgs.vimPlugins; [
    # NOTE: This is how you would ad a vim plugin that is not implemented in Nixvim, also see extraConfigLuaPre below
    # `neodev` configure Lua LSP for your Neovim config, runtime and plugins
    # used for completion, annotations, and signatures of Neovim apis
    neodev-nvim
  ];
  # https://nix-community.github.io/nixvim/NeovimOptions/index.html?highlight=extraplugi#extraconfigluapre
  extraConfigLuaPre = ''
    require('neodev').setup {}
  '';

  # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
  # autoGroups = {
  #   "kickstart-lsp-attach" = {
  #     clear = true;
  #   };
  # };

  # https://nix-community.github.io/nixvim/plugins/lsp/index.html
  plugins.lsp-format.enable = true;
  plugins.lsp-signature.enable = true;
  plugins.lspkind = {
    enable = true;
    settings = {
      symbolMap.Copilot = " ";
      cmp.enable = true;
      cmp.maxWidth = 24;
      cmp.after =
        # lua
        ''
          function(entry, vim_item, kind)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            kind.menu = "   ⌈" .. (strings[2] or "") .. "⌋"
            return kind
          end
        '';
    };
  };
  plugins.lsp = {
    enable = true;
    servers = {
      ltex = {
        enable = true;
        settings = {
          completionEnabled = true;
          language = "pt-BR";
          additionalRules = {
            enablePickyRules = true;
          };
        };
      };

      nil_ls = {
        enable = true;
      };

      sqls = {
        enable = true;
      };

      julials = {
        enable = true;
        package = null;
      };

      r_language_server = {
        enable = true;
        package = null;
        filetypes = ["R" "r" "rmd"];
      };

      pyright = {
        enable = true;
      };

      lua_ls = {
        enable = true;

        settings = {
          completion = {
            callSnippet = "Replace";
          };
        };
      };
    };

    keymaps = {
      # Diagnostic keymaps
      diagnostic = {
        "[d" = {
          #mode = "n";
          action = "goto_prev";
          desc = "Go to previous [D]iagnostic message";
        };
        "]d" = {
          #mode = "n";
          action = "goto_next";
          desc = "Go to next [D]iagnostic message";
        };
        "<leader>se" = {
          #mode = "n";
          action = "open_float";
          desc = "[S]how diagnostic [E]rror messages";
        };
        "<leader>dq" = {
          #mode = "n";
          action = "setloclist";
          desc = "Open [D]iagnostic [Q]uickfix list";
        };
      };

      extra = [
        # Jump to the definition of the word under your cusor.
        #  This is where a variable was first declared, or where a function is defined, etc.
        #  To jump back, press <C-t>.
        {
          mode = "n";
          key = "gd";
          action.__raw = "require('telescope.builtin').lsp_definitions";
          options = {
            desc = "LSP: [G]oto [D]efinition";
          };
        }
        # Find references for the word under your cursor.
        {
          mode = "n";
          key = "gr";
          action.__raw = "require('telescope.builtin').lsp_references";
          options = {
            desc = "LSP: [G]oto [R]eferences";
          };
        }
        # Jump to the implementation of the word under your cursor.
        #  Useful when your language has ways of declaring types without an actual implementation.
        {
          mode = "n";
          key = "gI";
          action.__raw = "require('telescope.builtin').lsp_implementations";
          options = {
            desc = "LSP: [G]oto [I]mplementation";
          };
        }
        # Jump to the type of the word under your cursor.
        #  Useful when you're not sure what type a variable is and you want to see
        #  the definition of its *type*, not where it was *defined*.
        {
          mode = "n";
          key = "<leader>D";
          action.__raw = "require('telescope.builtin').lsp_type_definitions";
          options = {
            desc = "LSP: Type [D]efinition";
          };
        }
        # Fuzzy find all the symbols in your current document.
        #  Symbols are things like variables, functions, types, etc.
        {
          mode = "n";
          key = "<leader>ds";
          action.__raw = "require('telescope.builtin').lsp_document_symbols";
          options = {
            desc = "LSP: [D]ocument [S]ymbols";
          };
        }
        # Fuzzy find all the symbols in your current workspace.
        #  Similar to document symbols, except searches over your entire project.
        {
          mode = "n";
          key = "<leader>ws";
          action.__raw = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
          options = {
            desc = "LSP: [W]orkspace [S]ymbols";
          };
        }
      ];

      lspBuf = {
        # Rename the variable under your cursor.
        #  Most Language Servers support renaming across files, etc.
        "<leader>rn" = {
          action = "rename";
          desc = "LSP: [R]e[n]ame";
        };
        # Execute a code action, usually your cursor needs to be on top of an error
        # or a suggestion from your LSP for this to activate.
        "<leader>ca" = {
          #mode = "n";
          action = "code_action";
          desc = "LSP: [C]ode [A]ction";
        };
        # Opens a popup that displays documentation about the word under your cursor
        #  See `:help K` for why this keymap.
        "K" = {
          action = "hover";
          desc = "LSP: Hover Documentation";
        };
        # WARN: This is not Goto Definition, this is Goto Declaration.
        #  For example, in C this would take you to the header.
        "gD" = {
          action = "declaration";
          desc = "LSP: [G]oto [D]eclaration";
        };
      };
    };
  };
}
