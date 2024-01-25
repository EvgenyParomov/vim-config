local M = {}

-- Функция для генерации UUID с использованием uuidgen
local function generate_uuid()
  local handle = io.popen "uuidgen"
  local result = handle:read "*a"
  handle:close()
  return result:gsub("\n", "") -- Удаление перевода строки из вывода
end

-- Функция для вставки UUID
function M.insert_uuid()
  local uuid = generate_uuid()
  -- Вставляем UUID в текущую позицию курсора
  vim.api.nvim_put({ uuid }, "", false, true)
end

return M
