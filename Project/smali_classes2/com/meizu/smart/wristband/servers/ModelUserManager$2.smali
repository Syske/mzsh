.class final Lcom/meizu/smart/wristband/servers/ModelUserManager$2;
.super Ljava/lang/Object;
.source "ModelUserManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelUserManager;->loginForData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/models/newwork/response/Logindata;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$param:Lcom/meizu/smart/wristband/models/newwork/request/Login;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Login;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$param:Lcom/meizu/smart/wristband/models/newwork/request/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/meizu/smart/wristband/models/newwork/response/Logindata;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->call(Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Lrx/Observable;
    .locals 7
    .param p1, "logindata"    # Lcom/meizu/smart/wristband/models/newwork/response/Logindata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/newwork/response/Logindata;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 55
    const/4 v2, 0x0

    .line 58
    .local v2, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    .line 59
    .local v1, "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$param:Lcom/meizu/smart/wristband/models/newwork/request/Login;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->getUsername()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .local v3, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :try_start_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$context:Landroid/content/Context;

    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$2;->val$param:Lcom/meizu/smart/wristband/models/newwork/request/Login;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/request/Login;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->saveUserInfo(Landroid/content/Context;Ljava/lang/String;Lcom/meizu/smart/wristband/models/newwork/response/Logindata;)Z

    .line 63
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->setIsFirstLogin(Z)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    move-object v2, v3

    .end local v1    # "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :goto_0
    return-object v4

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/sql/SQLException;
    :goto_1
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 66
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljava/sql/SQLException;
    .end local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v1    # "loginInfoServer":Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
    .restart local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    .restart local v2    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    goto :goto_1
.end method
