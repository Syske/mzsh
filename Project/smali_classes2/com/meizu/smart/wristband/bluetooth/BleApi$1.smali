.class final Lcom/meizu/smart/wristband/bluetooth/BleApi$1;
.super Ljava/lang/Object;
.source "BleApi.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[BI)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleApi$1;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and clear cmd queue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->getCurrent()Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onFailed(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method
