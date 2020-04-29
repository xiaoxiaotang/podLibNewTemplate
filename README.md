pod-template
============

创建submodule子模块

gitlab创建子模块仓库

cd 任意目录

pod lib create TemplateModule --template-url=https://github.com/xiaoxiaotang/podSubmoduleTemplate.git

cd TemplateModule

git remote add origin 子模块仓库git地址

git add .

git commit -m "Initial commit"

git push -u origin master

目录效果：

![image](https://github.com/xiaoxiaotang/podSubmoduleTemplate/blob/master/template.png)

以上文件都是根据TemplateModule名字自动生成

cd 壳工程

git submodule add  子模块仓库git地址 submodules/子模块本地文件夹

git submodule add git@134.175.230.26:iOS_XZ/XZLoginSignModule.git submodules/module-login

修改壳工程podfile添加

pod '子模块名字',:path => 'submodules/子模块本地文件夹'

pod update

子模块创建分支

git -C submodules/子模块本地文件夹 checkout -b 分支名

git -C submodules/子模块本地文件夹 push origin 分支名

修改ProConfig.json添加子模块

{

        "module":"submodules/子模块本地文件夹",
        
        "branch":"分支名"
        
}

