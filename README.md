pod-template
============

创建submodule子模块

cd 任意目录

pod lib create TemplateModule --template-url=https://github.com/xiaoxiaotang/podLibNewTemplate.git

cd TemplateModule

git remote add origin 子模块仓库git地址

git add .

git commit -m "Initial commit"

git push -u origin master


## Requirements:

- CocoaPods 1.0.0+
