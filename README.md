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

效果：

![image](https://github.com/xiaoxiaotang/podSubmoduleTemplate/blob/master/template.png)

以上文件都是根据TemplateModule名字自动生成

## Requirements:

- CocoaPods 1.0.0+
