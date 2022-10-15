.class Lcom/litesuits/bluetooth/LiteBluetooth$3;
.super Lcom/litesuits/bluetooth/LiteBleGattCallback;
.source "LiteBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/litesuits/bluetooth/LiteBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/LiteBluetooth;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V
    .locals 0
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/LiteBleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 425
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 426
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 428
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 411
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 412
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0

    .line 414
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 418
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 419
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_0

    .line 421
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 3
    .param p1, "exception"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 346
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$100(Lcom/litesuits/bluetooth/LiteBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$100(Lcom/litesuits/bluetooth/LiteBluetooth;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I

    .line 348
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$102(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 349
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 350
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    instance-of v2, v0, Lcom/litesuits/bluetooth/LiteBleGattCallback;

    if-eqz v2, :cond_1

    .line 351
    check-cast v0, Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0

    .line 354
    :cond_2
    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1, p1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$102(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;

    .line 360
    const-string v1, "callback "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " callbackList size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 362
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    instance-of v2, v0, Lcom/litesuits/bluetooth/LiteBleGattCallback;

    if-eqz v2, :cond_0

    .line 363
    check-cast v0, Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0

    .line 366
    :cond_1
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v6, 0x0

    .line 370
    sget-boolean v1, Lcom/litesuits/bluetooth/log/BleLog;->isPrint:Z

    if-eqz v1, :cond_0

    .line 371
    invoke-static {}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnectionStateChange  status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,newState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  ,thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 372
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1, p1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$500(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)V

    .line 376
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 387
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_1

    .line 377
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_1
    if-nez p3, :cond_2

    .line 378
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1, v6}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I

    .line 379
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 380
    new-instance v1, Lcom/litesuits/bluetooth/exception/ConnectException;

    invoke-direct {v1, p1, p2}, Lcom/litesuits/bluetooth/exception/ConnectException;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {p0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth$3;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1, v6}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I

    .line 383
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 384
    new-instance v1, Lcom/litesuits/bluetooth/exception/ConnectException;

    invoke-direct {v1, p1, p2}, Lcom/litesuits/bluetooth/exception/ConnectException;-><init>(Landroid/bluetooth/BluetoothGatt;I)V

    invoke-virtual {p0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth$3;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0

    .line 389
    :cond_3
    return-void
.end method

.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 433
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 435
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 439
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 440
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    goto :goto_0

    .line 442
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 453
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 454
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    goto :goto_0

    .line 456
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 446
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 447
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onReliableWriteCompleted(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0

    .line 449
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 394
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$600(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    .line 395
    if-nez p2, :cond_0

    .line 397
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/litesuits/bluetooth/LiteBluetooth$3;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    .line 399
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$002(Lcom/litesuits/bluetooth/LiteBluetooth;Z)Z

    .line 400
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I

    .line 401
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$3;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCallback;

    .line 402
    .local v0, "call":Landroid/bluetooth/BluetoothGattCallback;
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V

    goto :goto_0

    .line 405
    .end local v0    # "call":Landroid/bluetooth/BluetoothGattCallback;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 407
    :cond_1
    return-void
.end method
