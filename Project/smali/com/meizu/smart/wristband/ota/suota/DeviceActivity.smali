.class public Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;
.super Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;
.source "DeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final REQUEST_ENABLE_BT:I = 0x1

.field static final TAG:Ljava/lang/String; = "DeviceActivity"

.field static instance:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;


# instance fields
.field private bluetoothDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field bluetoothGattReceiver:Landroid/content/BroadcastReceiver;

.field public bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

.field connectTask:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

.field connectionStateReceiver:Landroid/content/BroadcastReceiver;

.field dialog:Landroid/app/ProgressDialog;

.field private handler:Landroid/os/Handler;

.field private isScanning:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field memoryType:I

.field public progressBar:Landroid/widget/ProgressBar;

.field public progressTips:Landroid/widget/TextView;

.field progressUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private scannedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private selectPet:Ljava/lang/String;

.field private selectfilepath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->isScanning:Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->selectPet:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$1;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 192
    new-instance v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$6;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->scannedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->selectPet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->stopDeviceScan()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doConnect()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startDeviceScan()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectionStateChanged(I)V

    return-void
.end method

.method private beginToOTA()V
    .locals 4

    .prologue
    .line 332
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressTips:Landroid/widget/TextView;

    const-string v3, "prepare..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->selectfilepath:Ljava/lang/String;

    .line 334
    .local v1, "filename":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setFileName(Ljava/lang/String;)V

    .line 336
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/suota/data/File;->getByFileName(Ljava/lang/String;)Lcom/meizu/smart/wristband/ota/suota/data/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setFile(Lcom/meizu/smart/wristband/ota/suota/data/File;)V

    .line 337
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->initParameterSettings()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startUpdate()V

    .line 343
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B

    .prologue
    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    array-length v4, p0

    if-gtz v4, :cond_1

    .line 541
    :cond_0
    const/4 v4, 0x0

    .line 551
    :goto_0
    return-object v4

    .line 543
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 544
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 545
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 547
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 551
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static checkModel([B)I
    .locals 7
    .param p0, "scanRecord"    # [B

    .prologue
    .line 570
    const-string v0, "09FF"

    .line 571
    .local v0, "checkString":Ljava/lang/String;
    array-length v1, p0

    .line 572
    .local v1, "len":I
    new-instance v3, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 573
    .local v3, "scanHex":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 574
    .local v4, "start":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 575
    add-int/lit8 v5, v4, -0x2

    const/4 v6, 0x2

    invoke-static {v3, v5, v6}, Ldolphin/tools/util/StringUtil;->subString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 579
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private connectionStateChanged(I)V
    .locals 1
    .param p1, "connectionState"    # I

    .prologue
    .line 475
    if-nez p1, :cond_0

    .line 476
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 497
    :cond_0
    return-void
.end method

.method private doConnect()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "conneting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->log(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 163
    new-instance v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$4;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$4;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectTask:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    .line 169
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectTask:Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/ota/suota/async/DeviceConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$5;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 189
    :goto_0
    return-void

    .line 187
    :cond_0
    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doInitParam(Ljava/lang/String;I)V
    .locals 3
    .param p1, "strValue"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 399
    move-object v0, p1

    .line 400
    .local v0, "stringValue":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->gpioStringToInt(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "value":I
    invoke-static {p0, p2, v0}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->setPreviousInput(Landroid/content/Context;ILjava/lang/String;)V

    .line 402
    packed-switch p2, :pswitch_data_0

    .line 429
    :goto_0
    return-void

    .line 405
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setMISO_GPIO(I)V

    goto :goto_0

    .line 408
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setMOSI_GPIO(I)V

    goto :goto_0

    .line 411
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setCS_GPIO(I)V

    goto :goto_0

    .line 414
    :pswitch_3
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setSCK_GPIO(I)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setSCL_GPIO(I)V

    goto :goto_0

    .line 421
    :pswitch_5
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setSDA_GPIO(I)V

    goto :goto_0

    .line 426
    :pswitch_6
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setImageBank(I)V

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getInstance()Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->instance:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    return-object v0
.end method

.method private initMainScreenItems()V
    .locals 8

    .prologue
    .line 346
    const-string v4, "DeviceActivity"

    const-string v5, "initMainScreenItems"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->getGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v3

    .line 348
    .local v3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    .line 349
    .local v2, "service":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v1

    .line 350
    .local v1, "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 351
    .local v0, "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MANUFACTURER_NAME_STRING:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_MODEL_NUMBER_STRING:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 354
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 355
    :cond_3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_FIRMWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 356
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    :cond_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->ORG_BLUETOOTH_CHARACTERISTIC_SOFTWARE_REVISION_STRING:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 358
    iget-object v6, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget-object v6, v6, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->characteristicsQueue:Ljava/util/Queue;

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 359
    :cond_5
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->SPOTA_MEM_INFO_UUID:Ljava/util/UUID;

    invoke-virtual {v6, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 360
    invoke-static {v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothGattSingleton;->setSpotaMemInfoCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 364
    .end local v0    # "characteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    .end local v1    # "characteristics":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattCharacteristic;>;"
    .end local v2    # "service":Landroid/bluetooth/BluetoothGattService;
    :cond_6
    iget-object v4, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->readNextCharacteristic()V

    .line 365
    return-void
.end method

.method private initParameterSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 375
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v1, v1, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v1, v3, :cond_0

    .line 376
    const/16 v1, 0x65

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->getPreviousInput(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 381
    .local v0, "previousMemoryType":I
    :goto_0
    if-lez v0, :cond_1

    .line 382
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setMemoryType(I)V

    .line 389
    :goto_1
    const-string v1, "P0_5"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 390
    const-string v1, "P0_6"

    invoke-direct {p0, v1, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 391
    const-string v1, "P0_3"

    invoke-direct {p0, v1, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 392
    const-string v1, "P0_0"

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 393
    const-string v1, "P0_2"

    const/4 v2, 0x5

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 394
    const-string v1, "P0_3"

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 395
    const-string v1, "1"

    const/4 v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->doInitParam(Ljava/lang/String;I)V

    .line 396
    return-void

    .line 378
    .end local v0    # "previousMemoryType":I
    :cond_0
    const/16 v1, 0x64

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->getPreviousInput(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "previousMemoryType":I
    goto :goto_0

    .line 385
    :cond_1
    invoke-direct {p0, v4}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setMemoryType(I)V

    goto :goto_1
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 99
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->scannedDevices:Ljava/util/HashMap;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 104
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_0

    .line 106
    const-string v1, "DeviceActivity"

    const-string v2, "Bluetooth not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "Error"

    const-string v2, "Bluetooth is not supported on this device"

    invoke-super {p0, v1, v2}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->handler:Landroid/os/Handler;

    .line 114
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "enableBtIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->startDeviceScan()V

    goto :goto_0
.end method

.method private setMemoryType(I)V
    .locals 3
    .param p1, "memoryType"    # I

    .prologue
    const/4 v2, 0x2

    .line 448
    iput p1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->memoryType:I

    .line 449
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->setMemoryType(I)V

    .line 451
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v0, v2, :cond_1

    .line 452
    const/16 v0, 0x65

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->setPreviousInput(Landroid/content/Context;ILjava/lang/String;)V

    .line 457
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 472
    :cond_0
    :goto_1
    :pswitch_0
    return-void

    .line 454
    :cond_1
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->setPreviousInput(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 468
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v0, v0, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startDeviceScan()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 124
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->isScanning:Z

    .line 125
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->scannedDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 127
    const-string v1, "DeviceActivity"

    const-string v2, "Start scanning"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 130
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$2;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$3;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    const-wide/32 v4, 0xc350

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 432
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x1

    .line 435
    .local v0, "fileBlockSize":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    iget v2, v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->type:I

    if-ne v2, v3, :cond_0

    .line 436
    const-string v2, "240"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->getFile()Lcom/meizu/smart/wristband/ota/suota/data/File;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/smart/wristband/ota/suota/data/File;->setFileBlockSize(I)V

    .line 440
    const-string v2, "BluetoothGattUpdate"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v2, "step"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 442
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressTips:Landroid/widget/TextView;

    const-string v3, "upgrading..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    return-void
.end method

.method private stopDeviceScan()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->isScanning:Z

    if-eqz v0, :cond_0

    .line 151
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->isScanning:Z

    .line 152
    const-string v0, "DeviceActivity"

    const-string v1, "Stop scanning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 154
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$10;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$10;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 530
    invoke-super {p0}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->finish()V

    .line 531
    return-void
.end method

.method protected getTargetString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string v4, "09FF"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "checkString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 558
    .local v3, "str1":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 559
    .local v1, "start":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 560
    add-int/lit8 v4, v1, 0x8

    add-int/lit8 v5, v1, 0x14

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    .line 562
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    .line 563
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x9

    .line 564
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 566
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public initMainScreen()V
    .locals 2

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->initMainScreenItems()V

    .line 327
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressTips:Landroid/widget/TextView;

    const-string v1, "begin to upgrading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->beginToOTA()V

    .line 329
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 509
    invoke-static {p1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public logMemInfoValue(I)V
    .locals 8
    .param p1, "memInfoValue"    # I

    .prologue
    .line 500
    const-string v0, "Patch Memory Info:\n"

    .line 501
    .local v0, "message":Ljava/lang/String;
    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v2, v4, 0xff

    .line 502
    .local v2, "numberOfPatches":I
    and-int/lit16 v1, p1, 0xff

    .line 503
    .local v1, "numberOfBytes":I
    int-to-double v4, v1

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 504
    .local v3, "sizeOfPatches":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tNumber of patches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tSize of patches = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " words ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-super {p0}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->onBackPressed()V

    .line 323
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 536
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    sput-object p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->instance:Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    .line 214
    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/bluetooth/SuotaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothManager:Lcom/meizu/smart/wristband/ota/suota/bluetooth/BluetoothManager;

    .line 215
    const v2, 0x7f040031

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setContentView(I)V

    .line 216
    invoke-direct {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->initialize()V

    .line 217
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "device_mac"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "strmac":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filepath"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "filepath":Ljava/lang/String;
    iput-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->selectPet:Ljava/lang/String;

    .line 220
    iput-object v0, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->selectfilepath:Ljava/lang/String;

    .line 223
    invoke-static {p0}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->fileDirectoriesCreated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/ota/suota/data/Statics;->setFileDirectoriesCreated(Landroid/content/Context;)V

    .line 227
    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$7;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$7;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothGattReceiver:Landroid/content/BroadcastReceiver;

    .line 235
    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$8;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$8;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v2, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$9;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity$9;-><init>(Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    .line 253
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothGattReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "BluetoothGattUpdate"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressUpdateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ProgressUpdate"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ConnectionState"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 265
    const v2, 0x7f0e0092

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 266
    const v2, 0x7f0e0213

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressTips:Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 268
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 269
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressTips:Landroid/widget/TextView;

    const-string v3, "connecting..."

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 278
    const-string v1, "DeviceActivity"

    const-string v2, "ondestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->bluetoothGattReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 288
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->progressUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 289
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->connectionStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_1
    invoke-super {p0}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->onDestroy()V

    .line 294
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 291
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 519
    invoke-super {p0}, Lcom/meizu/smart/wristband/ota/suota/SuotaActivity;->onStop()V

    .line 520
    return-void
.end method

.method public setItemValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 368
    if-ltz p1, :cond_0

    .line 369
    const-string v0, "test"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_0
    return-void
.end method

.method public success(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 513
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->setResult(I)V

    .line 514
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;->finish()V

    .line 515
    return-void
.end method
