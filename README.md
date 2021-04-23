# nvim

<!-- vim-markdown-toc Redcarpet -->

* [1 安装neo vim](#1-安装neo-vim)
* [2 安装nodejs](#2-安装nodejs)
* [3 下载nvim配置文件](#3-下载nvim配置文件)
* [4 python补全](#4-python补全)

<!-- vim-markdown-toc -->

环境：Linux
安装
## 1 安装neo vim
## 2 安装nodejs
- 下载对应版本 https://nodejs.org/en/download/
- 解压
## 3 下载nvim配置文件
```
git clone https://github.com/can-song/nvim.git
cd nvim
cp init.vim ~/.config/nvim
```
## 4 python补全
- 安装python支持
```shell
pip install neovim

```
- 安装coc组件
coc组件默认存放在~/.config/coc目录下
```shell
# nvim 命令行执行
CocInstall coc-snippets
CocInstall coc-jedi
```
