# myvim

pull form [exvim](http://exvim.github.io/)

Change log:

1. fix bug for vimfile/tools/shell/bash/update-filelist.sh
    * find -regex, should use: \\(, \\), \\|, and never ""
    * to file & folder
1. fix bug for vimfile/tools/shell/bash/update-idutils.sh
    * mkid, can't use --file0-from
1. fix bug for vimfile/tools/shell/bash/update-cscope.sh
    * cscope, can't use -k
1. add smart for cscope:
    * search: Ctrl + \ + s, g, c, d, ...
    * change pages: Ctrl + \ + n, p
1. change vim-markdown

## how to use

```shell
$ cp -r vimfile ~/.vim && cp vimrc ~/.vimrc && cp vimrc.plugins .vimrc.plugins
$ cd ${your_code_dir} && vim xxxx.exvim
```
打开xxx.exvim后，跳到左边的工程目录，用`\R`刷新一下即可看见目录树
随后可以执行Vim命令来使用ctags等功能`:Update`
注意：ctags、cscope、mkid等功能需要自己确认已经安装成功
