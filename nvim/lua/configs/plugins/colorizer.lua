return {
    "norcalli/nvim-colorizer.lua",
    event = "User FilePost",
    config = function ()
        require 'colorizer'.setup {
            'css';
            'javascript';
            html = {
                mode = 'foreground';
            }
        }
    end
}
