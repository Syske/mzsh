.class public Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "Callback.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "Callback"

    sput-object v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;)V
    .locals 0
    .param p1, "task"    # Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    .line 26
    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 11
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v10, 0x1

    .line 163
    invoke-super {p0, p1, p2}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 164
    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 165
    .local v5, "value":I
    const-string v6, "%#10x"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "stringValue":Ljava/lang/String;
    const-string v6, "changed"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v3, -0x1

    .line 169
    .local v3, "step":I
    const/4 v0, -0x1

    .line 170
    .local v0, "error":I
    const/4 v2, -0x1

    .line 172
    .local v2, "memDevValue":I
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x10"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 173
    const/4 v3, 0x3

    .line 183
    :goto_0
    if-gez v3, :cond_0

    if-gez v0, :cond_0

    if-ltz v2, :cond_1

    .line 184
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "BluetoothGattUpdate"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v6, "step"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v6, "error"

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v6, "memDevValue"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 192
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 176
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 177
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v6, v6, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v6, v10, :cond_3

    const/4 v3, 0x5

    :goto_1
    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    .line 178
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 179
    :cond_5
    move v2, v5

    goto :goto_0

    .line 181
    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0x"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 64
    const/4 v2, 0x1

    .line 65
    .local v2, "sendUpdate":Z
    const/4 v0, -0x1

    .line 66
    .local v0, "index":I
    const/4 v3, -0x1

    .line 68
    .local v3, "step":I
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    const/4 v0, 0x0

    .line 87
    :goto_0
    if-eqz v2, :cond_0

    .line 88
    sget-object v4, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCharacteristicRead: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "BluetoothGattUpdate"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    if-ltz v0, :cond_6

    .line 92
    const-string v4, "characteristic"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v4, "value"

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    :goto_1
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v4, v4, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 102
    return-void

    .line 70
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const/4 v0, 0x1

    goto :goto_0

    .line 72
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    const/4 v0, 0x3

    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 82
    const/4 v3, 0x5

    goto :goto_0

    .line 84
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 95
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v4, "step"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v4, "value"

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getIntValue(II)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 106
    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCharacteristicWrite: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez p3, :cond_5

    .line 109
    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    const-string v3, "write succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v1, -0x1

    .line 112
    .local v1, "step":I
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const/4 v1, 0x4

    .line 135
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "BluetoothGattUpdate"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v2, "step"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 144
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "step":I
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 145
    return-void

    .line 116
    .restart local v1    # "step":I
    :cond_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v2, v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v1, 0x5

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v2, v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 131
    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next block in chunk "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v4

    iget-object v4, v4, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v4, v4, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->sendBlock()F

    goto/16 :goto_0

    .line 142
    .end local v1    # "step":I
    :cond_5
    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 31
    sget-object v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "le onConnectionStateChange ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 33
    sget-object v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    const-string v2, "le device connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 46
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ConnectionState"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void

    .line 43
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    if-nez p3, :cond_0

    .line 44
    sget-object v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    const-string v2, "le device disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 150
    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    const-string v3, "onDescriptorWrite"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    const/4 v1, 0x2

    .line 153
    .local v1, "step":I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "BluetoothGattUpdate"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string v2, "step"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v2, v2, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "step":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    invoke-virtual {v2, p1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->publishProgess(Landroid/bluetooth/BluetoothGatt;)V

    .line 159
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 54
    sget-object v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->TAG:Ljava/lang/String;

    const-string v2, "onServicesDiscovered"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {p1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->setGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BluetoothGattUpdate"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "step"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/Callback;->task:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    iget-object v1, v1, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
