.class Lcom/meizu/smart/wristband/servers/ModelUserManager$1$1;
.super Ljava/lang/Object;
.source "ModelUserManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelUserManager$1;->call(Ljava/lang/Boolean;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelUserManager$1;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelUserManager$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelUserManager$1;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$1$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelUserManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 77
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$1$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelUserManager$1;

    iget-object v4, v4, Lcom/meizu/smart/wristband/servers/ModelUserManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 78
    .local v3, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    .line 79
    .local v2, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\u5934\u50cf\u4fe1\u606f!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortraitUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortraitUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/ImageHandle;->loadImageFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "photo":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->setPortrait(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v3, v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->storeImage(Lcom/meizu/smart/wristband/models/database/entity/User;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "photo":Ljava/lang/String;
    .end local v2    # "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_0
    :goto_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelUserManager$1$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
