.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;
.super Lcom/litesuits/bluetooth/conn/BleCharactCallback;
.source "BleOrderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/conn/BleCharactCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 240
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "write ble data error !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 2
    .param p1, "bluetoothGattCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 233
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 235
    return-void
.end method
