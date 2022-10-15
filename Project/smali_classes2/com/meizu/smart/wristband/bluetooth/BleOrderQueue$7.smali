.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleOrderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;-><init>(Landroid/content/Context;Lcom/litesuits/bluetooth/LiteBluetooth;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v2, 0x0

    .line 282
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 283
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 284
    .local v0, "bytes":[B
    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "strTemp":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCharacteristicChanged : hex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ldolphin/tools/util/StringUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    invoke-static {v2, v1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$100(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$200(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;)Z

    .line 299
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$300()Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    .line 291
    :try_start_0
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v4, v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->charReadUUID:Ljava/util/UUID;

    invoke-virtual {v2, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    sput-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 293
    sget-object v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v2, v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onReadData([B)V

    .line 297
    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 295
    :cond_1
    :try_start_1
    const-string v2, "onCharacteristicChanged : error !"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 303
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 304
    if-nez p3, :cond_1

    .line 305
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$300()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    if-eqz v0, :cond_0

    .line 307
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$300()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    .line 308
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->currentCmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Bluetooth Disconnected"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onFailed(Ljava/lang/Throwable;)V

    .line 310
    :cond_0
    monitor-exit v1

    .line 312
    :cond_1
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
