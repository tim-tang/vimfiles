
    ____   ____.__           ___________.__ .__                   
    \   \ /   /|__|  _____   \_   _____/|__||  |    ____    ______
     \   Y   / |  | /     \   |    __)  |  ||  |  _/ __ \  /  ___/
      \     /  |  ||  Y Y  \  |     \   |  ||  |__\  ___/  \___ \ 
       \___/   |__||__|_|  /  \___  /   |__||____/ \___  >/____  >
                         \/       \/                   \/      \/ 

## Installation
    
    $ git clone git@github.com:tim-tang/vimfiles.git ~/.vim
    $ cd ~/.vim && ./install.sh

## General update

    $ cd ~/.vim
    $ git pull

## Update plugins

    $ git submodule foreach "git checkout master && git pull"

## Remove plugin

    $ rm -rf bundle/vim-markdown
    $ git rm -r bundle/vim-markdown

## Install new plugins

在 <code>vimfiles</code> 目录下执行

    git submodule add '插件的 github 检出地址' 'bundle/插件名'
    git submodule init
    git submodule update

## Configuration modification

* Vim configuration => <code>bundle/Config/plugin/config.vm</code>
* Vim shortcut configuration => <code>bundle/Config/plugin/shortcut.vim</code>
* Plugin configuration => <code>bundle/Config/plugin/plugin-name.vim</code>

### Vim shotcuts

* Normal pattern
    * <code>gp</code>: 粘贴最近一次 yank 操作的文字 (比如 yy 之后又 dd 了，可以用 gp 来粘贴 yy 的结果)
    * <code><up></code>/<code><down></code>: 在分屏模式下放大 / 缩小当前窗口
    * <code>&lt;Leader&gt;nt</code>: 打开 NerdTree
    * <code>&lt;Leader&gt;nf</code> :打开 NerdTree 并且将光标跳转到现在编辑的文件 (nt 的意思是 Nerdtree Find)
    * <code>&lt;Leader&gt;m</code>: 调用系统 make
    * <code>&lt;Leader&gt;sh</code>: 打开系统 shell (打开 shell 之后退出会跳回 vim)
    * <code>&lt;F3&gt;</code>: 在当前目录以及子文件夹中搜索特定关键字 (搜索支持 Vim 正则, 默认会搜索 <code>\&lt;关键字&gt;></code>，如果要取消左右的 <code>\&lt;\&gt;</code>，可以输入 <code>/关键字</code>)
    * <code>&lt;F6&gt;</code>: 切换粘贴模式
    * <code>&lt;F5&gt;</code>: 切换显示行号
    * <code>&lt;F7&gt;</code>/<code>&lt;F8&gt;</code>: 跳到上一条/下一条 quickfix 记录，配合 <code>&lt;F3&gt;</code> 可以在搜索结果中快速跳转；在 vimdiff 模式下跳转到下一处/上一处 diff
    * <code>&lt;F9&gt;</code>: 快速编辑 Snippet，在 Snippet 中按 <code>&lt;F9&gt;</code> 会保存当前 Snippet，刷新 snipMate 缓存并返回刚刚编辑的文件
    * <code>&lt;F10&gt;</code>: 打开 TagBar
    * <code>&lt;Ctrl&gt;-l</code>: 清除高亮并且重绘屏幕
    * <code>&lt;Ctrl&gt;-_</code>: 分屏模式下当前窗口最大化
    * <code>t`</code>: 跳转到下一个大写字母 (驼峰式跳转)
    * <code>&lt;Leader&gt;gc</code>: git commit
    * <code>&lt;Leader&gt;gs</code>: git status
    * <code>g&lt;C-O&gt;</code><code>g&lt;C-I&gt;</code>: 跳转到当前文件中的上一个/下一个光标位置
    * <code>&lt;space&gt;</code>: 打开刚刚编辑的文件
* CommandLine 模式
    * <code>&lt;Ctrl&gt;-a</code>: 跳到命令行开始
    * <code>&lt;Ctrl&gt;-e</code>: 跳到命令行结束
* Insert 模式
    * ii: 退出到 Norm 模式并保存文件
    * <code>&lt;Ctrl&gt;-j</code>: 相当于 <code>&lt;Ctrl&gt;-x&lt;Ctrl&gt;-u</code>
    * <code>&lt;Command&gt;-r</code>: 仅在 MacVim 下有效，执行 :silent make
* CtrlP
    * 参考插件列表中 CtrlP 的介绍
* Objective C 文件编辑
    * <code>&lt;leader&gt;-a</code>: 在 .m 和 .h 文件间切换

## Plugin details

* vitality 在 iterm2 下支持光标样式切换，以及给 tmux 提供一些高级 feature
* CtrlP
    * 强大的文件查找工具，主要快捷键映射有
    * <code>&lt;Ctrl&gt;-p</code> 搜索 Buffer/文件/最近使用的文件 (Mixed 模式)
    * <code>&lt;Ctrl&gt;-j/&lt;Ctrl&gt;-k</code> 搜索 Tag
* nerdcommenter 快速给代码加注释 ,具体用法参考：-> <https://github.com/scrooloose/nerdcommenter>
* vim-surround 修改一段代码周围的引号、括号等
* CmdlineComplete 给命令行提供补全功能
* bufexplorer 提供 Buffer 列表
* zencoding-vim
    * 快捷键是 <code>&lt;Ctrl&gt;-k</code>
* nerdtree 查看目录树
    * 设置了过滤 pyc 文件
* fencview 增强 vim 的编码检测 -> FencAutoDetect:自动识别文件编码 FencView:打开一个编码列表窗口，用户选择编码reload文件
* snipmate 代码补全
* tagbar js 代码大纲视图
* Gist 分享代码到 github 的小工具
* vim-repeat 增强 vim 的 repeat 功能
* web-indent JavaScript 的语法缩进
* Scrath 打开一个临时的缓冲区随便记录东西，快捷键是 <code>&lt;Leader&gt;S</code>
* genutils 给 vim 添加一些函数库
* vim-fugitive 增加一些 git 命令支持
* molokai 配色
* desertEx 配色
* vim-markdown 高亮 markdown 格式
* vim-lesscss 高亮 lesscss 格式
* vim-css3 高亮 css3 中的属性
* sourcebeautify 格式化html/css/javascript/JSON  快捷键 <code>&lt; Leader&gt;sb</code>
