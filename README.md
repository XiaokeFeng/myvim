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
