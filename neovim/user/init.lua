{
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    require('orgmode').setup({
      org_agenda_files = {'~/Code/notes/journal/*'},
      org_capture_templates = {
        j = {
          description = 'journal',
          target = '~/Code/notes/journal/%<%Y>/%<%m>/%<%d>.org',
          template = '%T'
        }
      }
    })

-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
-- add ~org~ to ignore_install
-- require('nvim-treesitter.configs').setup({
--   ensure_installed = 'all',
--   ignore_install = { 'org' },
-- })
}
