.class public Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;
.super Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;
.source "SuotaManager.java"


# static fields
.field public static final MEMORY_TYPE_EXTERNAL_I2C:I = 0x12

.field public static final MEMORY_TYPE_EXTERNAL_SPI:I = 0x13

.field static final TAG:Ljava/lang/String; = "SuotaManager"

.field public static final TYPE:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->type:I

    .line 27
    return-void
.end method

.method private processMemDevValue(I)V
    .locals 6
    .param p1, "memDevValue"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    const-string v1, "%#10x"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "SuotaManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMemDevValue() step: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

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

    .line 114
    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 116
    :pswitch_0
    if-ne p1, v5, :cond_0

    .line 117
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "Set SPOTA_MEM_DEV: 0x1"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 118
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->goToStep(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->onError(I)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getSpotaMemDev()I
    .locals 4

    .prologue
    .line 98
    const/4 v1, -0x1

    .line 99
    .local v1, "memTypeBase":I
    iget v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->memoryType:I

    packed-switch v2, :pswitch_data_0

    .line 107
    :goto_0
    shl-int/lit8 v2, v1, 0x18

    iget v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->imageBank:I

    or-int v0, v2, v3

    .line 108
    .local v0, "memType":I
    return v0

    .line 101
    .end local v0    # "memType":I
    :pswitch_0
    const/16 v1, 0x13

    .line 102
    goto :goto_0

    .line 104
    :pswitch_1
    const/16 v1, 0x12

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processStep(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 30
    const-string v5, "step"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 31
    .local v3, "newStep":I
    const-string v5, "error"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 32
    .local v0, "error":I
    const-string v5, "memDevValue"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 33
    .local v2, "memDevValue":I
    if-ltz v0, :cond_1

    .line 34
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->onError(I)V

    .line 41
    :cond_0
    :goto_0
    if-ltz v3, :cond_2

    .line 42
    iput v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

    .line 51
    :goto_1
    const-string v5, "SuotaManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "step "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

    packed-switch v5, :pswitch_data_0

    .line 94
    :goto_2
    return-void

    .line 37
    :cond_1
    if-ltz v2, :cond_0

    .line 38
    invoke-direct {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->processMemDevValue(I)V

    goto :goto_0

    .line 46
    :cond_2
    const-string v5, "characteristic"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 47
    .local v1, "index":I
    const-string v5, "value"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "value":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v5, v1, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setItemValue(ILjava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->readNextCharacteristic()V

    goto :goto_1

    .line 54
    .end local v1    # "index":I
    .end local v4    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->initMainScreen()V

    .line 55
    iput v8, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->step:I

    goto :goto_2

    .line 60
    :pswitch_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->enableNotifications()V

    goto :goto_2

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->setSpotaMemDev()V

    .line 66
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v5, v5, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 70
    :pswitch_3
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->setSpotaGpioMap()V

    goto :goto_2

    .line 74
    :pswitch_4
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->setPatchLength()V

    goto :goto_2

    .line 79
    :pswitch_5
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->lastBlock:Z

    if-nez v5, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->sendBlock()F

    goto :goto_2

    .line 82
    :cond_3
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->preparedForLastBlock:Z

    if-nez v5, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->setPatchLength()V

    goto :goto_2

    .line 84
    :cond_4
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->lastBlockSent:Z

    if-nez v5, :cond_5

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->sendBlock()F

    goto :goto_2

    .line 86
    :cond_5
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->endSignalSent:Z

    if-nez v5, :cond_6

    .line 87
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->sendEndSignal()V

    goto :goto_2

    .line 89
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;->onSuccess()V

    goto :goto_2

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
