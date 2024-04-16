local options = {
    blank = {
        enable = false,
    },
    chunk = {
        chars = {
            horizontal_line = "─",
            vertical_line = "│",
            left_top = "┌",
            left_bottom = "└",
            right_arrow = ">",
        },
        style = {
            "#806d9c",
            "#c21f30",
        },
    },
    indent = {
        enable = false,
    },
    line_num = {
        enable = true,
        style = "#806d9c",
    },
}

require("hlchunk").setup(options)
