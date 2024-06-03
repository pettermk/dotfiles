-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  {
    'nvim-orgmode/orgmode', config = function()
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
    end
  }
}
