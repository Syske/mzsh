.class public Lcom/meizu/smart/wristband/models/database/servers/OtherServer;
.super Ljava/lang/Object;
.source "OtherServer.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field public otherDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Other;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->context:Landroid/content/Context;

    .line 25
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 26
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getOtherDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    .line 27
    return-void
.end method


# virtual methods
.method public createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/Other;
    .locals 1
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "type"    # Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;Z)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v0

    return-object v0
.end method

.method public createOrUpdate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;Z)Lcom/meizu/smart/wristband/models/database/entity/Other;
    .locals 3
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "type"    # Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "sync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object p1

    .line 36
    :cond_0
    if-nez p1, :cond_1

    .line 37
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    .line 39
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;

    move-result-object v0

    .line 40
    .local v0, "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    if-nez v0, :cond_2

    .line 41
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Other;

    .end local v0    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 42
    .restart local v0    # "other":Lcom/meizu/smart/wristband/models/database/entity/Other;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 43
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 45
    :cond_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setSync(Ljava/lang/Boolean;)V

    .line 46
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setValue(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method

.method public delete(Lcom/meizu/smart/wristband/models/database/entity/Other;)I
    .locals 1
    .param p1, "other"    # Lcom/meizu/smart/wristband/models/database/entity/Other;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getOther(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)Lcom/meizu/smart/wristband/models/database/entity/Other;
    .locals 5
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "type"    # Lcom/meizu/smart/wristband/models/database/entity/Other$Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object p1

    .line 63
    :cond_0
    if-nez p1, :cond_2

    .line 73
    :cond_1
    :goto_0
    return-object v2

    .line 66
    :cond_2
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/Other;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/Other;-><init>()V

    .line 67
    .local v1, "param":Lcom/meizu/smart/wristband/models/database/entity/Other;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 68
    invoke-virtual {v1, p2}, Lcom/meizu/smart/wristband/models/database/entity/Other;->setType(Lcom/meizu/smart/wristband/models/database/entity/Other$Type;)V

    .line 69
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "otherList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Other;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 71
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/Other;

    goto :goto_0
.end method

.method public update(Lcom/meizu/smart/wristband/models/database/entity/Other;)I
    .locals 1
    .param p1, "other"    # Lcom/meizu/smart/wristband/models/database/entity/Other;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/OtherServer;->otherDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
