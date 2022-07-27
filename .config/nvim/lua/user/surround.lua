local surround = require("surround")

surround.setup(
  {
    context_offset = 100,
    load_autogroups = false,
    mappings_style = "sandwich",
    map_insert_mode = true,
    quotes = {"'", '"'},
    brackets = {"(", '{', '['},
    space_on_closing_char = false,
    pairs = {
      nestable = {
        h = { "(", ")" },
        t = { "[", "]" },
        n = { "{", "}" },
        d = { "<", ">" }
        },
      linear = {
        l = { "'", "'" },
        v = { "`", "`" },
        m = { '"', '"' }
        }
    },
    prefix = "i"
  }
)
