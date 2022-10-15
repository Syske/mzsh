.class public Lcom/meizu/smart/wristband/servers/DBSleepApi;
.super Ljava/lang/Object;
.source "DBSleepApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllSleep(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getAllSleepByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 123
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMainSleep(Landroid/content/Context;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v6, 0x0

    .line 69
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 70
    .local v3, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getAllSleepByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, v6

    .line 101
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :goto_0
    return-object v5

    .line 74
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :cond_1
    new-instance v5, Lcom/meizu/smart/wristband/servers/DBSleepApi$1;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/servers/DBSleepApi$1;-><init>()V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 85
    .local v4, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x4b0

    if-ge v7, v8, :cond_2

    .line 86
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMainSleep sleep startTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "end Time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 97
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v4    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    move-object v5, v6

    .line 101
    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/sql/SQLException;
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v2    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .restart local v4    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTodayDuration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",remove"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_2

    .line 93
    .end local v4    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    move-object v5, v6

    .line 94
    goto/16 :goto_0

    .line 95
    :cond_5
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static getSleepByID(Landroid/content/Context;I)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 106
    :try_start_0
    new-instance v1, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 107
    .local v1, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepByID(I)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    .end local v1    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :goto_0
    return-object v2

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 112
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStatSleepByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const/4 v4, 0x0

    .line 182
    .local v4, "sleepStatByDay":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-nez p1, :cond_0

    .line 183
    :try_start_0
    new-instance v5, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "start":Ljava/util/Date;
    .local v5, "start":Ljava/util/Date;
    move-object p1, v5

    .line 185
    .end local v5    # "start":Ljava/util/Date;
    .restart local p1    # "start":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 186
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .end local p2    # "end":Ljava/util/Date;
    .local v1, "end":Ljava/util/Date;
    move-object p2, v1

    .line 188
    .end local v1    # "end":Ljava/util/Date;
    .restart local p2    # "end":Ljava/util/Date;
    :cond_1
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 189
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 190
    .local v6, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v7

    invoke-virtual {v2, v7, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 193
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v3    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_2
    :goto_0
    return-object v4

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStatSleepByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v4, 0x0

    .line 156
    .local v4, "sleepStatByDay":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-nez p1, :cond_0

    .line 157
    :try_start_0
    new-instance v5, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "start":Ljava/util/Date;
    .local v5, "start":Ljava/util/Date;
    move-object p1, v5

    .line 159
    .end local v5    # "start":Ljava/util/Date;
    .restart local p1    # "start":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 160
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .end local p2    # "end":Ljava/util/Date;
    .local v1, "end":Ljava/util/Date;
    move-object p2, v1

    .line 162
    .end local v1    # "end":Ljava/util/Date;
    .restart local p2    # "end":Ljava/util/Date;
    :cond_1
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 163
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 164
    .local v6, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v7

    invoke-virtual {v2, v7, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByMonth(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameMonth(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v3    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_2
    :goto_0
    return-object v4

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStatSleepByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v4, 0x0

    .line 129
    .local v4, "sleepStatByDay":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-nez p1, :cond_0

    .line 130
    :try_start_0
    new-instance v5, Ljava/util/Date;

    const-wide/16 v8, 0x0

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    .end local p1    # "start":Ljava/util/Date;
    .local v5, "start":Ljava/util/Date;
    move-object p1, v5

    .line 132
    .end local v5    # "start":Ljava/util/Date;
    .restart local p1    # "start":Ljava/util/Date;
    :cond_0
    if-nez p2, :cond_1

    .line 133
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .end local p2    # "end":Ljava/util/Date;
    .local v1, "end":Ljava/util/Date;
    move-object p2, v1

    .line 135
    .end local v1    # "end":Ljava/util/Date;
    .restart local p2    # "end":Ljava/util/Date;
    :cond_1
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;-><init>(Landroid/content/Context;)V

    .line 137
    .local v6, "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;->getLoginUser()Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v7

    invoke-virtual {v2, v7, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByWeek(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 139
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_2

    .line 140
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->isSameWeek(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v2    # "server":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v3    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v6    # "userInfoServer":Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;
    :cond_2
    :goto_0
    return-object v4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method
