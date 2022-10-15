.class public Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;
.super Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;
.source "SpotaManager.java"


# static fields
.field public static final MEMORY_TYPE_EXTERNAL_I2C:I = 0x2

.field public static final MEMORY_TYPE_EXTERNAL_SPI:I = 0x3

.field public static final MEMORY_TYPE_RETENTION_RAM:I = 0x1

.field public static final MEMORY_TYPE_SYSTEM_RAM:I = 0x0

.field public static final TYPE:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->type:I

    .line 28
    return-void
.end method

.method private processMemDevValue(I)V
    .locals 7
    .param p1, "memDevValue"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 170
    const-string v1, "%#10x"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "BluetoothManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMemDevValue() step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    sparse-switch v1, :sswitch_data_0

    .line 192
    :goto_0
    return-void

    .line 174
    :sswitch_0
    if-ne p1, v5, :cond_0

    .line 175
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "Set SPOTA_MEM_DEV: 0x1"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->onError(I)V

    goto :goto_0

    .line 183
    :sswitch_1
    if-eq p1, v6, :cond_1

    .line 184
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "Set SPOTA_MEM_DEV: 0x03"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->onError(I)V

    goto :goto_0

    .line 188
    :cond_1
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto :goto_0

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private readMemInfo()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "BluetoothManager"

    const-string v1, "readMemInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getSpotaMemInfoCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getSpotaMemInfoCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const-string v0, "BluetoothManager"

    const-string v1, "spotaMemInfoCharacteristic not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected getSpotaMemDev()I
    .locals 6

    .prologue
    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "memTypeBase":I
    const/4 v0, 0x0

    .line 131
    .local v0, "customPatchBaseAddress":Z
    iget v4, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->memoryType:I

    packed-switch v4, :pswitch_data_0

    .line 145
    :goto_0
    if-eqz v0, :cond_0

    iget v4, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->patchBaseAddress:I

    const v5, 0xffffff

    and-int v3, v4, v5

    .line 146
    .local v3, "patchBaseAddress":I
    :goto_1
    shl-int/lit8 v4, v2, 0x18

    or-int v1, v4, v3

    .line 147
    .local v1, "memType":I
    return v1

    .line 133
    .end local v1    # "memType":I
    .end local v3    # "patchBaseAddress":I
    :pswitch_0
    const/4 v2, 0x1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_1
    const/4 v2, 0x3

    .line 137
    const/4 v0, 0x1

    .line 138
    goto :goto_0

    .line 140
    :pswitch_2
    const/4 v2, 0x2

    .line 141
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processStep(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 32
    const-string v7, "step"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 33
    .local v4, "newStep":I
    const-string v7, "error"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "error":I
    const-string v7, "memDevValue"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 35
    .local v2, "memDevValue":I
    if-ltz v0, :cond_1

    .line 36
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->onError(I)V

    .line 54
    :goto_0
    const-string v7, "BluetoothManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "step "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    packed-switch v7, :pswitch_data_0

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 39
    :cond_1
    if-ltz v2, :cond_2

    .line 40
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->processMemDevValue(I)V

    goto :goto_0

    .line 44
    :cond_2
    if-ltz v4, :cond_3

    .line 45
    iput v4, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    goto :goto_0

    .line 49
    :cond_3
    const-string v7, "characteristic"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    .local v1, "index":I
    const-string v7, "value"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v7, v1, v6}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setItemValue(ILjava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->readNextCharacteristic()V

    goto :goto_0

    .line 57
    .end local v1    # "index":I
    .end local v6    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->initMainScreen()V

    .line 58
    iput v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->step:I

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->enableNotifications()V

    goto :goto_1

    .line 66
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->setSpotaMemDev()V

    .line 67
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v7, v7, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 73
    :pswitch_3
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto :goto_1

    .line 77
    :pswitch_4
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->readMemInfo()V

    goto :goto_1

    .line 81
    :pswitch_5
    const-string v7, "value"

    invoke-virtual {p1, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 82
    .local v3, "memInfoValue":I
    const-string v7, "%#10x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "stringValue":Ljava/lang/String;
    const-string v7, "BluetoothManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mem info: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->lastBlockSent:Z

    if-nez v7, :cond_4

    if-nez v3, :cond_4

    .line 86
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto :goto_1

    .line 89
    :cond_4
    iget-boolean v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->lastBlockSent:Z

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v7, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->logMemInfoValue(I)V

    .line 91
    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto/16 :goto_1

    .line 98
    .end local v3    # "memInfoValue":I
    .end local v5    # "stringValue":Ljava/lang/String;
    :pswitch_6
    iget-boolean v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->lastBlockSent:Z

    if-nez v7, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->setPatchLength()V

    goto/16 :goto_1

    .line 102
    :cond_5
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->goToStep(I)V

    goto/16 :goto_1

    .line 107
    :pswitch_7
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->sendBlock()F

    goto/16 :goto_1

    .line 110
    :pswitch_8
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->readMemInfo()V

    goto/16 :goto_1

    .line 114
    :pswitch_9
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->sendEndSignal()V

    goto/16 :goto_1

    .line 118
    :pswitch_a
    iget-boolean v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->finished:Z

    if-nez v7, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->onSuccess()V

    .line 120
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->disconnect()V

    goto/16 :goto_1

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public sendEndSignal()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 163
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 164
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/high16 v1, -0x1000000

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 165
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 166
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SpotaManager;->endSignalSent:Z

    .line 167
    return-void
.end method
