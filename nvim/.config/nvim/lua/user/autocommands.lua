-- NVIM autocommands

-- keymap options
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

vim.cmd [[
augroup _general_settings
  autocmd!

  " Open file where last closed
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

augroup end
]]

vim.cmd [[
augroup _save_folds
  autocmd!

    autocmd BufWinLeave *.tex mkview
    autocmd BufWinEnter *.tex silent loadview 

augroup end
]]

local latex = vim.api.nvim_create_augroup("_latex-settings", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
  pattern = {"*.tex", "*.bib"},
  callback = function()
    vim.wo.colorcolumn = "";
    vim.api.nvim_command('set spell spelllang=en_us');
    vim.o.foldmethod = 'indent';
  end,
  group = latex,
})

local docker = vim.api.nvim_create_augroup("_docker-settings", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*Dockerfile_K8s", "*Dockerfile*"},
  callback = function()
    vim.cmd [[
      set ft=dockerfile
    ]]
  end,
  group = docker,
})


local jenkins = vim.api.nvim_create_augroup("_jenkins-settings", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*Jenkinsfile*"},
  callback = function()
    vim.cmd [[
      set ft=groovy
    ]]
    --keymap("n", "<leader>tf", "lua require(\"jenkinsfile_linter\").validate()",opts);
  end,
  group = jenkins,
})

local yaml = vim.api.nvim_create_augroup("_yaml-settings", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"all", "*yaml*", "*yml*"},
  callback = function()
    vim.cmd [[
      set ft=yaml
    ]]
    --keymap("n", "<leader>tf", "lua require(\"jenkinsfile_linter\").validate()",opts);
  end,
  group = yaml,
})
