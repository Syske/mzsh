.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->writeDate(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

.field final synthetic val$buffer:[B

.field final synthetic val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->val$buffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 225
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->newBleConnector()Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    move-result-object v0

    .line 229
    .local v0, "connector":Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;Lrx/Subscriber;)V

    .line 244
    .local v1, "writeCallback":Lcom/litesuits/bluetooth/conn/BleCharactCallback;
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->serverUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->charWriteUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->withUUIDString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .line 246
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->val$buffer:[B

    invoke-virtual {v0, v2, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->writeCharacteristic([BLcom/litesuits/bluetooth/conn/BleCharactCallback;)Z

    .line 248
    :cond_0
    return-void
.end method
