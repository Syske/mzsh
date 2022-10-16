# mzsh
魅族手环免登录版本

### 项目背景
待补充

### 项目描述
本项目是基于魅族手环`H1`安卓`APP`的一个逆向工程，通过逆向修改，解决了官方停服之后，无法登陆的问题（进行了免登处理），确保打开`APP`直接进入应用首页。
当然，本项目也是我的第一个安卓逆向工程，后续看个人兴趣，会继续探索学习。


### 环境及工具
本次用到了`AndroidKiller`，版本`v1.3.1`，这是一个逆向集成工具，可以直接将`apk`文件的核心源码反编译为`smail`工程文件，然后我们通过修改`smail`文件，达到自己`APP`魔改的需求。
该工具同时集成了编译、打包、`ABD`调试等功能，用起来很顺手，后续我会专门出一期使用教程。

相关内容已经梳理到个人知识库：(androidkiller工具使用指南)[https://github.com/Syske/person-learning-note/blob/master/%E5%AE%89%E5%8D%93/androidkiller%E5%B7%A5%E5%85%B7%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97.md]

### smail基本语法
因为我们这里直接修改的是`smail`文件，所以学习一些基本语法也是必须的。作为一个`java`后端开发，我的安卓开发经验基本为零，所以在`smail`源码的过程中，踩了很多坑，当然也成长很多，后面我会把本次踩坑的知识点梳理下分享出来。

相关内容已经梳理到个人知识库：(smail基本语法示例)[https://github.com/Syske/person-learning-note/blob/master/%E5%AE%89%E5%8D%93/smail%E5%9F%BA%E6%9C%AC%E8%AF%AD%E6%B3%95%E7%A4%BA%E4%BE%8B.md]


### 修改内容
这块主要是说明`APP`的修改能容，算是给各位喜欢琢磨的小伙伴提供一个破解思路，当然仅供参考。
这里先贴几张图，大概说下修改的内容：
#### StartActivity
这里主要是保存用户信息，同时跳转到`RegistInfoActivity`，确保用户信息落库。
![](https://syske-pic-bed.oss-cn-hangzhou.aliyuncs.com/imgs/20221016221309.png)
对应的`smail`源码如下：
```java
const-string v2, "syske"
new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v2, v2}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V

new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;-><init>()V
invoke-virtual {v1, p0, v2, v0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Z

.line 168
new-instance v0, Landroid/content/Intent;

const-class v2, Lcom/meizu/smart/wristband/meizuUI/login_regist/RegistInfoActivity;

invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
```
完整源码可以直接去库里看。

这里原本是参照某乎大佬修改的，但是发下改了之后没啥用，还是会报错，所以我想着能不能直接改查询接口，于是我直接找到`models/database/servers`包下的`LoginInfoServer`和`UserInfoServer`，并修改对应方法。

#### LoginInfoServer

`LoginInfoServer`我改的是`getLoginInfo`的实现，直接实例化一个新的`LoginInfo`对象返回。

![](https://syske-pic-bed.oss-cn-hangzhou.aliyuncs.com/imgs/20221016222052.png)

对应`smail`源码如下：

```java
# virtual methods
.method public getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 49
    .local v2, "preferences":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    .line 50
    .local v1, "entity":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    const-string v3, "account"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "account":Ljava/lang/String;
    invoke-static {v0}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    .line 52
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    .end local v1    # "entity":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;-><init>()V

    .line 53
    .restart local v1    # "entity":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->setAccount(Ljava/lang/String;)V

    .line 54
    const-string v3, "pwd"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->setPwd(Ljava/lang/String;)V

    .line 57
    
    const-string v4, "syske"    
    
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    .restart local v1    # "entity":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;-><init>()V
    
    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->setAccount(Ljava/lang/String;)V
    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;->setPwd(Ljava/lang/String;)V
     
    return-object v1
.end method
```

#### UserInfoServer

`UserInfoServer`也是类似的方法，主要是解决空指针异常：
![](https://syske-pic-bed.oss-cn-hangzhou.aliyuncs.com/imgs/20221016222532.png)

对应`smail`源码：

```java
# virtual methods
.method public getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->getLoginInfo()Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;

    .line 54
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-direct {v1},  Lcom/meizu/smart/wristband/models/database/entity/User;-><init>()V

    .line 55
    const-string v5, "syske"
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setId(Ljava/lang/String;)V
    
    .line 56
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setSync(Ljava/lang/Boolean;)V
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setIsEmpty(Ljava/lang/Boolean;)V
    
    const-string v5, "180"
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setWeight(Ljava/lang/String;)V
    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->setHeight(Ljava/lang/String;)V 
    
    return-object v1
.end method
```

#### 小结

至此，免登`app`的改造基本上完成了，是不是很简单，但是就是这几行简简单单的代码，我愣是研究了好几天，然后一点点踩坑，一点点进步，一点点成长，才完成，但是整个过程还是成就感满满的，特别是第一次进入首页的那一刻，感觉一切都是值得的，奥里给


### 发版说明
这里我直接提供了安卓`APP`，不想深究的小伙伴可以直接下载安装，有问题欢迎提`isuse`
这里是`apk`文件下载直通车：[下载apk文件](https://github.com/Syske/mzsh/releases/download/v1.0.0/mzsh-1.0.35.170107.apk)


### 赞助
在此之前其实已经有大佬在某鱼上提供了相关`APP`，但是我一直觉得自己动手丰衣足食，所以就有了这个工程，如果你觉得确实帮到你了，欢迎投喂，当然，也欢迎白嫖😀


#### 支付宝

<img src="https://syske-pic-bed.oss-cn-hangzhou.aliyuncs.com/imgs/1665852936485.jpg" width = "50%">

#### 微信

<img src="https://syske-pic-bed.oss-cn-hangzhou.aliyuncs.com/imgs/mm_facetoface_collect_qrcode_1665852715345.png" width = "50%">