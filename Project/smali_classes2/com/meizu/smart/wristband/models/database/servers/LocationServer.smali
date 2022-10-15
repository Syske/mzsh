.class public Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
.super Ljava/lang/Object;
.source "LocationServer.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field private locationsDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
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
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getLocationsDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/models/database/servers/LocationServer;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public getLocations(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 2
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->locationsDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveLocations(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 77
    .local v4, "startTime":J
    iget-object v6, p0, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v6

    new-instance v7, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;

    invoke-direct {v7, p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer$1;-><init>(Lcom/meizu/smart/wristband/models/database/servers/LocationServer;Ljava/util/List;)V

    invoke-static {v6, v7}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 88
    .local v0, "endTime":J
    sub-long v2, v0, v4

    .line 89
    .local v2, "result":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveLocations size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u8017\u65f6\u3010"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long v8, v2, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u3011\u79d2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 91
    return-void
.end method
