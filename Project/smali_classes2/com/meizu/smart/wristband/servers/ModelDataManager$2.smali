.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$2;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveSyncData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$blocks:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressSubject:Lrx/subjects/BehaviorSubject;

.field final synthetic val$user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/meizu/smart/wristband/models/database/entity/User;Lrx/subjects/BehaviorSubject;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$blocks:Ljava/util/List;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p4, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 88
    :try_start_0
    const-string v7, "save saveSportData begin"

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 89
    const/4 v5, 0x0

    .line 90
    .local v5, "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    new-instance v6, Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;-><init>(Landroid/content/Context;)V

    .line 91
    .local v6, "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;

    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;-><init>(Landroid/content/Context;)V

    .line 92
    .local v2, "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$blocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 93
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$blocks:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .line 94
    .local v0, "data":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    iget-object v7, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v7, v7, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    sget-object v8, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sport:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 95
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v6, v7, v0}, Lcom/meizu/smart/wristband/models/database/servers/SportServer;->saveSportData(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Z

    .line 96
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    int-to-double v8, v3

    mul-double/2addr v8, v12

    iget-object v10, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$blocks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 92
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    iget-object v7, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v7, v7, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    sget-object v8, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_heartrete:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 98
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v2, v7, v0}, Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;->saveHeartRate(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Z

    .line 99
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    int-to-double v8, v3

    mul-double/2addr v8, v12

    iget-object v10, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$blocks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 119
    .end local v0    # "data":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .end local v2    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v3    # "i":I
    .end local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    .end local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/sql/SQLException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save saveSportData "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V

    .line 125
    .end local v1    # "e":Ljava/sql/SQLException;
    :goto_2
    return-void

    .line 100
    .restart local v0    # "data":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .restart local v2    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v3    # "i":I
    .restart local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    .restart local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_2
    :try_start_1
    iget-object v7, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v7, v7, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->type:I

    sget-object v8, Lcom/meizu/smart/wristband/constant/OtherContant;->datatype_sleep_autosleep:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 101
    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .restart local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    :cond_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 122
    .end local v0    # "data":Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .end local v2    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .end local v3    # "i":I
    .end local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    .end local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "heartRateServer":Lcom/meizu/smart/wristband/models/database/servers/HeartRateServer;
    .restart local v3    # "i":I
    .restart local v5    # "sleeps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    .restart local v6    # "sportServer":Lcom/meizu/smart/wristband/models/database/servers/SportServer;
    :cond_4
    if-eqz v5, :cond_5

    .line 107
    :try_start_2
    new-instance v4, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;

    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$context:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;-><init>(Landroid/content/Context;)V

    .line 109
    .local v4, "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v4, v7, v5}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->saveAutoSleepStateMonitorData(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/ArrayList;)Z

    .line 110
    const-string v7, "AnalyseSleepDataByLocal start "

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$context:Landroid/content/Context;

    iget-object v8, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-static {v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SleepServer;->AnalyseSleepDataByLocal(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Z

    .line 112
    const-string v7, "AnalyseSleepDataByLocal end "

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 115
    .end local v4    # "sleepServer":Lcom/meizu/smart/wristband/models/database/servers/SleepServer;
    :cond_5
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 116
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$2;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    invoke-virtual {v7}, Lrx/subjects/BehaviorSubject;->onCompleted()V

    .line 118
    const-string v7, "save saveSportData ok"

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
