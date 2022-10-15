.class public abstract Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;
.super Ljava/lang/Object;
.source "BluetoothManager.java"


# static fields
.field public static final END_SIGNAL:I = -0x2000000

.field public static final REBOOT_SIGNAL:I = -0x3000000

.field static final TAG:Ljava/lang/String; = "BluetoothManager"


# instance fields
.field CS_GPIO:I

.field I2CDeviceAddress:I

.field MISO_GPIO:I

.field MOSI_GPIO:I

.field SCK_GPIO:I

.field SCL_GPIO:I

.field SDA_GPIO:I

.field activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

.field blockCounter:I

.field public characteristicsQueue:Ljava/util/Queue;

.field chunkCounter:I

.field context:Landroid/content/Context;

.field device:Landroid/bluetooth/BluetoothDevice;

.field endSignalSent:Z

.field errors:Ljava/util/HashMap;

.field file:Lcom/meizu/smart/wristband/ota/suota/data/File;

.field fileName:Ljava/lang/String;

.field finished:Z

.field hasError:Z

.field imageBank:I

.field lastBlock:Z

.field lastBlockSent:Z

.field memoryType:I

.field patchBaseAddress:I

.field preparedForLastBlock:Z

.field rebootsignalSent:Z

.field protected step:I

.field public type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlock:Z

    .line 63
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlockSent:Z

    .line 64
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->preparedForLastBlock:Z

    .line 65
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->endSignalSent:Z

    .line 66
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->rebootsignalSent:Z

    .line 67
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->finished:Z

    .line 68
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->hasError:Z

    .line 71
    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    .line 77
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->context:Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->initErrorMap()V

    .line 79
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->sendProgressUpdate(I)V

    return-void
.end method

.method private getMemParamsI2C()I
    .locals 2

    .prologue
    .line 228
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->I2CDeviceAddress:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SCL_GPIO:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SDA_GPIO:I

    or-int/2addr v0, v1

    return v0
.end method

.method private getMemParamsSPI()I
    .locals 2

    .prologue
    .line 217
    iget v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->MISO_GPIO:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->MOSI_GPIO:I

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->CS_GPIO:I

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SCK_GPIO:I

    or-int/2addr v0, v1

    return v0
.end method

.method private getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "uuid"    # Ljava/util/UUID;

    .prologue
    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattService;

    .line 477
    .local v0, "mService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    move-object v1, v0

    goto :goto_0

    .line 481
    .end local v0    # "mService":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return-object v1
.end method

.method private initErrorMap()V
    .locals 3

    .prologue
    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    .line 448
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Forced exit of SPOTA service. See Table 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Patch Data CRC mismatch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Received patch Length not equal to PATCH_LEN characteristic value."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Memory Error. Writing to external device failed."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Memory Error. Not enough internal memory space for patch."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid memory device."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Application error."

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image bank"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image header"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid image size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Invalid product header"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Same Image Error"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, " Failed to read from external memory device"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    return-void
.end method

