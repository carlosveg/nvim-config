local status_ok = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Setup lspconfig.
-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require("user.lsp.handlers").capabilities
local on_attach = require("user.lsp.handlers").on_attach

require('lspconfig')['bashls'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}

require('lspconfig')['jdtls'].setup {
  capabilities = capabilities,
  on_attach = on_attach
}

require('lspconfig')['pyright'].setup {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
	},
  capabilities = capabilities,
  on_attach = on_attach
}

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
  capabilities = capabilities;
  on_attach = on_attach
}
