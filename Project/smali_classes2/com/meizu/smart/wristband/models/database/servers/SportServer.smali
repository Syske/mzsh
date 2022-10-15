.class public Lcom/meizu/smart/wristband/models/database/servers/SportServer;
.super Ljava/lang/Object;
.source "SportServer.java"


# static fields
.field private static final sport_type_run:Ljava/lang/Integer;

.field private static final sport_type_static:Ljava/lang/Integer;

.field private static final sport_type_walk:Ljava/lang/Integer;


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

.field private locationDao:Lcom/j256/ormlite/dao/Dao;
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

.field private rSportDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sportDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_static:Ljava/lang/Integer;

    .line 57
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_walk:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_run:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->context:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 63
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getSportDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getRSportDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getLocationsDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->locationDao:Lcom/j256/ormlite/dao/Dao;

    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getHeartRateDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    .line 67
    return-void
.end method


# virtual methods
.method public createSport(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;IIZ)Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .locals 8
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "startTime"    # Ljava/util/Date;
    .param p3, "endTime"    # Ljava/util/Date;
    .param p4, "step"    # I
    .param p5, "typecode"    # I
    .param p6, "isSynced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 376
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 377
    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 378
    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createSport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " step ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0x7da

    if-ge v4, v5, :cond_0

    .line 383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " form "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 384
    const/4 v2, 0x0

    .line 434
    :goto_0
    return-object v2

    .line 388
    :cond_0
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " form "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error ! start = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 390
    const/4 v2, 0x0

    goto :goto_0

    .line 393
    :cond_1
    new-instance v2, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;-><init>()V

    .line 394
    .local v2, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v2, p2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setStartTime(Ljava/util/Date;)V

    .line 395
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setTypeCode(Ljava/lang/Integer;)V

    .line 396
    invoke-virtual {v2, p1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 397
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 399
    .local v3, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 400
    invoke-virtual {v2, p1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 401
    invoke-virtual {v2, p3}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setEndTime(Ljava/util/Date;)V

    .line 403
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setStepCount(Ljava/lang/Integer;)V

    .line 404
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_run:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setRunStepCount(Ljava/lang/Integer;)V

    .line 405
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_walk:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_3

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setWalkStepCount(Ljava/lang/Integer;)V

    .line 406
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicsCount(Ljava/lang/Integer;)V

    .line 408
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 409
    .local v0, "alltime":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setTime(Ljava/lang/Integer;)V

    .line 410
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_run:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_5

    move v4, v0

    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setRuntime(Ljava/lang/Integer;)V

    .line 411
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_walk:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_6

    move v4, v0

    :goto_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setWalktime(Ljava/lang/Integer;)V

    .line 412
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_7

    move v4, v0

    :goto_6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicstime(Ljava/lang/Integer;)V

    .line 432
    :goto_7
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setSync(Ljava/lang/Boolean;)V

    .line 433
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_0

    .line 404
    .end local v0    # "alltime":I
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 405
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 406
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 410
    .restart local v0    # "alltime":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 411
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    .line 412
    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    .line 414
    .end local v0    # "alltime":I
    :cond_8
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 415
    .restart local v2    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v2, p3}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setEndTime(Ljava/util/Date;)V

    .line 416
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setTypeCode(Ljava/lang/Integer;)V

    .line 420
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setStepCount(Ljava/lang/Integer;)V

    .line 421
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_run:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_9

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setRunStepCount(Ljava/lang/Integer;)V

    .line 422
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_walk:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_a

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_9
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setWalkStepCount(Ljava/lang/Integer;)V

    .line 423
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_b

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicsCount(Ljava/lang/Integer;)V

    .line 425
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 426
    .restart local v0    # "alltime":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setTime(Ljava/lang/Integer;)V

    .line 427
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_run:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_c

    move v4, v0

    :goto_b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setRuntime(Ljava/lang/Integer;)V

    .line 428
    sget-object v4, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sport_type_walk:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne p5, v4, :cond_d

    move v4, v0

    :goto_c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setWalktime(Ljava/lang/Integer;)V

    .line 429
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x5dc

    if-le v4, v5, :cond_e

    move v4, v0

    :goto_d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicstime(Ljava/lang/Integer;)V

    goto/16 :goto_7

    .line 421
    .end local v0    # "alltime":I
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 422
    :cond_a
    const/4 v4, 0x0

    goto :goto_9

    .line 423
    :cond_b
    const/4 v4, 0x0

    goto :goto_a

    .line 427
    .restart local v0    # "alltime":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_b

    .line 428
    :cond_d
    const/4 v4, 0x0

    goto :goto_c

    .line 429
    :cond_e
    const/4 v4, 0x0

    goto :goto_d
.end method

.method public deleteSport(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)V
    .locals 3
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;-><init>()V

    .line 366
    .local v0, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setStartTime(Ljava/util/Date;)V

    .line 367
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 368
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/util/Collection;)I

    .line 371
    return-void
