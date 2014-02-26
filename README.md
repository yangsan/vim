这是我的vim配置。

使用方法

1. 创建`/home/.vim`路径
2. 在`/home`路径下`clone`一个当前的repo
3. 将得到的`/home/vim`改为`/home/.vim`
4. 给`.vimrc`文件创建一个连接

    ln -s ~/.vim/.vimrc .vimrc

5. 打开一个`vim`的窗口，在命令行输入

    :BundleInstall

以获取最新的插件。
