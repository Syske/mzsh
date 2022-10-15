.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;
.super Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;
.source "BleOrderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->sendDescriptorValue(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

.field final synthetic val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 189
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "write ble data error !"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onFailed(Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattDescriptor;)V
    .locals 2
    .param p1, "bluetoothGattDescriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->getBluetoothGattCallback()Landroid/bluetooth/BluetoothGattCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 183
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onWriteData()V

    .line 184
    return-void
.end method