.end method

.method public getAllSportReal(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 4
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "endTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    .line 270
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "rSports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    return-object v0
.end method

.method public getAllStepOfDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)I
    .locals 8
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 101
    .local v3, "start":Ljava/util/Date;
    move-object v1, p2

    .line 103
    .local v1, "end":Ljava/util/Date;
    iget-object v5, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const-string v6, "startTime"

    invoke-virtual {v5, v6, v3, v1}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    invoke-virtual {v5}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "allSport":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    const/4 v4, 0x0

    .line 107
    .local v4, "sum":I
    if-eqz v0, :cond_0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 109
    .local v2, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    .line 110
    goto :goto_0

    .line 113
    .end local v2    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllStepOfDay sum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 115
    return v4
.end method

.method public getGoogleFitSport(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;-><init>()V

    .line 217
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setGooglefitSync(Ljava/lang/Boolean;)V

    .line 218
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 219
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getPace(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 543
    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    .line 544
    .local v0, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->getValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public getSportByTime(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time1"    # Ljava/util/Date;
    .param p3, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 278
    .local v2, "start":Ljava/util/Date;
    move-object v1, p3

    .line 280
    .local v1, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "startTime"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    .line 281
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "startTime"

    invoke-virtual {v3, v4, v2, v1}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 284
    .local v0, "daySport":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    return-object v0
.end method

.method public getSportReal(I)Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 255
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 256
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    return-object v0
.end method

.method public getSportReal(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
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
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string v2, "endTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->limit(Ljava/lang/Long;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "user_id"

    .line 261
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string v2, "endTime"

    invoke-virtual {v1, v2, p2, p3}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 265
    .local v0, "rSports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    return-object v0
.end method

.method public getSportStatListByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 11
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time1"    # Ljava/util/Date;
    .param p3, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 179
    move-object v3, p2

    .line 180
    .local v3, "start":Ljava/util/Date;
    move-object v0, p3

    .line 181
    .local v0, "end":Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v6, v5

    .line 182
    .local v6, "timediff":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "strRawOffset":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "select min(startTime), max(endTime), sum(stepCount), sum(runStepCount), sum(walkStepCount), sum(aerobicsCount), sum(time) , sum(runtime), sum(walktime), sum(aerobicstime)  from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/meizu/smart/wristband/models/database/entity/Sport;->TABLE:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " where "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "user_id"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "=\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 187
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "startTime"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " between "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 188
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " and "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " group by ( startTime "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") / "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v8, 0x5265c00

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " order by startTime"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "sql":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    .line 192
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/meizu/smart/wristband/models/database/servers/SportServer$2;

    invoke-direct {v9, p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer$2;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Lcom/meizu/smart/wristband/models/database/entity/User;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    .line 191
    invoke-interface {v5, v8, v9, v10}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v1

    .line 205
    .local v1, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 182
    .end local v1    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    .end local v2    # "sql":Ljava/lang/String;
    .end local v4    # "strRawOffset":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getStatSportListByHour(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 8
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
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 72
    .local v3, "start":Ljava/util/Date;
    move-object v0, p2

    .line 74
    .local v0, "end":Ljava/util/Date;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select min(startTime),max(endTime),sum(stepCount),sum(runStepCount),sum(walkStepCount),sum(aerobicsCount), sum(time),sum(runtime), sum(walktime), sum(aerobicstime)  from sport where user_id=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 77
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "startTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " between "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 78
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " group by startTime / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x36ee80

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " order by startTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "sql":Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;

    invoke-direct {v5, p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer$1;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Lcom/meizu/smart/wristband/models/database/entity/User;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v4, v2, v5, v6}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v1

    .line 96
    .local v1, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-interface {v1}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getStatSportListByMonth(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time1"    # Ljava/util/Date;
    .param p3, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v4, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportStatListByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 123
    .local v2, "dayList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    const/4 v5, 0x0

    .line 124
    .local v5, "weekSS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 125
    .local v0, "clDay":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 126
    .local v1, "clWeek":Ljava/util/Calendar;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 127
    .local v3, "daySS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    if-nez v5, :cond_0

    .line 128
    move-object v5, v3

    .line 129
    goto :goto_0

    .line 132
    :cond_0
    iget-object v7, v3, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 133
    iget-object v7, v5, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 134
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 135
    invoke-static {v5, v3}, Lcom/meizu/smart/wristband/models/database/StatConvert;->mergeDays(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    move-object v5, v3

    goto :goto_0

    .line 142
    .end local v3    # "daySS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_2
    if-eqz v5, :cond_3

    .line 143
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_3
    return-object v4
.end method

.method public getStatSportListByWeek(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time1"    # Ljava/util/Date;
    .param p3, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v4, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getSportStatListByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 152
    .local v2, "dayList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    const/4 v5, 0x0

    .line 153
    .local v5, "weekSS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 154
    .local v0, "clDay":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 155
    .local v1, "clWeek":Ljava/util/Calendar;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 156
    .local v3, "daySS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    if-nez v5, :cond_0

    .line 157
    move-object v5, v3

    .line 158
    goto :goto_0

    .line 161
    :cond_0
    iget-object v7, v3, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 162
    iget-object v7, v5, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 164
    invoke-static {v5, v3}, Lcom/meizu/smart/wristband/models/database/StatConvert;->mergeDays(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    move-object v5, v3

    goto :goto_0

    .line 171
    .end local v3    # "daySS1":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_2
    if-eqz v5, :cond_3

    .line 172
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_3
    return-object v4
.end method

.method public getUnSyncRealSport()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;-><init>()V

    .line 238
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSync(Ljava/lang/Boolean;)V

    .line 239
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getUnSyncSport(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 2
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sport;-><init>()V

    .line 210
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setSync(Ljava/lang/Boolean;)V

    .line 211
    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 212
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public saveFromNetworkResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;)V
    .locals 7
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "entity"    # Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 438
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->getStartTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 439
    .local v2, "startTime":Ljava/util/Date;
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->getEndTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 440
    .local v3, "endTime":Ljava/util/Date;
    invoke-virtual {p0, p1, v2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->deleteSport(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)V

    .line 441
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->getStep()I

    move-result v4

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListdata;->getState()I

    move-result v5

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->createSport(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;IIZ)Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 442
    return-void
.end method

.method public saveFromNetworkResponse1(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;)V
    .locals 20
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "entity"    # Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    new-instance v11, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-direct {v11}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;-><init>()V

    .line 446
    .local v11, "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 448
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyyMMddHHmmss"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 450
    .local v13, "timeFormat9":Ljava/text/SimpleDateFormat;
    const-string v16, "UTC"

    invoke-static/range {v16 .. v16}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getStartTime()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStartTime(Ljava/util/Date;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getEndTime()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setEndTime(Ljava/util/Date;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 456
    .local v12, "sports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v16

    if-lez v16, :cond_0

    .line 457
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    check-cast v11, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 460
    .restart local v11    # "sport":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getStartTime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    const-string v16, "null"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getStartTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 461
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getStartTime()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStartTime(Ljava/util/Date;)V

    .line 462
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getEndTime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    const-string v16, "null"

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getEndTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 463
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getEndTime()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setEndTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 474
    .local v14, "startTime":J
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getLocation()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 475
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getLocation()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/models/newwork/response/Location;

    .line 476
    .local v8, "loc":Lcom/meizu/smart/wristband/models/newwork/response/Location;
    new-instance v9, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v9}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 477
    .local v9, "locItem":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 478
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/newwork/response/Location;->getTime()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->locationDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 480
    .local v10, "locTemp":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    if-eqz v10, :cond_3

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_3

    .line 481
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "locItem":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    check-cast v9, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 484
    .restart local v9    # "locItem":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    :cond_3
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/newwork/response/Location;->getLatitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 485
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/newwork/response/Location;->getLongitude()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 486
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/newwork/response/Location;->getDirect()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 487
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/newwork/response/Location;->getSpeed()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->locationDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_1

    .line 464
    .end local v8    # "loc":Lcom/meizu/smart/wristband/models/newwork/response/Location;
    .end local v9    # "locItem":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v10    # "locTemp":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    .end local v14    # "startTime":J
    :catch_0
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 493
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v14    # "startTime":J
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 497
    .local v4, "endTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 505
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getHeartrates()Ljava/util/List;

    move-result-object v16

    if-eqz v16, :cond_6

    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getHeartrates()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;

    .line 507
    .local v3, "heartEntity":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 508
    .local v6, "heartRateItem":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 509
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGt()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 511
    .local v7, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_5

    .line 512
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "heartRateItem":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    check-cast v6, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 515
    .restart local v6    # "heartRateItem":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_5
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGv()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 516
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_2

    .line 522
    .end local v3    # "heartEntity":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    .end local v6    # "heartRateItem":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v7    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 525
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getSpeed()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getDistance()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getCalorie()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getPace()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 529
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSync(Ljava/lang/Boolean;)V

    .line 530
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SportListDataReal;->getHeartrates()Ljava/util/List;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartEntityRate(Ljava/util/List;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 533
    return-void
.end method

.method public savePace(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "integer"    # Ljava/lang/Integer;

    .prologue
    .line 537
    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v0

    .line 538
    .local v0, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/meizu/smart/wristband/utils/SharePreferencesUtil;->setValueAtKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    return-void
.end method

.method public saveRealSport(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;)V
    .locals 1
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "sport"    # Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p2, p1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 244
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 245
    return-void
.end method

.method public saveSportData(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Z
    .locals 26
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "block"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p2, :cond_0

    .line 289
    const/4 v2, 0x1

    .line 360
    :goto_0
    return v2

    .line 291
    :cond_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    .line 292
    .local v9, "blockdata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v2, 0x6

    invoke-static {v9, v2}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->splitData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    .line 293
    .local v11, "l":Ljava/util/List;, "Ljava/util/List<[I>;"
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    move-wide/from16 v18, v0

    .line 295
    .local v18, "time_diff":J
    const/4 v4, 0x0

    .line 296
    .local v4, "startTime":Ljava/util/Date;
    const/4 v12, 0x0

    .line 297
    .local v12, "latesSport":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    .line 298
    .local v10, "bsTmp":[I
    const/4 v2, 0x0

    invoke-static {v10, v2}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->parser([IZ)Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;

    move-result-object v13

    .line 299
    .local v13, "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    if-eqz v13, :cond_1

    .line 300
    const-string v2, "\u8fd0\u52a8\u76d1\u6d4b\u6570\u636e0\uff1a"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 301
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 302
    iget-wide v2, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->secondTime:J

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->transformTime(J)Ljava/util/Date;

    move-result-object v5

    .line 303
    .local v5, "endTime":Ljava/util/Date;
    iget v2, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value:I

    if-eqz v2, :cond_1

    .line 307
    if-nez v12, :cond_2

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v3, "endTime"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "startTime"

    new-instance v6, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    const-wide/32 v24, 0xdbba0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3, v6, v5}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v12

    .line 313
    :cond_2
    if-eqz v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 314
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v4

    .line 321
    :cond_3
    new-instance v16, Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v6, 0x8ca0

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    const-wide/16 v6, 0x5

    div-long/2addr v2, v6

    const-wide/16 v6, 0x5

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/32 v6, 0x88b8

    add-long/2addr v2, v6

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 324
    .local v16, "startTime1":Ljava/util/Date;
    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 325
    :cond_4
    move-object/from16 v4, v16

    .line 327
    :cond_5
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    .line 328
    move-object/from16 v4, v16

    .line 330
    :cond_6
    iget v6, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value:I

    iget v7, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->createSport(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;IIZ)Lcom/meizu/smart/wristband/models/database/entity/Sport;

    move-result-object v15

    .line 331
    .local v15, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    if-eqz v15, :cond_1

    .line 336
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v4

    .line 338
    invoke-static {v15}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->logSport(Lcom/meizu/smart/wristband/models/database/entity/Sport;)V

    .line 340
    const/16 v17, 0x0

    .line 341
    .local v17, "sumstep":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 342
    .local v14, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v22, 0xdbba0

    add-long v6, v6, v22

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    cmp-long v3, v6, v22

    if-ltz v3, :cond_7

    .line 345
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v17, v17, v3

    .line 346
    goto :goto_1

    .line 348
    .end local v14    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_8
    const/16 v2, 0x5dc

    move/from16 v0, v17

    if-le v0, v2, :cond_1

    .line 349
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 350
    .restart local v14    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v22, 0xdbba0

    add-long v6, v6, v22

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    cmp-long v3, v6, v22

    if-ltz v3, :cond_9

    .line 354
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicsCount(Ljava/lang/Integer;)V

    .line 355
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setAerobicstime(Ljava/lang/Integer;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v14}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_2

    .line 360
    .end local v5    # "endTime":Ljava/util/Date;
    .end local v10    # "bsTmp":[I
    .end local v13    # "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    .end local v14    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .end local v15    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .end local v16    # "startTime1":Ljava/util/Date;
    .end local v17    # "sumstep":I
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public setRealSportSynced(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "realSport":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 249
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSync(Ljava/lang/Boolean;)V

    .line 250
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->rSportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 252
    .end local v0    # "s":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    :cond_0
    return-void
.end method

.method public updateGoogleFitSport(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "lstSports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 224
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setGooglefitSync(Ljava/lang/Boolean;)V

    .line 225
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 227
    .end local v0    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    return-void
.end method

.method public updateSport(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sport;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "lstSports":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 231
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setSync(Ljava/lang/Boolean;)V

    .line 232
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->sportDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_0

    .line 234
    .end local v0    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_0
    return-void
.end method
