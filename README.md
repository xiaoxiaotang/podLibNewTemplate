pod-template
============
## important notice 重要提示

基于官方模板https://github.com/CocoaPods/pod-template.git 改造，删除了选择mac os平台和oc的选项，以及测试框架的选项，会默认创建一个swift语言的iOS的submodule子模块库，带demo工程，无测试框架。

## 创建submodule子模块

gitlab创建子模块仓库

```bash
cd 任意目录

pod lib create TemplateModule --template-url=https://github.com/xiaoxiaotang/podSubmoduleTemplate.git

cd TemplateModule

git remote add origin 子模块仓库git地址

git add .

git commit -m "Initial commit"

git push -u origin master

cd 壳工程

git submodule add  [submodule url] submodules/[submodule dir name]
例如：git submodule add git@134.175.230.26:iOS_XZ/XZLoginSignModule.git submodules/module-login

修改壳工程podfile添加
pod '子模块podspec文件名',:path => 'submodules/[submodule dir name]'
pod 'HomeSubModule',:path => 'submodules/module-home'
pod update

子模块创建分支
git -C submodules/子模块本地文件夹 checkout -b 分支名
git -C submodules/子模块本地文件夹 push origin 分支名
修改ProConfig.json添加子模块
{
    "module":"submodules/子模块本地文件夹",
    "branch":"分支名"
}
```
