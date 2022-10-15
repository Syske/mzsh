.class Lcom/meizu/smart/wristband/models/database/servers/SleepServer$1;
.super Ljava/lang/Object;
.source "SleepServer.java"

# interfaces
.implements Lcom/j256/ormlite/dao/RawRowMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/RawRowMapper",
        "<",
        "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/database/servers/SleepServer;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/SleepServer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer$1;->this$0:Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 10
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "strings1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;-><init>()V

    .line 107
    .local v0, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    new-instance v6, Ljava/util/Date;

    const/4 v7, 0x0

    aget-object v7, p2, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setStartTime(Ljava/util/Date;)V

    .line 108
    new-instance v6, Ljava/util/Date;

    const/4 v7, 0x1

    aget-object v7, p2, v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 109
    const/4 v6, 0x2

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    .local v1, "time1":I
    const/4 v6, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    .local v2, "time2":I
    const/4 v6, 0x4

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 112
    .local v3, "time3":I
    const/4 v6, 0x5

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 113
    .local v4, "time4":I
    const/4 v6, 0x6

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 115
    .local v5, "time5":I
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setScore(Ljava/lang/Float;)V

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setTotalDuration(Ljava/lang/Integer;)V

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 119
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 120
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSleepStatByDay sleep start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " end = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method public bridge synthetic mapRow([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer$1;->mapRow([Ljava/lang/String;[Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-result-object v0

    return-object v0
.end method
