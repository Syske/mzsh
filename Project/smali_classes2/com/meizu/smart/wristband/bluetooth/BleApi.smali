.class public Lcom/meizu/smart/wristband/bluetooth/BleApi;
.super Ljava/lang/Object;
.source "BleApi.java"


# static fields
.field static s_auto_cmdid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/meizu/smart/wristband/bluetooth/BleApi;->s_auto_cmdid:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendDescriptorUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;
    .locals 7
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "descriptorUuid"    # Ljava/util/UUID;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 92
    const v6, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 87
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    sget-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->default_timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;
    .locals 7
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "timout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 78
    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;
    .locals 7
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v3, 0x0

    sget-object v0, Lcom/meizu/smart/wristband/constant/OtherContant;->default_timeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;
    .locals 7
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "buffer"    # [B
    .param p5, "timout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[BI)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;
    .locals 8
    .param p0, "serverUuid"    # Ljava/util/UUID;
    .param p1, "characteristicUuid"    # Ljava/util/UUID;
    .param p2, "characteristicUuidRead"    # Ljava/util/UUID;
    .param p3, "descriptorUUID"    # Ljava/util/UUID;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "buffer"    # [B
    .param p6, "timeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "[BI)",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Device is offline"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;

    move-object v1, p4

    move-object v2, p5

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;-><init>(Ljava/lang/String;[BLjava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;I)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    int-to-long v2, p6

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 63
    invoke-static {v4}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleApi$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/bluetooth/BleApi$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 69
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
