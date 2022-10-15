.class public Lcom/meizu/smart/wristband/servers/ModelDataManager;
.super Ljava/lang/Object;
.source "ModelDataManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->lambda$uploadLocalData$502(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->lambda$uploadGooglefitData$503(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->lambda$uploadGooglefitData$504(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->lambda$uploadSportData$505(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->lambda$uploadRealSport$506(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static downloadAllHistory(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/Observable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "from"    # Ljava/util/Date;
    .param p3, "to"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v1, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;-><init>()V

    .line 133
    .local v1, "req":Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->setUsername(Ljava/lang/String;)V

    .line 134
    sget-object v2, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-static {v2, p2}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->setStartDate(Ljava/lang/String;)V

    .line 135
    sget-object v2, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-static {v2, p3}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;->setEndDate(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 138
    .local v0, "progressSubject":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<Ljava/lang/Integer;>;"
    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->loadBizData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/LoadBizDataReq;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelDataManager$4;

    invoke-direct {v3, v0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$4;-><init>(Lrx/subjects/BehaviorSubject;)V

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;

    invoke-direct {v3, p0, p1, v0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;-><init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lrx/subjects/BehaviorSubject;)V

    .line 146
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 242
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 244
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

.method public static downloadSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/Common;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/Common;-><init>()V

    .line 250
    .local v0, "req":Lcom/meizu/smart/wristband/models/newwork/request/Common;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/Common;->setUsername(Ljava/lang/String;)V

    .line 252
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->downloadSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/Common;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelDataManager$6;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$6;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$5;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 362
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 364
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method private static synthetic lambda$uploadGooglefitData$503(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p3, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 384
    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->writeStep(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$uploadGooglefitData$504(Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 385
    const-string v0, "google fit save ok"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$uploadLocalData$502(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadLocalData :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$uploadRealSport$506(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 716
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->setRealSportSynced(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_0
.end method

.method private static synthetic lambda$uploadSportData$505(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 441
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static saveRunSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)Lrx/Observable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .param p2, "sportReal"    # Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Lcom/meizu/smart/wristband/models/database/entity/SportReal;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    .local p3, "heartRateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .local p4, "locationList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/servers/ModelDataManager$16;-><init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v6

    .line 758
    .local v6, "saveJob":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {v6, v0}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static saveSyncData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "blocks":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    const-string v1, "begin to save data..."

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    .line 84
    .local v0, "progressSubject":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<Ljava/lang/Integer;>;"
    new-instance v1, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/meizu/smart/wristband/models/database/entity/User;Lrx/subjects/BehaviorSubject;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v1

    .line 126
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 128
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static uploadAutoSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 473
    :try_start_0
    new-instance v14, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 474
    .local v14, "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    new-instance v9, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 475
    .local v9, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->getUnsyncSleepState(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getUnSyncHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v8

    .line 477
    .local v8, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v16

    if-nez v16, :cond_0

    .line 478
    const-string/jumbo v16, "\u6ca1\u6709\u65b0\u7684\u7761\u7720\u6570\u636e"

    invoke-static/range {v16 .. v16}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 479
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v16

    .line 554
    .end local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v8    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v9    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :goto_0
    return-object v16

    .line 482
    .restart local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v8    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .restart local v9    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :cond_0
    new-instance v12, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;

    invoke-direct {v12}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;-><init>()V

    .line 483
    .local v12, "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->setUsername(Ljava/lang/String;)V

    .line 484
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->setBind(Ljava/util/List;)V

    .line 486
    new-instance v13, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;

    invoke-direct {v13}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;-><init>()V

    .line 487
    .local v13, "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->setHeartRates(Ljava/util/List;)V

    .line 488
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->setActs(Ljava/util/List;)V

    .line 489
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->setOriginalState(Ljava/util/List;)V

    .line 491
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;

    .line 492
    .local v2, "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
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

    .line 494
    .local v4, "code":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;->getValue()Ljava/lang/Byte;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 550
    .end local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .end local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .end local v4    # "code":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepStateCode;
    .end local v8    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v9    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
    .end local v13    # "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
    .end local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :catch_0
    move-exception v5

    .line 551
    .local v5, "e":Ljava/sql/SQLException;
    invoke-virtual {v5}, Ljava/sql/SQLException;->printStackTrace()V

    .line 554
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v16

    goto/16 :goto_0

    .line 496
    .end local v5    # "e":Ljava/sql/SQLException;
    .restart local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .restart local v3    # "baseSleepStateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;>;"
    .restart local v8    # "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .restart local v9    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;
    .restart local v13    # "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;
    .restart local v14    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :cond_1
    :try_start_1
    new-instance v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;

    invoke-direct {v11}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;-><init>()V

    .line 497
    .local v11, "originalState":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->getOriginalState()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStartTime()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->setStartTime(Ljava/lang/String;)V

    .line 499
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getEndTime()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->setEndTime(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v11, v10}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->setStateCode(Ljava/util/List;)V

    .line 501
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateCyc()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->setStateCyc(I)V

    .line 502
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;->getStateNum()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;->setStateNum(I)V

    goto/16 :goto_1

    .line 506
    .end local v2    # "baseSleepState":Lcom/meizu/smart/wristband/models/database/entity/BaseSleepState;
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "originalState":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$OriginalState;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 507
    .local v6, "heart":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v7, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;

    invoke-direct {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;-><init>()V

    .line 508
    .local v7, "heartRate":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;
    invoke-virtual {v13}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;->getHeartRates()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;->setGv(I)V

    .line 510
    sget-object v17, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;->setGt(Ljava/lang/String;)V

    goto :goto_3

    .line 512
    .end local v6    # "heart":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v7    # "heartRate":Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$HeartRate;
    :cond_3
    invoke-virtual {v12, v13}, Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;->setBaseSleep(Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep$Record;)V

    .line 514
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitAutoSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitAutoSleep;)Lrx/Observable;

    move-result-object v16

    new-instance v17, Lcom/meizu/smart/wristband/servers/ModelDataManager$12;

    invoke-direct/range {v17 .. v17}, Lcom/meizu/smart/wristband/servers/ModelDataManager$12;-><init>()V

    invoke-virtual/range {v16 .. v17}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    new-instance v17, Lcom/meizu/smart/wristband/servers/ModelDataManager$11;

    move-object/from16 v0, v17

    invoke-direct {v0, v14, v3}, Lcom/meizu/smart/wristband/servers/ModelDataManager$11;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SleepServer;Ljava/util/List;)V

    .line 521
    invoke-virtual/range {v16 .. v17}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v16

    .line 540
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v15

    .line 542
    .local v15, "uploadAutoSleep":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadHeart(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v16

    new-instance v17, Lcom/meizu/smart/wristband/servers/ModelDataManager$13;

    invoke-direct/range {v17 .. v17}, Lcom/meizu/smart/wristband/servers/ModelDataManager$13;-><init>()V

    .line 543
    invoke-virtual/range {v16 .. v17}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v16

    .line 548
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    goto/16 :goto_0
.end method

.method public static uploadGooglefitData(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    :try_start_0
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 372
    .local v3, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-virtual {v3, p2}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getGoogleFitSport(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v2

    .line 373
    .local v2, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 374
    const-string/jumbo v4, "\u6ca1\u6709\u65b0\u7684Google fit\u6570\u636e"

    invoke-static {v4}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 375
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    .line 402
    .end local v2    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v4

    .line 378
    .restart local v2    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .restart local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 379
    .local v1, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v7, v5}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceByStep(JI)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setDistance(Ljava/lang/Integer;)V

    .line 380
    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v7, v5}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setCalorie(Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 398
    .end local v1    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .end local v2    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .end local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/sql/SQLException;
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    .line 402
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    goto :goto_0

    .line 383
    .end local v0    # "e":Ljava/sql/SQLException;
    .restart local v2    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .restart local v3    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0, p1, v2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->lambdaFactory$(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/functions/Func1;

    move-result-object v5

    .line 384
    invoke-virtual {v4, v5}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$3;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v5

    .line 385
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;

    invoke-direct {v5, v3, v2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$7;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V

    .line 386
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method private static uploadHeart(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "heartRateList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    const/4 v8, 0x0

    .line 603
    new-instance v3, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;-><init>()V

    .line 604
    .local v3, "param1":Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 605
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->setUsername(Ljava/lang/String;)V

    .line 606
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->setDayHeartrates(Ljava/util/ArrayList;)V

    .line 607
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->getDayHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->getDayHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->setHeartrates(Ljava/util/ArrayList;)V

    .line 610
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 611
    .local v4, "start":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 612
    .local v0, "end":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->getDayHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->setStartTime(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->getDayHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->setEndTime(Ljava/lang/String;)V

    .line 615
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 616
    .local v1, "heart":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v2, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;-><init>()V

    .line 617
    .local v2, "heartRate":Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;->getDayHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRateDay;->getHeartrates()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->setGv(Ljava/lang/Integer;)V

    .line 619
    sget-object v5, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat7a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;->setGt(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    .end local v0    # "end":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v1    # "heart":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v2    # "heartRate":Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate$HeartRate;
    .end local v4    # "start":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 624
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 631
    :goto_1
    return-object v5

    .line 626
    :cond_1
    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitHeartRateData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitHeartRate;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/ModelDataManager$15;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/servers/ModelDataManager$15;-><init>()V

    invoke-virtual {v5, v6}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;

    invoke-direct {v6, p0, p2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 631
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    goto :goto_1
.end method

.method public static uploadLocalData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v2

    .line 68
    .local v2, "uploadSport":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadRealSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v1

    .line 69
    .local v1, "uploadRealSport":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadAutoSleepData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    .line 71
    .local v0, "uploadAutoSleep":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {v2, v1, v0}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/meizu/smart/wristband/servers/ModelDataManager$1;

    invoke-direct {v4}, Lcom/meizu/smart/wristband/servers/ModelDataManager$1;-><init>()V

    invoke-virtual {v3, v4}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v3

    invoke-static {}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$1;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method

.method public static uploadRealSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    :try_start_0
    new-instance v18, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 654
    .local v18, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v12, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;-><init>(Landroid/content/Context;)V

    .line 655
    .local v12, "locationServer":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 657
    .local v6, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getUnSyncRealSport()Ljava/util/List;

    move-result-object v17

    .line 660
    .local v17, "realsportlist":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    new-instance v16, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;

    invoke-direct/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;-><init>()V

    .line 661
    .local v16, "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->setUsername(Ljava/lang/String;)V

    .line 662
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->setRtsportdata(Ljava/util/List;)V

    .line 663
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->getRtsportdata()Ljava/util/List;

    move-result-object v19

    new-instance v20, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;

    invoke-direct/range {v20 .. v20}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;-><init>()V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->getRtsportdata()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;->detail:Ljava/util/List;

    .line 665
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 666
    new-instance v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;

    invoke-direct {v15}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;-><init>()V

    .line 667
    .local v15, "oneItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->location:Ljava/util/List;

    .line 668
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->heartrates:Ljava/util/List;

    .line 670
    move-object/from16 v0, v17

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 671
    .local v14, "oneEntry":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->calorie:Ljava/lang/Float;

    .line 672
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->distance:Ljava/lang/Integer;

    .line 673
    sget-object v19, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->endTime:Ljava/lang/String;

    .line 674
    sget-object v19, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->startTime:Ljava/lang/String;

    .line 675
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getFreqland()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->foreland:Ljava/lang/Integer;

    .line 676
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getFreq()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->freq:Ljava/lang/Integer;

    .line 677
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStepCount()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->step:Ljava/lang/Integer;

    .line 678
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->pace:Ljava/lang/Integer;

    .line 679
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getSpeed()Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->speed:Ljava/lang/Integer;

    .line 681
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/LocationServer;->getLocations(Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v13

    .line 682
    .local v13, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    if-eqz v13, :cond_1

    .line 683
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    .line 684
    .local v10, "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;

    invoke-direct {v11}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;-><init>()V

    .line 685
    .local v11, "locItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getX()Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;->longitude:D

    .line 686
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getY()Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->floatValue()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;->latitude:D

    .line 687
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getDirect()Ljava/lang/Float;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 688
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getDirect()Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;->direct:Ljava/lang/Integer;

    .line 690
    :cond_0
    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getSpeed()Ljava/lang/Float;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Float;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;->speed:Ljava/lang/Integer;

    .line 691
    sget-object v20, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;->time:Ljava/lang/String;

    .line 692
    iget-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->location:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 724
    .end local v6    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v9    # "i":I
    .end local v10    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v11    # "locItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Location;
    .end local v12    # "locationServer":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    .end local v13    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    .end local v14    # "oneEntry":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .end local v15    # "oneItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;
    .end local v16    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
    .end local v17    # "realsportlist":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    .end local v18    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :catch_0
    move-exception v4

    .line 725
    .local v4, "e":Ljava/sql/SQLException;
    invoke-virtual {v4}, Ljava/sql/SQLException;->printStackTrace()V

    .line 728
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v19

    .end local v4    # "e":Ljava/sql/SQLException;
    :goto_2
    return-object v19

    .line 697
    .restart local v6    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v9    # "i":I
    .restart local v12    # "locationServer":Lcom/meizu/smart/wristband/models/database/servers/LocationServer;
    .restart local v13    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    .restart local v14    # "oneEntry":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .restart local v15    # "oneItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;
    .restart local v16    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;
    .restart local v17    # "realsportlist":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/SportReal;>;"
    .restart local v18    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v19

    invoke-virtual {v14}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v6, v0, v1, v2}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->getRunHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v7

    .line 698
    .local v7, "hearts":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz v7, :cond_2

    .line 699
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 700
    .local v5, "heartRate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v8, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;

    invoke-direct {v8}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;-><init>()V

    .line 701
    .local v8, "hrItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;
    sget-object v20, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;->gt:Ljava/lang/String;

    .line 702
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v8, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;->gv:Ljava/lang/String;

    .line 703
    iget-object v0, v15, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;->heartrates:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 707
    .end local v5    # "heartRate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v8    # "hrItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$HeartRate;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->getRtsportdata()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;->detail:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 710
    .end local v7    # "hearts":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v13    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    .end local v14    # "oneEntry":Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .end local v15    # "oneItem":Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$Detail;
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;->getRtsportdata()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport$RTsportdata;->detail:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_4

    .line 711
    const-string/jumbo v19, "\u65e0\u65b0\u4e13\u9879\u8fd0\u52a8\u6570\u636e"

    invoke-static/range {v19 .. v19}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 712
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v19

    goto/16 :goto_2

    .line 714
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->commitRealSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitRealSport;)Lrx/Observable;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)Lrx/functions/Func1;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v19

    goto/16 :goto_2
.end method

.method public static uploadSportData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 407
    :try_start_0
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 408
    .local v6, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    invoke-virtual {v6, p1}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->getUnSyncSport(Lcom/meizu/smart/wristband/models/database/entity/User;)Ljava/util/List;

    move-result-object v5

    .line 409
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 410
    const-string/jumbo v7, "\u6ca1\u6709\u65b0\u7684\u8fd0\u52a8\u6570\u636e"

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 411
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v7

    .line 467
    .end local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .end local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :goto_0
    return-object v7

    .line 415
    .restart local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .restart local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_0
    new-instance v2, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;-><init>()V

    .line 416
    .local v2, "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->setUsername(Ljava/lang/String;)V

    .line 417
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->setSportdata(Ljava/util/List;)V

    .line 418
    new-instance v3, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;-><init>()V

    .line 419
    .local v3, "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;->getSportdata()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;->setDetail(Ljava/util/List;)V

    .line 422
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/entity/Sport;

    .line 423
    .local v4, "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    new-instance v0, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;-><init>()V

    .line 424
    .local v0, "detail":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;
    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;->getDetail()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStartTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setStartTime(Ljava/lang/String;)V

    .line 427
    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getEndTime()Ljava/util/Date;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getUtcString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setEndTime(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v10, v7

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v10, v11, v7}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceByStep(JI)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setDistance(Ljava/lang/Integer;)V

    .line 430
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v10, v7

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v10, v11, v7}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->setCalorie(Ljava/lang/Float;)V

    .line 431
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getCalorie()Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setCalorie(Ljava/lang/Float;)V

    .line 432
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getDistance()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setDistance(Ljava/lang/Integer;)V

    .line 433
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getMode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setMode(Ljava/lang/Integer;)V

    .line 434
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getAerobics()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    :goto_2
    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setLivenCode(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getStepCount()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setStep(Ljava/lang/Integer;)V

    .line 436
    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/Sport;->getTypeCode()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;->setState(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 463
    .end local v0    # "detail":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;
    .end local v2    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
    .end local v3    # "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;
    .end local v4    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .end local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .end local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/sql/SQLException;
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 467
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v7

    goto/16 :goto_0

    .line 434
    .end local v1    # "e":Ljava/sql/SQLException;
    .restart local v0    # "detail":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;
    .restart local v2    # "param":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;
    .restart local v3    # "record":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Day;
    .restart local v4    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    .restart local v5    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    .restart local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_1
    :try_start_1
    const-string v7, "0"

    goto :goto_2

    .line 440
    .end local v0    # "detail":Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData$Detail;
    .end local v4    # "sport":Lcom/meizu/smart/wristband/models/database/entity/Sport;
    :cond_2
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v7}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v7

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;->lambdaFactory$(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)Lrx/functions/Func1;

    move-result-object v8

    .line 441
    invoke-virtual {v7, v8}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/meizu/smart/wristband/servers/ModelDataManager$10;

    invoke-direct {v8}, Lcom/meizu/smart/wristband/servers/ModelDataManager$10;-><init>()V

    invoke-virtual {v7, v8}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;

    invoke-direct {v8, v6, v5}, Lcom/meizu/smart/wristband/servers/ModelDataManager$9;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V

    .line 448
    invoke-virtual {v7, v8}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v7

    new-instance v8, Lcom/meizu/smart/wristband/servers/ModelDataManager$8;

    invoke-direct {v8}, Lcom/meizu/smart/wristband/servers/ModelDataManager$8;-><init>()V

    .line 457
    invoke-virtual {v7, v8}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_0
.end method
