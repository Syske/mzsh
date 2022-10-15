.class public Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
.super Ljava/lang/Object;
.source "HeartRateServer.java"


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

.field private heartRateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
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
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->context:Landroid/content/Context;

    .line 40
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 41
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getHeartRateDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;)Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public createStaticRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/lang/Integer;)Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .locals 2
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "date"    # Ljava/util/Date;
    .param p3, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 132
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 133
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 134
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_STATIC:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 136
    invoke-virtual {v0, p3}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 138
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 139
    return-object v0
.end method

.method public getAllHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 152
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 153
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 154
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAlldayHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 54
    .local v2, "start":Ljava/util/Date;
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 56
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "type"

    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 60
    .local v1, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v1
.end method

.method public getAlldayHeartRateToday(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 65
    .local v2, "start":Ljava/util/Date;
    move-object v0, p2

    .line 67
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "type"

    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v1
.end method

.method public getCountHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;I)Ljava/util/List;
    .locals 4
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 77
    invoke-virtual {v1, p2}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(I)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v0
.end method

.method public getFirstHeartTime()Ljava/util/Date;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x1

    .line 110
    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 114
    .local v0, "rate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method public getHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2, p2, p3}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v0
.end method

.method public getRunHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 4
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "time"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "type"

    sget-object v3, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_RUNTIME:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2, p2, p3}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 126
    .local v0, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v0
.end method

.method public getStaticHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 86
    .local v2, "start":Ljava/util/Date;
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 88
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 90
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "type"

    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_STATIC:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v1
.end method

.method public getStaticHeartRateByToday(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 98
    .local v2, "start":Ljava/util/Date;
    move-object v0, p2

    .line 100
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "time"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 102
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "type"

    sget-object v5, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_STATIC:Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 103
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "time"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "hrs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    return-object v1
.end method

.method public getUnSyncHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 144
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 145
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 146
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 147
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public saveHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Z
    .locals 13
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "block"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 234
    if-nez p2, :cond_1

    .line 264
    :cond_0
    return v12

    .line 237
    :cond_1
    iget-object v0, p2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    .line 238
    .local v0, "blockdata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    iget-wide v6, p2, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    .line 239
    .local v6, "time_diff":J
    const/4 v8, 0x6

    invoke-static {v0, v8}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->splitData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 240
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 241
    .local v1, "bsTmp":[I
    const-string v9, "\u7761\u7720\u5fc3\u7387\u6570\u636e0\uff1a"

    invoke-static {v9}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 242
    const/4 v9, 0x0

    invoke-static {v1, v9}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->parser([IZ)Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;

    move-result-object v4

    .line 243
    .local v4, "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    if-eqz v4, :cond_2

    .line 244
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 245
    iget v9, v4, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    if-eqz v9, :cond_2

    .line 247
    iget v9, v4, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_2

    .line 250
    iget-wide v10, v4, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->secondTime:J

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->transformTime(J)Ljava/util/Date;

    move-result-object v5

    .line 252
    .local v5, "time":Ljava/util/Date;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 253
    .local v2, "heartRate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 254
    iget v9, v4, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 255
    sget-object v9, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v2, v9}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 256
    invoke-virtual {v2, p1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 257
    iget-object v9, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v9, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 259
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u5fc3\u7387\u76d1\u6d4b\u6570\u636e1\uff1aheartRate.Time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n heartRate.Value"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 260
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    invoke-static {v9}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;)Z
    .locals 7
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "day"    # Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 214
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->getHeartrates()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 230
    :cond_0
    return v6

    .line 216
    :cond_1
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/HeartDay;->getHeartrates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;

    .line 217
    .local v0, "entity":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    new-instance v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 218
    .local v1, "i":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    sget-object v4, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGt()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 219
    sget-object v4, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_ALLDAY:Ljava/lang/Integer;

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Heart Reate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 222
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 226
    :cond_3
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 227
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 228
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0
.end method

.method public saveSportHeartRate(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    const/4 v10, 0x1

    .line 168
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 208
    :goto_0
    return v10

    .line 192
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 194
    .local v4, "startTime":J
    iget-object v6, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v6

    new-instance v7, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer$1;

    invoke-direct {v7, p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer$1;-><init>(Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;Ljava/util/List;)V

    invoke-static {v6, v7}, Lcom/j256/ormlite/misc/TransactionManager;->callInTransaction(Lcom/j256/ormlite/support/ConnectionSource;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    .local v0, "endTime":J
    sub-long v2, v0, v4

    .line 207
    .local v2, "result":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveSportHeartRate size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u8017\u65f6\u3010"

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

    goto :goto_0
.end method

.method public saveSyncHeartRate(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    const/4 v3, 0x1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 159
    .local v0, "rate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 160
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_0

    .line 163
    .end local v0    # "rate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_0
    return v3
.end method
