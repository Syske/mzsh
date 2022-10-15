.class public Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;
.super Ljava/lang/Object;
.source "LoginInfoServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer$LoginInfo;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


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

.method public isAutoLogin()Z
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isAuto"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isFirstLogin()Z
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isFirst"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveLoginInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 23
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "account"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pwd"

    .line 24
    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public setIsAutoLogin(Z)V
    .locals 3
    .param p1, "isAuto"    # Z

    .prologue
    .line 32
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 33
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isAuto"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method

.method public setIsFirstLogin(Z)V
    .locals 3
    .param p1, "isAuto"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isFirst"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    return-void
.end method
