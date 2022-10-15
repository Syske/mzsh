.class public Lcom/meizu/smart/wristband/servers/DBHeartRateApi;
.super Ljava/lang/Object;
.source "DBHeartRateApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlldayHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 137
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getAlldayHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAlldayHeartRateByToday(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 153
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getAlldayHeartRateToday(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 157
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 157
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAvgHeartEntityRate(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "lstAll":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 67
    :cond_0
    const/4 v2, 0x0

    .line 74
    :goto_0
    return v2

    .line 69
    :cond_1
    const/4 v1, 0x0

    .line 70
    .local v1, "sum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;

    .line 71
    .local v0, "one":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGv()I

    move-result v3

    add-int/2addr v1, v3

    .line 72
    goto :goto_1

    .line 74
    .end local v0    # "one":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v1, v2

    goto :goto_0
.end method

.method public static getAvgHeartRate(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "lstAll":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 55
    :cond_0
    const/4 v2, 0x0

    .line 62
    :goto_0
    return v2

    .line 57
    :cond_1
    const/4 v1, 0x0

    .line 58
    .local v1, "sum":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 59
    .local v0, "one":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    .line 60
    goto :goto_1

    .line 62
    .end local v0    # "one":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v1, v2

    goto :goto_0
.end method

.method public static getCountHeartRate(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 34
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getCountHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 38
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 38
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFirstHeartTime(Landroid/content/Context;)Ljava/util/Date;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getFirstHeartTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 49
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHeartRate(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # Ljava/util/Date;
    .param p2, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 23
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 28
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 103
    .local v3, "start":Ljava/util/Date;
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 106
    .local v1, "end":Ljava/util/Date;
    :try_start_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v4

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 111
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getMaxHeartRate(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "lstAll":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 79
    :cond_0
    const/4 v0, 0x0

    .line 86
    :cond_1
    return v0

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    .local v0, "max":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 83
    .local v1, "one":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 84
    :cond_3
    goto :goto_0
.end method

.method public static getMinHeartRate(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "lstAll":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 98
    :cond_1
    return v0

    .line 93
    :cond_2
    const/16 v0, 0xfa

    .line 94
    .local v0, "min":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 95
    .local v1, "one":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v0, v3, :cond_3

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 96
    :cond_3
    goto :goto_0
.end method

.method public static getStaticHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getStaticHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStaticHeartRateToday(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 127
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getStaticHeartRateByToday(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 131
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    return-object v2

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 131
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static saveStaticHeartRate(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 163
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 164
    .local v1, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2, v3, p1}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->createStaticRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/lang/Integer;)Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    :goto_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
