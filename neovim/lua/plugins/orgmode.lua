return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    require('orgmode').setup({
      org_agenda_files = {'/home/petter/Code/notes/journal/**/*'},
      org_capture_templates = {
        j = {
          description = 'journal',
          target = '/home/petter/Code/notes/journal/%<%Y>/%<%m>/%<%d>.org',
          template = '%T'
        }
      }
    })
  end,
}
