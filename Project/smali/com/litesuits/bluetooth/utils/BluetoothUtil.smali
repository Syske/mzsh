.class public Lcom/litesuits/bluetooth/utils/BluetoothUtil;
.super Ljava/lang/Object;
.source "BluetoothUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeBluetoothGatt(Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 62
    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 64
    invoke-static {p0}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z

    .line 65
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 67
    :cond_0
    return-void
.end method

.method public static enableBluetooth(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 24
    return-void
.end method

.method public static getCharacteristic(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 2
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "serviceUUID"    # Ljava/lang/String;
    .param p2, "charactUUID"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 84
    .local v0, "service":Landroid/bluetooth/BluetoothGattService;
    if-eqz v0, :cond_0

    .line 85
    invoke-static {p2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCharacteristic(Landroid/bluetooth/BluetoothGattService;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 1
    .param p0, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p1, "charactUUID"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getService(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)Landroid/bluetooth/BluetoothGattService;
    .locals 1
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p1, "serviceUUID"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    return-object v0
.end method

.method public static printServices(Landroid/bluetooth/BluetoothGatt;)V
    .locals 9
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 27
    if-eqz p0, :cond_2

    .line 28
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 29
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    const-string v4, "BluetoothUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/litesuits/bluetooth/log/BleLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 31
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const-string v5, "BluetoothUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  characteristic: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/litesuits/bluetooth/log/BleLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 33
    .local v1, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    const-string v6, "BluetoothUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        descriptor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/litesuits/bluetooth/log/BleLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 38
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_2
    return-void
.end method

.method public static refreshDeviceCache(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 7
    .param p0, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v4, 0x0

    .line 49
    :try_start_0
    const-class v3, Landroid/bluetooth/BluetoothGatt;

    const-string v5, "refresh"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 50
    .local v1, "refresh":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 51
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 52
    .local v2, "success":Z
    const-string v3, "BluetoothUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Refreshing result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "refresh":Ljava/lang/reflect/Method;
    .end local v2    # "success":Z
    :goto_0
    return v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothUtil"

    const-string v5, "An exception occured while refreshing device"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move v2, v4

    .line 58
    goto :goto_0
.end method
