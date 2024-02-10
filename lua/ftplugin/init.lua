local M = {}

function M.setup(options)
  local ftplugins = options.ftplugins or {}
  for filetype, callback in pairs(ftplugins) do
    vim.api.nvim_create_autocmd("Filetype", {
      pattern = filetype,
      callback = callback
    })
  end
end

return M
