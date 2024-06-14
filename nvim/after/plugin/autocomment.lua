require('nvim_comment').setup(
{
    -- Linters prefer comment and line to have a space in between markers
    marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = false,
    -- trim empty comment whitespace
    comment_empty_trim_whitespace = false,
    -- Should key mappings be created
    create_mappings = true,
    -- Normal mode mapping left hand side
    line_mapping = "<leader>cl", -- Change to <leader>cl
    -- Visual/Operator mapping left hand side
    operator_mapping = "<leader>cp", -- Change to <leader>cp
    -- text object mapping, comment chunk,,
    comment_chunk_text_object = nil, -- Disable the text object mapping
    -- Hook function to call before commenting takes place
    hook = nil
})
