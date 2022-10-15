.class public Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;
.super Ljava/lang/Object;
.source "ShareContentCustomizeDemo.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(Lcn/sharesdk/framework/Platform;Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 3
    .param p1, "platform"    # Lcn/sharesdk/framework/Platform;
    .param p2, "paramsToShare"    # Lcn/sharesdk/framework/Platform$ShareParams;

    .prologue
    const/4 v2, 0x0

    .line 31
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :cond_0
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitle(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setComment(Ljava/lang/String;)V

    .line 43
    :cond_1
    :goto_0
    return-void

    .line 36
    :cond_2
    sget-object v0, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    sget-object v0, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setTitle(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setText(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p2, v2}, Lcn/sharesdk/framework/Platform$ShareParams;->setComment(Ljava/lang/String;)V

    goto :goto_0
.end method
