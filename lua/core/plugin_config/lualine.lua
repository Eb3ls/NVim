
require('lualine').setup{
    options = {
        incons_enabled = true,
    },
    sections = {
        lualine_a = {
            {
                'filename',
                path = 1,
            }
        }
    }
}
