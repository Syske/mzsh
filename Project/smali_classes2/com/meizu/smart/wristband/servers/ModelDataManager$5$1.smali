.class Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager$5;->call(Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

.field final synthetic val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$5;Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 267
    :try_start_0
    const-string v7, "\u5f00\u59cb\u4fdd\u5b58\u8bbe\u7f6e..."

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 268
    new-instance v3, Lcom/meizu/smart/wristband/models/database/servers/SetServer;

    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

    iget-object v7, v7, Lcom/meizu/smart/wristband/servers/ModelDataManager$5;->val$context:Landroid/content/Context;

    invoke-direct {v3, v7}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;-><init>(Landroid/content/Context;)V

    .line 271
    .local v3, "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getAim()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 272
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getAim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHeartateMonitor(Ljava/lang/String;Z)V

    .line 276
    :cond_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getAlarm()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 277
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getAlarm()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "strAlarm":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download strAlarm1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 279
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    .line 280
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "arrAlarm":[Ljava/lang/String;
    const-string v5, ""

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v0

    if-ge v2, v7, :cond_2

    .line 283
    if-nez v2, :cond_1

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 290
    .end local v0    # "arrAlarm":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download formatStrAlarm = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 291
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->this$0:Lcom/meizu/smart/wristband/servers/ModelDataManager$5;

    iget-object v7, v7, Lcom/meizu/smart/wristband/servers/ModelDataManager$5;->val$context:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v5, v8}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveAlarmString(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 295
    .end local v5    # "strAlarm":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getCaller()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 296
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getCaller()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeCaller(Ljava/lang/String;Z)V

    .line 300
    :cond_4
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSms()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 301
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSms()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSms(Ljava/lang/String;Z)V

    .line 305
    :cond_5
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getWearHabit()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 306
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getWearHabit()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHandup(Ljava/lang/String;Z)V

    .line 310
    :cond_6
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSmartReminder()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 311
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSmartReminder()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "split":[Ljava/lang/String;
    const-string v6, ""

    .line 313
    .local v6, "strSmart":Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    .line 314
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-0-0-0-0-0-0-0-0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSmart(Ljava/lang/String;Z)V

    .line 317
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download smart = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 322
    .end local v4    # "split":[Ljava/lang/String;
    .end local v6    # "strSmart":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getFindphone()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 323
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getFindphone()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeFindphone(Ljava/lang/String;Z)V

    .line 327
    :cond_9
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSedentary()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 328
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSedentary()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSedentary(Ljava/lang/String;Z)V

    .line 332
    :cond_a
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSedentary()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 333
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getSedentary()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeSedentary(Ljava/lang/String;Z)V

    .line 337
    :cond_b
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getHeartRateMonitor()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 338
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getHeartRateMonitor()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeHeartateMonitor(Ljava/lang/String;Z)V

    .line 342
    :cond_c
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getMotor()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 343
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getMotor()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeVibrate(Ljava/lang/String;Z)V

    .line 347
    :cond_d
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getDateDisplay()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 348
    iget-object v7, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->val$entity:Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/newwork/request/CommitSetting;->getDateDisplay()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/meizu/smart/wristband/models/database/servers/SetServer;->storeTimeDispay(Ljava/lang/String;Z)V

    .line 352
    :cond_e
    const-string v7, "\u4fdd\u5b58\u8bbe\u7f6e\u7ed3\u675f..."

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 353
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 358
    .end local v3    # "server":Lcom/meizu/smart/wristband/models/database/servers/SetServer;
    :goto_2
    return-object v7

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$5$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
