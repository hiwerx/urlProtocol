

```
git config --global user.name "名字"
git config --global user.email "邮箱"
```

​                     

执行后会在windows生成C:\Users\lenovo\.gitconfig文件
注：--global 表示全局属性，所有的git项目都会共用属性。
设置本地机器默认commit的昵称与Email. 请使用有意义的名字与email.

来查看是否设置过

```
git config --global --list
```



id_rsa.github自定义 
ssh-keygen -t rsa -f ~/.ssh/id_rsa.github -C "邮箱一"
配置多个，则用不同名字
ssh-keygen -t rsa -f ~/.ssh/id_rsa.gitee -C "邮箱二"

完成后会在~/.ssh / 目录下生成以下文件。
id_rsa.github
id_rsa.github.pub
id_rsa.gitee
id_rsa.gitee.pub

4 多账号配置 ~/.ssh/config  文件

5 添加 ssh
分别添加SSH到Gitee和Github：

Github：
https://github.com/settings/keys
将 id_rsa.github.pub 中的内容填进去，起名的话随意。

Gitee:
https://gitee.com/profile/sshkeys
将 id_rsa.gitee.pub 中的内容填进去，起名的话随意。

6 测试成功
ssh -T git@gitee.com
ssh -T git@github.com

参考：https://blog.csdn.net/Haa__/article/details/119353185

# 从本地上传文件到github
远程创建分支

本地文件git初始话，并指定本地分支名称，与远程默认分支保持一致
git init -b master
在命令窗口中输入：git remote add origin 你的仓库地址
在命令窗口中输入：git pull origin master
在命令窗口中输入：git add .
在命令窗口中输入：git commit -m “提交项目”
在命令窗口中输入：git push -u origin master // 输入-u 后面再push再输后面一串

参考：https://blog.csdn.net/m0_59449563/article/details/127392441
https://blog.csdn.net/qq_48592827/article/details/121221161





