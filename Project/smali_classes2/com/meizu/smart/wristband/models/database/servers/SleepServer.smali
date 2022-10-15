.class public Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
.super Ljava/lang/Object;
.source "SleepServer.java"


# instance fields
.field private baseSleepStateCodeDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private motionDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepMotion;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sleepDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stateDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
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
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->context:Landroid/content/Context;

    .line 56
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getDataBaseHelper(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getSleepDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    .line 58
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getSleepStateDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->stateDao:Lcom/j256/ormlite/dao/Dao;

    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getSleepMotionDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->motionDao:Lcom/j256/ormlite/dao/Dao;

    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getHeartRateDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getBaseSleepStateDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    .line 62
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->dbHelper:Lcom/meizu/smart/wristband/models/database/DatabaseHelper;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/DatabaseHelper;->getBaseSleepStateCodeDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateCodeDao:Lcom/j256/ormlite/dao/Dao;

    .line 63
    return-void
.end method

.method public static AnalyseSleepDataByLocal(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Z
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;

    .prologue
    .line 367
    :try_start_0
    new-instance v14, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 368
    .local v14, "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v7, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 370
    .local v7, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    .line 371
    .local v15, "today":Ljava/util/Date;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getTodaySyncAllSleepState(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    .line 372
    .local v3, "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getUnsyncSleepState(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v1

    .line 375
    .local v1, "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getAllHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v6

    .line 378
    .local v6, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    .line 379
    const-string v16, "\u6ca1\u6709\u65b0\u7684\u7761\u7720\u6570\u636e"

    invoke-static/range {v16 .. v16}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 380
    const/16 v16, 0x0

    .line 412
    .end local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v15    # "today":Ljava/util/Date;
    :goto_0
    return v16

    .line 383
    .restart local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .restart local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .restart local v15    # "today":Ljava/util/Date;
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v10, "originalStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .line 386
    .local v2, "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateCode()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/j256/ormlite/dao/ForeignCollection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    .line 388
    .local v4, "code":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->getValue()Ljava/lang/Byte;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->intValue()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 406
    .end local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .end local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v4    # "code":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    .end local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "originalStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    .end local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v15    # "today":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 407
    .local v5, "e":Ljava/sql/SQLException;
    invoke-virtual {v5}, Ljava/sql/SQLException;->printStackTrace()V

    .line 412
    .end local v5    # "e":Ljava/sql/SQLException;
    :goto_3
    const/16 v16, 0x1

    goto :goto_0

    .line 390
    .restart local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .restart local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .restart local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "originalStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    .restart local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .restart local v15    # "today":Ljava/util/Date;
    :cond_1
    :try_start_1
    new-instance v9, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;

    invoke-direct {v9}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;-><init>()V

    .line 391
    .local v9, "originalState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStartTime()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStartTime(Ljava/lang/String;)V

    .line 392
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getEndTime()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setEndTime(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v9, v8}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCode(Ljava/util/List;)V

    .line 394
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateCyc()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateCyc(I)V

    .line 395
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateNum()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;->setStateNum(I)V

    .line 396
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 408
    .end local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .end local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "originalState":Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;
    .end local v10    # "originalStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    .end local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .end local v15    # "today":Ljava/util/Date;
    :catch_1
    move-exception v5

    .line 409
    .local v5, "e":Ljava/text/ParseException;
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_3

    .line 399
    .end local v5    # "e":Ljava/text/ParseException;
    .restart local v1    # "UnSyncbaseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v6    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .restart local v7    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v10    # "originalStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/OriginalState;>;"
    .restart local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    .restart local v15    # "today":Ljava/util/Date;
    :cond_2
    :try_start_2
    new-instance v13, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;

    invoke-direct {v13}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;-><init>()V

    .line 400
    .local v13, "sleepListdatas":Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v12, "sitList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v11, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;>;"
    const-string v16, "Asia/Shanghai"

    move-object/from16 v0, v16

    invoke-static {v0, v10, v11, v12}, Lcom/meizu/smart/wristband/meizuUI/sleep/analyse/AutoDetectSleepAnalyse;->analyse(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 403
    invoke-virtual {v13, v11}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->setSleep(Ljava/util/List;)V

    .line 404
    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v13}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->saveAutoSleepResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3
.end method

.method private getSleepByRange(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 6
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "time1"    # Ljava/util/Date;
    .param p3, "time2"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 219
    .local v2, "start":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 221
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 224
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "sleeps":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 227
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 229
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAllSleepByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 69
    .local v2, "start":Ljava/util/Date;
    move-object v0, p2

    .line 71
    .local v0, "end":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    const-string v4, "endTime"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "user_id"

    .line 72
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string v4, "endTime"

    invoke-virtual {v3, v4, v2, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    .line 76
    .local v1, "sleeps":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    return-object v1
.end method

.method public getSleepByID(I)Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 81
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    return-object v0
.end method

.method public getSleepStatByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 13
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
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
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v8, v7

    .line 86
    .local v8, "timediff":J
    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "strRawOffset":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select startTime,endTime,max(totalDuration),deepDuration , shallowDuration , dreamDuration , wakeDuration from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v10, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->TABLE:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " where "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "user_id"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "=\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 98
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " and "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "endTime"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " between "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 99
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " and "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " group by ( endTime "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ") / "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const v10, 0x5265c00

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, " order by endTime"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "sql":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/meizu/smart/wristband/models/database/servers/SleepServer$1;

    invoke-direct {v11, p0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer$1;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SleepServer;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-interface {v7, v10, v11, v12}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;Lcom/j256/ormlite/dao/RawRowMapper;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v2

    .line 129
    .local v2, "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    invoke-interface {v2}, Lcom/j256/ormlite/dao/GenericRawResults;->getResults()Ljava/util/List;

    move-result-object v0

    .line 131
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 135
    .local v4, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v10, 0x4b0

    if-ge v7, v10, :cond_0

    .line 136
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 86
    .end local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v1    # "i":I
    .end local v2    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v4    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v5    # "sql":Ljava/lang/String;
    .end local v6    # "strRawOffset":Ljava/lang/String;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 148
    .restart local v0    # "all":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v1    # "i":I
    .restart local v2    # "rawResults":Lcom/j256/ormlite/dao/GenericRawResults;, "Lcom/j256/ormlite/dao/GenericRawResults<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .restart local v5    # "sql":Ljava/lang/String;
    .restart local v6    # "strRawOffset":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getSleepStatByMonth(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
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

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 154
    .local v2, "dayList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v4, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    const/4 v5, 0x0

    .line 156
    .local v5, "weekSS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 157
    .local v0, "clDay":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 158
    .local v1, "clWeek":Ljava/util/Calendar;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 159
    .local v3, "daySS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-nez v5, :cond_0

    .line 160
    move-object v5, v3

    .line 161
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 165
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 166
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 167
    invoke-static {v5, v3}, Lcom/meizu/smart/wristband/models/database/StatConvert;->mergeDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    goto :goto_0

    .line 169
    :cond_1
    invoke-static {v5}, Lcom/meizu/smart/wristband/models/database/StatConvert;->avgDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 170
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    move-object v5, v3

    goto :goto_0

    .line 175
    .end local v3    # "daySS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_2
    if-eqz v5, :cond_3

    .line 176
    invoke-static {v5}, Lcom/meizu/smart/wristband/models/database/StatConvert;->avgDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 177
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_3
    return-object v4
.end method

.method public getSleepStatByWeek(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 10
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
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
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

    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepStatByDay(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    .line 186
    .local v2, "dayList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, "weekList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    const/4 v5, 0x0

    .line 188
    .local v5, "weekSS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 189
    .local v0, "clDay":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 190
    .local v1, "clWeek":Ljava/util/Calendar;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 191
    .local v3, "daySS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-nez v5, :cond_0

    .line 192
    move-object v5, v3

    .line 193
    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 197
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 198
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 199
    invoke-static {v5, v3}, Lcom/meizu/smart/wristband/models/database/StatConvert;->mergeDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-static {v5}, Lcom/meizu/smart/wristband/models/database/StatConvert;->avgDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 202
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    move-object v5, v3

    goto :goto_0

    .line 207
    .end local v3    # "daySS1":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_2
    if-eqz v5, :cond_3

    .line 208
    invoke-static {v5}, Lcom/meizu/smart/wristband/models/database/StatConvert;->avgDays(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 209
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_3
    return-object v4
.end method

.method public getTodaySyncAllSleepState(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;)Ljava/util/List;
    .locals 5
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
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 251
    invoke-static {p2}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 252
    .local v1, "start":Ljava/util/Date;
    move-object v0, p2

    .line 254
    .local v0, "end":Ljava/util/Date;
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string v3, "startTime"

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 255
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "sync"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 257
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string v3, "endTime"

    invoke-virtual {v2, v3, v1, v0}, Lcom/j256/ormlite/stmt/Where;->between(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 258
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getUnsyncSleepState(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;
    .locals 3
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string v1, "startTime"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "sync"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 236
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveAutoSleepResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;)V
    .locals 28
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "sleepdataList"    # Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 423
    move-object/from16 v9, p2

    .line 424
    .local v9, "entities":Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->getSleep()Ljava/util/List;

    move-result-object v21

    if-nez v21, :cond_0

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->getSit()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 425
    :cond_0
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->getSleep()Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_8

    .line 426
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/newwork/response/BaseSleepListdata;->getSleep()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;

    .line 427
    .local v10, "entity":Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepTime()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    .line 428
    .local v18, "startTime":Ljava/util/Date;
    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getWakeupTime()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 429
    .local v8, "endTime":Ljava/util/Date;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "format getSleepTime()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " getWakeupTime()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v8}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getSleepByRange(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-result-object v14

    .line 431
    .local v14, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-nez v14, :cond_2

    .line 432
    const-string v22, "getSleepByRange sleep is null"

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 433
    new-instance v14, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .end local v14    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-direct {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;-><init>()V

    .line 437
    .restart local v14    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setStartTime(Ljava/util/Date;)V

    .line 438
    invoke-virtual {v14, v8}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 440
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getQuantity()F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setScore(Ljava/lang/Float;)V

    .line 441
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 443
    .local v7, "end":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 444
    .local v17, "start":Ljava/util/Calendar;
    invoke-virtual {v7, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 445
    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 446
    invoke-static {v7}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    .line 455
    .local v4, "dateStart":Ljava/util/Calendar;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sleep startTime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "end Time = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 457
    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setSync(Ljava/lang/Boolean;)V

    .line 458
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 459
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 460
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 461
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 465
    const/4 v6, 0x0

    .local v6, "dream":I
    move/from16 v20, v6

    .local v20, "week":I
    move v11, v6

    .local v11, "shadow":I
    move v5, v6

    .line 466
    .local v5, "deep":I
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepState()Ljava/util/List;

    move-result-object v16

    .line 467
    .local v16, "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;

    .line 468
    .local v19, "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    new-instance v15, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    invoke-direct {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;-><init>()V

    .line 469
    .local v15, "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    invoke-virtual {v15, v14}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setSleep(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 470
    sget-object v23, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getStartTime()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setStartTime(Ljava/util/Date;)V

    .line 471
    sget-object v23, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setEndTime(Ljava/util/Date;)V

    .line 472
    invoke-virtual/range {v19 .. v19}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getStateCode()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->code2State(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setState(Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;)V

    .line 474
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sleepState startTime = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getStartTime()Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "end Time = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getEndTime()Ljava/util/Date;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getEndTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getStartTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    const-wide/16 v26, 0x3c

    div-long v12, v24, v26

    .line 477
    .local v12, "minute":J
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sleepState state = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 478
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sleepState minute = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    sget-object v24, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 480
    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-wide/from16 v0, v24

    long-to-int v5, v0

    .line 491
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->stateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_2

    .line 435
    .end local v4    # "dateStart":Ljava/util/Calendar;
    .end local v5    # "deep":I
    .end local v6    # "dream":I
    .end local v7    # "end":Ljava/util/Calendar;
    .end local v11    # "shadow":I
    .end local v12    # "minute":J
    .end local v15    # "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    .end local v16    # "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    .end local v17    # "start":Ljava/util/Calendar;
    .end local v19    # "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    .end local v20    # "week":I
    :cond_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "getSleepByRange sleep is starttime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " endtime = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 481
    .restart local v4    # "dateStart":Ljava/util/Calendar;
    .restart local v5    # "deep":I
    .restart local v6    # "dream":I
    .restart local v7    # "end":Ljava/util/Calendar;
    .restart local v11    # "shadow":I
    .restart local v12    # "minute":J
    .restart local v15    # "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    .restart local v16    # "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    .restart local v17    # "start":Ljava/util/Calendar;
    .restart local v19    # "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    .restart local v20    # "week":I
    :cond_3
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    sget-object v24, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 482
    int-to-long v0, v11

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-wide/from16 v0, v24

    long-to-int v11, v0

    goto :goto_3

    .line 483
    :cond_4
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    sget-object v24, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 484
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v20, v0

    goto :goto_3

    .line 485
    :cond_5
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    sget-object v24, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 486
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v20, v0

    goto :goto_3

    .line 487
    :cond_6
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v23

    sget-object v24, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 488
    int-to-long v0, v6

    move-wide/from16 v24, v0

    add-long v24, v24, v12

    move-wide/from16 v0, v24

    long-to-int v6, v0

    goto/16 :goto_3

    .line 494
    .end local v12    # "minute":J
    .end local v15    # "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    .end local v19    # "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    :cond_7
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sleep shadow = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "deep = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 496
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 497
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 498
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 499
    add-int v22, v11, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setTotalDuration(Ljava/lang/Integer;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_0

    .line 505
    .end local v4    # "dateStart":Ljava/util/Calendar;
    .end local v5    # "deep":I
    .end local v6    # "dream":I
    .end local v7    # "end":Ljava/util/Calendar;
    .end local v8    # "endTime":Ljava/util/Date;
    .end local v10    # "entity":Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    .end local v11    # "shadow":I
    .end local v14    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v16    # "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    .end local v17    # "start":Ljava/util/Calendar;
    .end local v18    # "startTime":Ljava/util/Date;
    .end local v20    # "week":I
    :cond_8
    return-void
.end method

.method public saveAutoSleepStateMonitorData(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/ArrayList;)Z
    .locals 28
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    .local p2, "blocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v16, "state":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v15, 0x0

    .line 265
    .local v15, "startTime":Ljava/util/Date;
    const/4 v9, 0x0

    .line 266
    .local v9, "endTime":Ljava/util/Date;
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyyMMddHHmm"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v18, "timeFormat7":Ljava/text/SimpleDateFormat;
    new-instance v5, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;-><init>()V

    .line 269
    .local v5, "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1

    .line 270
    :cond_0
    const/16 v19, 0x1

    .line 361
    :goto_0
    return v19

    .line 272
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .line 273
    .local v12, "monitorData":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    iget-wide v0, v12, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    move-wide/from16 v20, v0

    .line 274
    .local v20, "time_diff":J
    iget-object v0, v12, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->data:Ljava/util/List;

    move-object/from16 v19, v0

    const/16 v23, 0x6

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->splitData(Ljava/util/List;I)Ljava/util/List;

    move-result-object v11

    .line 275
    .local v11, "l":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 276
    .local v8, "bsState":[I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 277
    .local v14, "sb":Ljava/lang/StringBuffer;
    array-length v0, v8

    move/from16 v24, v0

    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    aget v4, v8, v19

    .line 278
    .local v4, "b":I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " , "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 280
    .end local v4    # "b":I
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "bsState="

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 281
    const-string v19, "\u7761\u7720\u72b6\u6001\u6570\u636e0\uff1a"

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 282
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v8, v0}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->parser([IZ)Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;

    move-result-object v13

    .line 283
    .local v13, "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    if-eqz v13, :cond_3

    .line 286
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 287
    iget v0, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    move/from16 v19, v0

    if-nez v19, :cond_5

    .line 288
    const/4 v15, 0x0

    .line 289
    const/4 v9, 0x0

    .line 290
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 291
    :cond_5
    iget v0, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->flag:I

    move/from16 v19, v0

    const/16 v24, 0x3

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 294
    if-eqz v15, :cond_7

    if-eqz v9, :cond_7

    .line 295
    new-instance v5, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .end local v5    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    invoke-direct {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;-><init>()V

    .line 296
    .restart local v5    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStateCyc(Ljava/lang/Integer;)V

    .line 297
    new-instance v19, Ljava/util/Date;

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    .line 298
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateCyc()Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x3c

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 297
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStartTime(Ljava/util/Date;)V

    .line 299
    invoke-virtual {v5, v9}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setEndTime(Ljava/util/Date;)V

    .line 300
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStateNum(Ljava/lang/Integer;)V

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 302
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setSync(Ljava/lang/Boolean;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 304
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Byte;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    .line 305
    .local v10, "i":B
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;-><init>()V

    .line 306
    .local v6, "baseSleepStateCode":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->setValue(Ljava/lang/Byte;)V

    .line 307
    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->setBaseSleepState(Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateCodeDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_3

    .line 310
    .end local v6    # "baseSleepStateCode":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    .end local v10    # "i":B
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\u4fdd\u5b58\u7761\u7720\u72b6\u6001\u6570\u636e\uff1a"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateNum()Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v24, "----"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStartTime()Ljava/util/Date;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 312
    :cond_7
    const/4 v15, 0x0

    .line 313
    const/4 v9, 0x0

    .line 314
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 316
    :cond_8
    iget-wide v0, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->secondTime:J

    move-wide/from16 v24, v0

    sub-long v24, v24, v20

    invoke-static/range {v24 .. v25}, Lcom/meizu/smart/wristband/models/database/FBDBTools;->transformTime(J)Ljava/util/Date;

    move-result-object v17

    .line 317
    .local v17, "time":Ljava/util/Date;
    if-nez v15, :cond_b

    .line 318
    move-object/from16 v15, v17

    .line 323
    :cond_9
    :goto_4
    if-nez v9, :cond_c

    .line 324
    move-object/from16 v9, v17

    .line 328
    :cond_a
    :goto_5
    iget v0, v13, Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;->value:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string v19, "\u7761\u7720\u72b6\u6001\u6570\u636e1\uff1a"

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 320
    move-object/from16 v15, v17

    goto :goto_4

    .line 325
    :cond_c
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 326
    move-object/from16 v9, v17

    goto :goto_5

    .line 333
    .end local v8    # "bsState":[I
    .end local v11    # "l":Ljava/util/List;, "Ljava/util/List<[I>;"
    .end local v12    # "monitorData":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .end local v13    # "parserData":Lcom/meizu/smart/wristband/models/database/FBDBTools$ParserData;
    .end local v14    # "sb":Ljava/lang/StringBuffer;
    .end local v17    # "time":Ljava/util/Date;
    .end local v20    # "time_diff":J
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u6700\u540e\u4e00\u6bb5\u7761\u7720\u7684\u72b6\u6001\u6570\uff1a"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_f

    if-eqz v15, :cond_f

    if-eqz v9, :cond_f

    .line 335
    new-instance v5, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .end local v5    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    invoke-direct {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;-><init>()V

    .line 336
    .restart local v5    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStateCyc(Ljava/lang/Integer;)V

    .line 337
    new-instance v19, Ljava/util/Date;

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    .line 338
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateCyc()Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 337
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStartTime(Ljava/util/Date;)V

    .line 339
    invoke-virtual {v5, v9}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setEndTime(Ljava/util/Date;)V

    .line 340
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setStateNum(Ljava/lang/Integer;)V

    .line 341
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v5}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 343
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_e

    .line 344
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;-><init>()V

    .line 345
    .restart local v6    # "baseSleepStateCode":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Byte;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->setValue(Ljava/lang/Byte;)V

    .line 346
    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->setBaseSleepState(Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateCodeDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 343
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 349
    .end local v6    # "baseSleepStateCode":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "\u4fdd\u5b58\u7761\u7720\u72b6\u6001\u6570\u636e\uff1a"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateNum()Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v22, "----"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 351
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStartTime()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 349
    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 354
    .end local v10    # "i":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v19

    const-string v22, "user_id"

    .line 355
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v19

    .line 354
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .line 356
    .local v7, "bs":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\u4e00\u6bb5\u7761\u7720\u72b6\u6001\u6570\u636e\uff1a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 357
    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStartTime()Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 358
    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getEndTime()Ljava/util/Date;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 356
    invoke-static/range {v22 .. v22}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_7

    .line 361
    .end local v7    # "bs":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    :cond_10
    const/16 v19, 0x1

    goto/16 :goto_0
.end method

.method public saveDateFortest(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 1
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 418
    return-void
.end method

.method public saveFromNetworkResponse(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;)V
    .locals 22
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "entity"    # Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v11, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-direct {v11}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;-><init>()V

    .line 510
    .local v11, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 511
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getWakeupTime()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->queryForMatchingArgs(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 513
    .local v12, "sleepList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 514
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    check-cast v11, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 517
    .restart local v11    # "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_0
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepTime()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setStartTime(Ljava/util/Date;)V

    .line 518
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getWakeupTime()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 519
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getGtime()Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setTotalDuration(Ljava/lang/Integer;)V

    .line 520
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getQuantity()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setScore(Ljava/lang/Float;)V

    .line 521
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setSync(Ljava/lang/Boolean;)V

    .line 522
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 523
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 524
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 525
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 527
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sleep startTime = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "end Time = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 532
    const/4 v4, 0x0

    .local v4, "dream":I
    move/from16 v16, v4

    .local v16, "week":I
    move v10, v4

    .local v10, "shadow":I
    move v3, v4

    .line 533
    .local v3, "deep":I
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getSleepState()Ljava/util/List;

    move-result-object v14

    .line 534
    .local v14, "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/SleepState;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;

    .line 535
    .local v15, "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    new-instance v13, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    invoke-direct {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;-><init>()V

    .line 536
    .local v13, "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    invoke-virtual {v13, v11}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setSleep(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 537
    sget-object v18, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getStartTime()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setStartTime(Ljava/util/Date;)V

    .line 538
    sget-object v18, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getEndTime()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setEndTime(Ljava/util/Date;)V

    .line 539
    invoke-virtual {v15}, Lcom/meizu/smart/wristband/models/newwork/response/SleepState;->getStateCode()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->code2State(Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->setState(Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;)V

    .line 541
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "sleepState startTime = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getStartTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "end Time = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getEndTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getEndTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getStartTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    const-wide/16 v20, 0x3c

    div-long v8, v18, v20

    .line 544
    .local v8, "minute":J
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    sget-object v19, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 545
    int-to-long v0, v3

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .line 556
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->stateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto/16 :goto_0

    .line 546
    :cond_2
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    sget-object v19, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 547
    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v10, v0

    goto :goto_1

    .line 548
    :cond_3
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    sget-object v19, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 549
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    goto :goto_1

    .line 550
    :cond_4
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    sget-object v19, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 551
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v16, v0

    goto :goto_1

    .line 552
    :cond_5
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v18

    sget-object v19, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 553
    int-to-long v0, v4

    move-wide/from16 v18, v0

    add-long v18, v18, v8

    move-wide/from16 v0, v18

    long-to-int v4, v0

    goto :goto_1

    .line 558
    .end local v8    # "minute":J
    .end local v13    # "sleepState":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    .end local v15    # "state":Lcom/meizu/smart/wristband/models/newwork/response/SleepState;
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDeepDuration(Ljava/lang/Integer;)V

    .line 559
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setShallowDuration(Ljava/lang/Integer;)V

    .line 560
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setWakeDuration(Ljava/lang/Integer;)V

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setDreamDuration(Ljava/lang/Integer;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Lcom/meizu/smart/wristband/models/newwork/response/SleepListdata;->getHeartRates()Ljava/util/List;

    move-result-object v7

    .line 565
    .local v7, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;

    .line 566
    .local v5, "heartEntity":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 567
    .local v6, "heartRate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 568
    sget-object v18, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGt()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcDate(Ljava/text/SimpleDateFormat;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->queryForMatching(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 571
    .local v2, "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    if-gtz v18, :cond_7

    .line 575
    :cond_8
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;->getGv()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->heartRateDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    goto :goto_2

    .line 579
    .end local v2    # "dbList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v5    # "heartEntity":Lcom/meizu/smart/wristband/models/newwork/response/HeartEntity;
    .end local v6    # "heartRate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->sleepDao:Lcom/j256/ormlite/dao/Dao;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 580
    return-void
.end method

.method public saveUnsyncSleepState(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .prologue
    .local p1, "sleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    const/4 v3, 0x1

    .line 241
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .line 242
    .local v0, "state":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->setSync(Ljava/lang/Boolean;)V

    .line 243
    iget-object v2, p0, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->baseSleepStateDao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_0

    .line 246
    .end local v0    # "state":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    :cond_0
    return v3
.end method
