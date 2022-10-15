.class public Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;
.super Ljava/lang/Object;
.source "BtDevServer.java"


# instance fields
.field public btDevDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->context:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 27
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getBtDevDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    .line 28
    return-void
.end method


# virtual methods
.method public createOrUpdateDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 2
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "lstDev":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 35
    :cond_1
    return-void
.end method

.method public getAllDevice(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 3
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object p1

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    const/4 v1, 0x0

    .line 54
    :goto_0
    return-object v1

    .line 52
    :cond_1
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 53
    .local v0, "param":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 54
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getBtDev(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .locals 5
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "production"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object p1

    .line 60
    :cond_0
    if-nez p1, :cond_2

    .line 70
    :cond_1
    :goto_0
    return-object v2

    .line 63
    :cond_2
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;-><init>()V

    .line 64
    .local v1, "param":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 65
    invoke-virtual {v1, p2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->setProductorname(Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "btDevList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BtDev;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 68
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    goto :goto_0
.end method

.method public removeDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 4
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 39
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/BtDevServer;->btDevDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 40
    .local v0, "deleteBuilder":Lcom/j256/ormlite/stmt/DeleteBuilder;, "Lcom/j256/ormlite/stmt/DeleteBuilder<Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 41
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 43
    const-string v1, "removeDevice all device"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 44
    return-void
.end method
