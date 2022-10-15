.class public Lcom/meizu/smart/wristband/models/database/servers/VersionServer;
.super Ljava/lang/Object;
.source "VersionServer.java"


# static fields
.field public static final APP_VERTION:Ljava/lang/String; = "app_vertion"

.field public static final BAND_VERTION:Ljava/lang/String; = "band_vertion"

.field public static final NORDIC_VERTION:Ljava/lang/String; = "nordic_vertion"

.field public static final TEMP_STR:Ljava/lang/String; = "9876"

.field public static final UPGRADE_BAND_EXPLAIN:Ljava/lang/String; = "upgrade_band_explains"

.field public static final UPGRADE_MD5_OR_EXPLAIN:Ljava/lang/String; = "upgrade_md5_or_explains"

.field public static final VERTION_ADDRESS:Ljava/lang/String; = "vertion_address"


# instance fields
.field bandExplains:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field public gainEventDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/GainEvent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field md5_or_explains:Ljava/lang/String;

.field vertionAddress:Ljava/lang/String;


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
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->vertionAddress:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->md5_or_explains:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->bandExplains:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->context:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 33
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getGainEventDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    .line 34
    return-void
.end method


# virtual methods
.method public checkUpgrade(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "latestVer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    move-result-object v0

    .line 64
    .local v0, "ver":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v2, p3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .locals 8
    .param p1, "product"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v2, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;-><init>()V

    .line 42
    .local v2, "param":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    invoke-virtual {v2, p1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setType1(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2, p2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->setType2(Ljava/lang/String;)V

    .line 44
    iget-object v6, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v6, v2}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 45
    .local v5, "versions":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/GainEvent;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 59
    :cond_1
    return-object v1

    .line 47
    :cond_2
    const/4 v1, 0x0

    .line 48
    .local v1, "maxEvent":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    .line 49
    .local v0, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    if-nez v1, :cond_4

    .line 50
    move-object v1, v0

    .line 53
    :cond_4
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, "ver1":I
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 55
    .local v4, "ver2":I
    if-ge v3, v4, :cond_3

    .line 56
    move-object v1, v0

    goto :goto_0
.end method

.method public save(Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V
    .locals 1
    .param p1, "gainEvent"    # Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->gainEventDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 38
    return-void
.end method