.method private sendProgressUpdate(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    iget-object v0, v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 371
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    .line 375
    :try_start_0
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 376
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 377
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "Disconnect from device"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/suota/data/File;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    :cond_0
    :goto_1
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "Error disconnecting from device"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public enableNotifications()V
    .locals 10

    .prologue
    .line 158
    const-string v5, "BluetoothManager"

    const-string v6, "- enableNotifications"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v6, "- Enable notifications for SPOTA_SERV_STATUS characteristic"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v4

    .line 162
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 163
    .local v3, "service":Landroid/bluetooth/BluetoothGattService;
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  Found service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 166
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Found characteristic: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v7

    sget-object v8, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERV_STATUS_UUID:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 168
    iget-object v7, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v8, "*** Found SUOTA service"

    invoke-virtual {v7, v8}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v0, v8}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    .line 170
    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_DESCRIPTOR_UUID:Ljava/util/UUID;

    invoke-virtual {v0, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v2

    .line 172
    .local v2, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    sget-object v7, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    invoke-virtual {v2, v7}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 173
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_0

    .line 177
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v2    # "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    .end local v3    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_2
    return-void
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->device:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getError()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->hasError:Z

    return v0
.end method

.method public getFile()Lcom/meizu/smart/wristband/ota/suota/data/File;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getSpotaMemDev()I
.end method

.method protected goToStep(I)V
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 468
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "step"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 469
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->processStep(Landroid/content/Intent;)V

    .line 470
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->finished:Z

    return v0
.end method

.method public onError(I)V
    .locals 5
    .param p1, "errorCode"    # I

    .prologue
    .line 409
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->hasError:Z

    if-nez v2, :cond_0

    .line 410
    const/16 v2, 0xf

    if-ne p1, v2, :cond_1

    .line 411
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->finish()V

    .line 412
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->disconnect()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->errors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 417
    .local v1, "error":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 418
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "An error occurred."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 420
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    const v2, 0x1040013

    new-instance v3, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$3;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$3;-><init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$4;-><init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 437
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 439
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->disconnect()V

    .line 440
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->hasError:Z

    goto :goto_0
.end method

.method protected onSuccess()V
    .locals 2

    .prologue
    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->finished:Z

    .line 404
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->sendRebootSignal()V

    .line 405
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->success(I)V

    .line 406
    return-void
.end method

.method public abstract processStep(Landroid/content/Intent;)V
.end method

.method public readNextCharacteristic()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 363
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 364
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 365
    const-string v1, "BluetoothManager"

    const-string v2, "readNextCharacteristic"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_0
    return-void
.end method

.method public sendBlock()F
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 275
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    iget-object v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getNumberOfBlocks()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float v7, v10, v11

    .line 276
    .local v7, "progress":F
    iget-boolean v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlockSent:Z

    if-nez v10, :cond_2

    .line 278
    iget-object v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v11, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;

    invoke-direct {v11, p0, v7}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$1;-><init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;F)V

    invoke-virtual {v10, v11}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    const-string v10, "BluetoothManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending block "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v12}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getNumberOfBlocks()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    iget v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    invoke-virtual {v10, v11}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getBlock(I)[[B

    move-result-object v0

    .line 289
    .local v0, "block":[[B
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    add-int/lit8 v4, v10, 0x1

    iput v4, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    .line 290
    .local v4, "i":I
    const/4 v5, 0x0

    .line 291
    .local v5, "lastChunk":Z
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_0

    .line 292
    const/4 v10, -0x1

    iput v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->chunkCounter:I

    .line 293
    const/4 v5, 0x1

    .line 295
    :cond_0
    aget-object v2, v0, v4

    .line 297
    .local v2, "chunk":[B
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    iget-object v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getChunksPerBlockCount()I

    move-result v11

    mul-int/2addr v10, v11

    add-int/2addr v10, v4

    add-int/lit8 v3, v10, 0x1

    .line 298
    .local v3, "chunkNumber":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending chunk "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getTotalChunkCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (with "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bytes)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    .local v6, "message":Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v11, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;

    invoke-direct {v11, p0, v6}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager$2;-><init>(Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sending block "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", chunk "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", blocksize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", chunksize "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 308
    .local v9, "systemLogMessage":Ljava/lang/String;
    const-string v10, "BluetoothManager"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v10

    sget-object v11, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-direct {p0, v10, v11}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v10

    sget-object v11, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_DATA_UUID:Ljava/util/UUID;

    .line 311
    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 312
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 313
    invoke-virtual {v1, v13}, Landroid/bluetooth/BluetoothGattCharacteristic;->setWriteType(I)V

    .line 314
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v8

    .line 315
    .local v8, "r":Z
    const-string v10, "BluetoothManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "writeCharacteristic: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    if-eqz v5, :cond_2

    .line 321
    iget-boolean v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlock:Z

    if-nez v10, :cond_3

    .line 322
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    .line 326
    :goto_0
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->blockCounter:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v11}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getNumberOfBlocks()I

    move-result v11

    if-ne v10, v11, :cond_1

    .line 327
    iput-boolean v13, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlock:Z

    .line 331
    :cond_1
    iget v10, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 332
    iput-boolean v13, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlockSent:Z

    .line 336
    .end local v0    # "block":[[B
    .end local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "chunk":[B
    .end local v3    # "chunkNumber":I
    .end local v4    # "i":I
    .end local v5    # "lastChunk":Z
    .end local v6    # "message":Ljava/lang/String;
    .end local v8    # "r":Z
    .end local v9    # "systemLogMessage":Ljava/lang/String;
    :cond_2
    return v7

    .line 324
    .restart local v0    # "block":[[B
    .restart local v1    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .restart local v2    # "chunk":[B
    .restart local v3    # "chunkNumber":I
    .restart local v4    # "i":I
    .restart local v5    # "lastChunk":Z
    .restart local v6    # "message":Ljava/lang/String;
    .restart local v8    # "r":Z
    .restart local v9    # "systemLogMessage":Ljava/lang/String;
    :cond_3
    iput-boolean v13, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlockSent:Z

    goto :goto_0
.end method

.method public sendEndSignal()V
    .locals 4

    .prologue
    .line 340
    const-string v1, "BluetoothManager"

    const-string v2, "sendEndSignal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "send SUOTA END command"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 344
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 345
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/high16 v1, -0x2000000

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 346
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->endSignalSent:Z

    .line 348
    return-void
.end method

.method public sendRebootSignal()V
    .locals 4

    .prologue
    .line 351
    const-string v1, "BluetoothManager"

    const-string v2, "sendRebootSignal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v2, "send SUOTA REBOOT command"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    sget-object v2, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 355
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 356
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/high16 v1, -0x3000000

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 357
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 358
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->rebootsignalSent:Z

    .line 359
    return-void
.end method

.method public setCS_GPIO(I)V
    .locals 0
    .param p1, "CS_GPIO"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->CS_GPIO:I

    .line 139
    return-void
.end method

.method public setDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->device:Landroid/bluetooth/BluetoothDevice;

    .line 115
    return-void
.end method

.method public setFile(Lcom/meizu/smart/wristband/ota/suota/data/File;)V
    .locals 2
    .param p1, "file"    # Lcom/meizu/smart/wristband/ota/suota/data/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    iget v1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/data/File;->setType(I)V

    .line 99
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->fileName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setI2CDeviceAddress(I)V
    .locals 0
    .param p1, "I2CDeviceAddress"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->I2CDeviceAddress:I

    .line 155
    return-void
.end method

.method public setImageBank(I)V
    .locals 0
    .param p1, "imageBank"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->imageBank:I

    .line 127
    return-void
.end method

.method public setMISO_GPIO(I)V
    .locals 0
    .param p1, "MISO_GPIO"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->MISO_GPIO:I

    .line 131
    return-void
.end method

.method public setMOSI_GPIO(I)V
    .locals 0
    .param p1, "MOSI_GPIO"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->MOSI_GPIO:I

    .line 135
    return-void
.end method

.method public setMemoryType(I)V
    .locals 0
    .param p1, "memoryType"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->memoryType:I

    .line 119
    return-void
.end method

.method public setPatchBaseAddress(I)V
    .locals 0
    .param p1, "patchBaseAddress"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->patchBaseAddress:I

    .line 123
    return-void
.end method

.method public setPatchLength()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 259
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getFileBlockSize()I

    move-result v0

    .line 261
    .local v0, "blocksize":I
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->lastBlock:Z

    if-eqz v2, :cond_0

    .line 262
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getNumberOfBytes()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->file:Lcom/meizu/smart/wristband/ota/suota/data/File;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getFileBlockSize()I

    move-result v3

    rem-int v0, v2, v3

    .line 263
    iput-boolean v5, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->preparedForLastBlock:Z

    .line 265
    :cond_0
    const-string v2, "BluetoothManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPatchLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%#4x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set SPOTA_PATCH_LENGTH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 267
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_PATCH_LEN_UUID:Ljava/util/UUID;

    .line 268
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 269
    .local v1, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/16 v2, 0x12

    invoke-virtual {v1, v0, v2, v7}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 270
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 271
    return-void
.end method

.method public setSCK_GPIO(I)V
    .locals 0
    .param p1, "SCK_GPIO"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SCK_GPIO:I

    .line 143
    return-void
.end method

.method public setSCL_GPIO(I)V
    .locals 0
    .param p1, "SCL_GPIO"    # I

    .prologue
    .line 146
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SCL_GPIO:I

    .line 147
    return-void
.end method

.method public setSDA_GPIO(I)V
    .locals 0
    .param p1, "SDA_GPIO"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->SDA_GPIO:I

    .line 151
    return-void
.end method

.method public setSpotaGpioMap()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 233
    const/4 v1, 0x0

    .line 234
    .local v1, "memInfoData":I
    const/4 v2, 0x0

    .line 235
    .local v2, "valid":Z
    iget v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->memoryType:I

    packed-switch v3, :pswitch_data_0

    .line 245
    :goto_0
    if-eqz v2, :cond_0

    .line 246
    const-string v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSpotaGpioMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#10x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set SPOTA_GPIO_MAP: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#10x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    sget-object v4, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    sget-object v4, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_GPIO_MAP_UUID:Ljava/util/UUID;

    .line 249
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 250
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    const/16 v3, 0x14

    invoke-virtual {v0, v1, v3, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 251
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 256
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    :goto_1
    return-void

    .line 237
    :pswitch_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getMemParamsSPI()I

    move-result v1

    .line 238
    const/4 v2, 0x1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getMemParamsI2C()I

    move-result v1

    .line 242
    const/4 v2, 0x1

    goto :goto_0

    .line 253
    :cond_0
    const-string v3, "BluetoothManager"

    const-string v4, "Memory type not set."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v4, "Set SPOTA_GPIO_MAP: Memory type not set."

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setSpotaMemDev()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 192
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    sget-object v4, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_SERVICE_UUID:Ljava/util/UUID;

    invoke-direct {p0, v3, v4}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getService(Landroid/bluetooth/BluetoothGatt;Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v1

    .line 193
    .local v1, "mService":Landroid/bluetooth/BluetoothGattService;
    if-eqz v1, :cond_0

    .line 194
    sget-object v3, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_DEV_UUID:Ljava/util/UUID;

    .line 195
    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 196
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getSpotaMemDev()I

    move-result v2

    .line 197
    .local v2, "memType":I
    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3, v8}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue(III)Z

    .line 198
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 199
    const-string v3, "BluetoothManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSpotaMemDev: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#10x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set SPOTA_MEM_DEV: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%#10x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 205
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v2    # "memType":I
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->activity:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    const-string v4, "can not get service in setSpotaMemDev()"

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
