local queries = require("nvim-treesitter.query")
local parsers = require("nvim-treesitter.parsers")
local configs = require("nvim-treesitter.configs")

local M = {}


function M.attach(bufnr, lang)
    local config = configs.get_module("treesitter-rgb")
    local max_file_lines = config.max_file_lines
    if max_file_lines ~= nil and vim.api.nvim_buf_line_count(bufnr) > max_file_lines then
        return
    end
    local parser = parsers.get_parser(bufnr, lang)
    parser:register_cbs({
    })
    -- TODO: Fill this with what you need to do when attaching to a buffer
end

function M.detach(bufnr)

    -- TODO: Fill this with what you need to do when detaching from a buffer
end

return M
