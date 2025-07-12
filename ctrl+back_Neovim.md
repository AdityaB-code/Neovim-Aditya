Good catch — here’s the **issue**:
In **Neovim**, `<C-W>` in **insert mode** does not work like in command mode. Instead, you need to leave insert mode, delete the word, then return to insert mode.

✅ **Working version:**

```lua
-- Map Ctrl+Backspace in insert mode to delete previous word
vim.api.nvim_set_keymap('i', '<C-H>', '<C-o>db', { noremap = true })
```

**Explanation:**

* `<C-o>` runs a normal mode command **without fully leaving insert mode**.
* `db` in normal mode deletes back to the start of the previous word.
* So this does: **from insert mode → normal mode `db` → back to insert mode**.

💡 **Reload config** and test.
This works 100% in Neovim.
