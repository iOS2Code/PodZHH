# PodZHH
练习制作CocoaPods库:

#### 目录

- 具体步骤
- 私有库的制作

## 具体步骤

##### 第一步,准备仓库与必要的文件

- 弄一个仓库,比如[PodZHH](https://github.com/GitHubZHH/PodZHH.git)
- 创建一个文件夹PodZHH存放有效代码(仅有Public.h与Public.m)     
- 在终端执行pod spec create PodZHH,会生成PodZHH.podspec, 然后编辑这个文档,强烈建议用vim编辑.如何编辑,请[百度一下](https://www.baidu.com),或者参考[PodZHH](https://github.com/GitHubZHH/PodZHH.git)
- 在一切正确的情况下,提交到远程仓库.

#####  第二步,开始生产库的过程
在这一步,我遇到的坑.CocoaPods的版本是1.1.1.导致一直不能成功,总是提示如下错误:
![AbortTrap](http://upload-images.jianshu.io/upload_images/1198135-5f4b2a802de0baef.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

升级到1.2.0之后就没有问题了.


**以下操作均在终端执行**

- pod lib lint --allow-warnings. 用于验证PodZHH.podspec的正确性
- pod trunk register 771722918@qq.com PodZHH.podspec . 用于注册PodZHH.podspec.注册成功会给发邮件,点击链接即可.
- pod trunk me, 用于查看记录
- pod trunk push PodZHH.podspec , 用于推送到公开的cocoaPods.
提示如下信息,说明可以使用:
```
--------------------------------------------------------------------------------
 🎉  Congrats

 🚀  PodZHH (1.0.0) successfully published
 📅  February 16th, 03:34
 🌎  https://cocoapods.org/pods/PodZHH
 👍  Tell your friends!
--------------------------------------------------------------------------------
```
但是有一个问题,我执行pod search PodZHH,竟然没有找到.但是能正常的在项目中应用.


## 私有库的制作

上面的方式是属于公有方式,任何开发者都能访问.那么如何制作一个私有的cocoaPod库呢?一般是用于公司内部用的库.其实也很简单,具体步骤如下:

- 创建一个**私有**(private)仓库
- 创建一个文件夹 PodZHHPrivate 存放有效代码    
- 在终端执行pod spec create PodZHHPrivate,会生成PodZHHPrivate.podspec, 然后编辑这个文档.
- 在一切正确的情况下,提交到远程仓库.
- 使用 pod lib lint 命令验证是否通过.

这样就 OK 了.是不需要 pod trunk 操作的.

在使用上有什么区别呢?请看下图:

![公有与私有在Podfile文件中的使用方法](http://upload-images.jianshu.io/upload_images/1198135-3bca9b50d26f65e2.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

在Podfile中用到私有库的话,是需要私有库的账号与密码才能安装成功的.

# 谢谢~
