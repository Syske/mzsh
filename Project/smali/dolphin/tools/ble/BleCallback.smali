.class public Ldolphin/tools/ble/BleCallback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleCallback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field public bleSendBuff:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    .line 18
    iput-object p1, p0, Ldolphin/tools/ble/BleCallback;->a:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "arg1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "paramBluetoothGattCharacteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "paramInt"    # I

    .prologue
    const/4 v3, 0x0

    .line 35
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 37
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 38
    .local v0, "buff":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 39
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 41
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 42
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 44
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v3, p0, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    monitor-enter v3

    .line 47
    :try_start_0
    iget-object v2, p0, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    monitor-exit v3

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "paramBluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "paramInt1"    # I
    .param p3, "paramInt2"    # I

    .prologue
    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 24
    iget-object v1, p0, Ldolphin/tools/ble/BleCallback;->a:Landroid/content/Context;

    invoke-static {v1}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    .line 25
    .local v0, "bb":Ldolphin/tools/ble/BleServer;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 26
    sget-object v1, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    iput-object v1, v0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 29
    :cond_1
    if-nez p3, :cond_0

    .line 30
    sget-object v1, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    iput-object v1, v0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    goto :goto_0
.end method
