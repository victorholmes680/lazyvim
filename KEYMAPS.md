# Neovim (LazyVim) 快捷键使用手册

> **配置概览**: 你的配置基于 **LazyVim** 框架，使用 `lazy.nvim` 插件管理器。自定义快捷键文件 `lua/config/keymaps.lua` 当前为空，所有快捷键继承自 LazyVim 默认配置。

> **生成日期**: 2026-03-07

---

## 📖 目录

- [Leader 键](#-leader-键)
- [窗口管理](#-窗口管理-windows)
- [缓冲区管理](#-缓冲区管理-buffers)
- [搜索 & 导航](#-搜索--导航)
- [编辑操作](#-编辑操作)
- [LSP 代码补全诊断](#-lsp-代码补全诊断)
- [界面切换](#-界面切换-ui-toggles)
- [Git 集成](#-git-集成)
- [终端](#-终端)
- [列表导航](#-列表导航)
- [Telescope 搜索](#-telescope-搜索)
- [其他功能](#-其他功能)
- [自定义快捷键](#-自定义快捷键)

---

## 📍 Leader 键

**默认 Leader 键**: `<Space>` (空格键)

---

## 🪟 窗口管理 (Windows)

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `Ctrl+h` | Normal | 跳转到左侧窗口 |
| `Ctrl+j` | Normal | 跳转到下方窗口 |
| `Ctrl+k` | Normal | 跳转到上方窗口 |
| `Ctrl+l` | Normal | 跳转到右侧窗口 |
| `Ctrl+↑` | Normal | 增加窗口高度 |
| `Ctrl+↓` | Normal | 减少窗口高度 |
| `Ctrl+←` | Normal | 减少窗口宽度 |
| `Ctrl+→` | Normal | 增加窗口宽度 |
| `<leader>-` | Normal | 水平分割窗口 |
| `<leader>\|` | Normal | 垂直分割窗口 |
| `<leader>wd` | Normal | 删除当前窗口 |
| `<leader>wm` | Normal | 最大化窗口 (Zoom) |
| `<leader>uZ` | Normal | 最大化窗口 (Zoom) |
| `<leader>uz` | Normal | Zen 模式切换 |

---

## 📑 缓冲区管理 (Buffers)

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `Shift+h` | Normal | 上一个缓冲区 |
| `Shift+l` | Normal | 下一个缓冲区 |
| `[b` | Normal | 上一个缓冲区 |
| `]b` | Normal | 下一个缓冲区 |
| `<leader>bb` | Normal | 切换到上一个缓冲区 |
| `<leader>` | Normal | 切换到上一个缓冲区 |
| `<leader>bd` | Normal | 删除当前缓冲区 |
| `<leader>bo` | Normal | 删除其他缓冲区 |
| `<leader>bD` | Normal | 删除缓冲区并关闭窗口 |

---

## 🔍 搜索 & 导航

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `n` | Normal | 下一个搜索结果 |
| `N` | Normal | 上一个搜索结果 |
| `*` | Normal | 搜索光标下的词（向前） |
| `#` | Normal | 搜索光标下的词（向后） |
| `<leader>ur` | Normal | 清除搜索高亮 / 重绘 |

**智能搜索**: `n` 和 `N` 会根据搜索方向自动调整，提供更直观的导航体验。

---

## 📝 编辑操作

### 行移动
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `Alt+j` | Normal | 向下移动当前行 |
| `Alt+k` | Normal | 向上移动当前行 |
| `Alt+j` | Insert | 向下移动当前行 |
| `Alt+k` | Insert | 向上移动当前行 |
| `Alt+j` | Visual | 向下移动选中行 |
| `Alt+k` | Visual | 向上移动选中行 |

### 缩进
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<` | Visual | 向左缩进（保持选择） |
| `>` | Visual | 向右缩进（保持选择） |

### 注释
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `gcc` | Normal | 切换行注释 |
| `gc` | Visual | 切换行注释（多行） |
| `gbc` | Normal | 切换块注释 |
| `gb` | Visual | 切换块注释（多行） |
| `gco` | Normal | 在下方添加注释 |
| `gcO` | Normal | 在上方添加注释 |
| `gcA` | Normal | 在行尾添加注释 |

### 文件操作
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `Ctrl+s` | 所有模式 | 保存文件 |
| `<leader>fn` | Normal | 新建文件 |

### 撤销断点
在插入模式下，以下字符会自动创建撤销断点：
- `,` (逗号)
- `.` (句号)
- `;` (分号)

---

## 🔧 LSP (代码补全/诊断)

### 诊断导航
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>cd` | Normal | 显示行诊断信息 (浮窗) |
| `]d` | Normal | 下一个诊断 |
| `[d` | Normal | 上一个诊断 |
| `]e` | Normal | 下一个错误 |
| `[e` | Normal | 上一个错误 |
| `]w` | Normal | 下一个警告 |
| `[w` | Normal | 上一个警告 |

### 代码格式化
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>cf` | Normal | 格式化代码 |
| `<leader>cf` | Visual | 格式化选中代码 |

### LSP 常用快捷键
| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `gd` | Normal | 跳转到定义 |
| `gD` | Normal | 跳转到声明 |
| `gr` | Normal | 查找引用 |
| `gy` | Normal | 跳转到类型定义 |
| `gI` | Normal | 跳转到实现 |
| `K` | Normal | 显示悬停文档 |
| `gk` | Normal | 显示签名帮助 |
| `<leader>ca` | Normal | 代码动作 |
| `<leader>cr` | Normal | 重命名 |
| `<leader>cA` | Normal | 源代码动作 |

---

## 🎛️ 界面切换 (UI Toggles)

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>uf` | Normal | 切换自动格式化 |
| `<leader>uF` | Normal | 切换全局自动格式化 |
| `<leader>us` | Normal | 切换拼写检查 |
| `<leader>uw` | Normal | 切换自动换行 |
| `<leader>uL` | Normal | 切换相对行号 |
| `<leader>ud` | Normal | 切换诊断显示 |
| `<leader>ul` | Normal | 切换行号显示 |
| `<leader>uc` | Normal | 切换隐藏级别 (Conceal) |
| `<leader>uA` | Normal | 切换标签栏 |
| `<leader>uT` | Normal | 切换 Treesitter |
| `<leader>ub` | Normal | 切换深色/浅色背景 |
| `<leader>uD` | Normal | 切换暗淡效果 |
| `<leader>ua` | Normal | 切换动画 |
| `<leader>ug` | Normal | 切换缩进指示 |
| `<leader>uS` | Normal | 切换滚动条 |
| `<leader>uh` | Normal | 切换内联提示 (Inlay Hints) |

---

## 🐙 Git 集成

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>gg` | Normal | 打开 Lazygit (项目根目录) |
| `<leader>gG` | Normal | 打开 Lazygit (当前目录) |
| `<leader>gL` | Normal | Git 日志 (当前目录) |
| `<leader>gb` | Normal | Git Blame (当前行) |
| `<leader>gf` | Normal | 当前文件 Git 历史 |
| `<leader>gl` | Normal | Git 日志 (项目根目录) |
| `<leader>gB` | Normal | Git 浏览 (打开远程链接) |
| `<leader>gB` | Visual | Git 浏览选中内容 (打开远程链接) |
| `<leader>gY` | Normal | Git 浏览 (复制远程链接) |
| `<leader>gY` | Visual | Git 浏览选中内容 (复制远程链接) |

**前提条件**: 需要安装 `lazygit`

---

## 💻 终端

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>ft` | Normal | 打开终端 (项目根目录) |
| `<leader>fT` | Normal | 打开终端 (当前目录) |
| `Ctrl+/` | Normal | 打开终端 (项目根目录) |
| `Ctrl+/` | Terminal | 打开新终端 (项目根目录) |
| `Ctrl+_` | Normal | 打开终端 (项目根目录) |
| `Ctrl+_` | Terminal | 打开新终端 (项目根目录) |

**终端模式快捷键**:
- `Ctrl+d` - 关闭终端
- `Ctrl+\` - 隐藏/显示终端

---

## 📋 列表导航

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>xl` | Normal | 打开/关闭位置列表 |
| `<leader>xq` | Normal | 打开/关闭 Quickfix 列表 |
| `[q` | Normal | 上一个 Quickfix |
| `]q` | Normal | 下一个 Quickfix |

---

## 🔍 Telescope 搜索

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>ff` | Normal | 查找文件 |
| `<leader>fg` | Normal | 查找文本 (Live Grep) |
| `<leader>fb` | Normal | 缓冲区列表 |
| `<leader>fh` | Normal | 帮助标签 |
| `<leader>fr` | Normal | 最近文件 |
| `<leader>fp` | Normal | **[自定义]** 查找插件文件 |

**Telescope 内部快捷键**:
- `Ctrl+j/k` - 上下移动
- `Ctrl+c` - 关闭
- `Enter` - 确认选择

---

## 🚀 其他功能

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>qq` | Normal | 退出所有 |
| `<leader>l` | Normal | 打开 Lazy 插件管理器 |
| `<leader>L` | Normal | LazyVim 更新日志 |
| `<leader>ui` | Normal | 检查光标位置高亮 |
| `<leader>uI` | Normal | 检查 Treesitter 树 |
| `<leader>K` | Normal | 关键词查找 (Keywordprg) |
| `<leader>dpp` | Normal | 切换性能分析器 |
| `<leader>dph` | Normal | 切换性能分析器 (高亮) |

---

## 📌 自定义快捷键

### 当前配置中的自定义快捷键

以下快捷键定义在 `lua/plugins/example.lua` 中：

| 快捷键 | 模式 | 功能 |
|:-------:|:-----:|:------|
| `<leader>fp` | Normal | 查找插件文件 (Telescope) |
| `<leader>co` | Normal | TypeScript 整理导入 |
| `<leader>cR` | Normal | TypeScript 重命名文件 |

> ⚠️ **注意**: `plugins/example.lua` 文件开头有 `if true then return {} end`，因此这些快捷键实际上**未生效**。

### 启用自定义快捷键

要启用上述快捷键，请编辑 `lua/plugins/example.lua` 文件：

```lua
-- 将第 3 行的
if true then return {} end

-- 改为
if false then return {} end
```

### 添加自定义快捷键

在 `lua/config/keymaps.lua` 中添加你自己的快捷键：

```lua
-- 示例：保存文件时自动格式化
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })

-- 示例：快速退出
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
```

---

## 🛠️ 配置文件说明

| 文件路径 | 说明 |
|:---------|:------|
| `lua/config/keymaps.lua` | 自定义快捷键配置（当前为空） |
| `lua/config/options.lua` | 自定义选项配置 |
| `lua/plugins/example.lua` | 插件配置示例（含快捷键，当前禁用） |
| `lua/config/lazy.lua` | LazyVim 和插件管理配置 |

---

## 💡 使用提示

1. **查看快捷键**: 按 `<leader>` 后稍等片刻，会弹出 `which-key` 快捷键提示面板

2. **查找快捷键**: 使用 `:map <key>` 或 `:help <key>` 查看特定键的映射

3. **禁用默认快捷键**: 在 `lua/config/keymaps.lua` 中使用 `vim.keymap.del()` 删除不需要的映射

4. **覆盖插件快捷键**: 在 `lua/plugins/` 下的插件配置中使用 `keys` 字段覆盖

---

## 📚 参考资源

- [LazyVim 官方文档](https://lazyvim.github.io/)
- [LazyVim 默认快捷键](https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua)
- [Neovim 官方文档](https://neovim.io/doc/)

---

*本手册由自动生成于 2026-03-07*
