.class public Lcom/meizu/smart/wristband/bluetooth/BleService;
.super Landroid/app/Service;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;
    }
.end annotation


# instance fields
.field private AutoConnectAddress:Ljava/lang/String;

.field private AutoConnectState:Z

.field private final TAG:Ljava/lang/String;

.field connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

.field private context:Landroid/content/Context;

.field handler:Landroid/os/Handler;

.field private is_OTA_Disconnct:Z

.field private liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

.field private final mBinder:Landroid/os/IBinder;

.field private orderQueue:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

.field private reconnectMode:Z

.field scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$LocalBinder;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->mBinder:Landroid/os/IBinder;

    .line 59
    const-class v0, Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->handler:Landroid/os/Handler;

    .line 145
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectState:Z

    .line 146
    iput-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectAddress:Ljava/lang/String;

    .line 298
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->is_OTA_Disconnct:Z

    .line 733
    iput-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    return-void
.end method

.method private ResetReminder()V
    .locals 3

    .prologue
    .line 430
    const-string v0, "0-0-0-0-0-0-0-0-0"

    .line 439
    .local v0, "end_smartString":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    sget-object v2, Lcom/meizu/smart/wristband/models/database/entity/Other$Type;->smart:Lcom/meizu/smart/wristband/models/database/entity/Other$Type;

    invoke-static {v1, v2, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setOtherInfo(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/Other$Type;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->is_OTA_Disconnct:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectState:Z

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->autoConnectStart()V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/bluetooth/BleService;JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;
    .param p1, "x1"    # J
    .param p3, "x2"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToDevice(JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->ResetReminder()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/bluetooth/BleService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/bluetooth/BleService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/bluetooth/BleService;JLjava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService;->lambda$connectToDevice$0(JLjava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private autoConnectStart()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "broadcast_notify_connect_state"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->broadCastConnectionState(Ljava/lang/String;I)V

    .line 189
    const-string/jumbo v0, "\u81ea\u52a8\u91cd\u8fde\u63a5\u5e7f\u64ad\u53d1\u51fa"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method private broadCastConnectionState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "newstate"    # I

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "broadcast_notify_connect_state_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method

.method private connectToDevice(JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z

    .line 738
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;

    invoke-direct {v0, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$24;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/bluetooth/BleService;J)Lrx/functions/Func1;

    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToDevice$0(JLjava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p3, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 775
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public OTAdisconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 302
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isInScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 304
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 306
    :cond_0
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->is_OTA_Disconnct:Z

    .line 307
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    new-instance v1, Lcom/litesuits/bluetooth/exception/OtherException;

    const-string v2, "disconnect by user"

    invoke-direct {v1, v2}, Lcom/litesuits/bluetooth/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    .line 313
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->clearBleCmd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 322
    :goto_1
    return v3

    .line 320
    :catch_0
    move-exception v0

    goto :goto_1

    .line 314
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public checkUUID(Ljava/util/UUID;)Z
    .locals 5
    .param p1, "uuidServer"    # Ljava/util/UUID;

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "getService":Z
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 220
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    .line 221
    .local v1, "mService":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v0, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "mService":Landroid/bluetooth/BluetoothGattService;
    :cond_1
    return v0
.end method

.method public connectObservable(J)Lrx/Observable;
    .locals 5
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$7;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3

    .line 420
    invoke-virtual {v0, v2, v3}, Lrx/Observable;->retry(J)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    const v4, 0x7f0800e7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$6;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public connectToMac(JLjava/lang/String;Z)Lrx/Observable;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to connect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getBluetoothGatt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 451
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToMac liteBluetooth.getConnectionState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 454
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v2

    .line 510
    :goto_0
    return-object v2

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v2

    goto :goto_0

    .line 461
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->closeBluetoothGatt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 475
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to connect device 2...... :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0, p1, p2, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanNewDivice(JZ)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleService$12;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$12;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 477
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleService$11;

    invoke-direct {v3, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$11;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 491
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleService$10;

    invoke-direct {v3, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$10;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleService$9;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$9;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 504
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/bluetooth/BleService$8;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$8;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 510
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    goto :goto_0

    .line 467
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectToMac e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin to connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "getBluetoothGatt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 581
    :goto_0
    return-object v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 536
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 537
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 547
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService;->noScanNewDivice(JLjava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$17;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$17;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 548
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$16;

    invoke-direct {v1, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$16;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 561
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$15;

    invoke-direct {v1, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$15;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$14;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$14;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 573
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$13;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$13;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 581
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public connnectToBestDevice(J[Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "scantime"    # J
    .param p3, "filterNames"    # [Ljava/lang/String;
    .param p4, "existMacs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$4;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$3;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 358
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public diableAutoConnet()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->is_OTA_Disconnct:Z

    .line 327
    return v0
.end method

.method public diableOtaConnet()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->is_OTA_Disconnct:Z

    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public disconnectConnection()Z
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isInScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 270
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isConnectingOrConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    new-instance v1, Lcom/litesuits/bluetooth/exception/OtherException;

    const-string v2, "disconnect by user"

    invoke-direct {v1, v2}, Lcom/litesuits/bluetooth/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    .line 280
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState1 =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->closeBluetoothGatt()V

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState2 =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getConnectionState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 291
    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->clearBleCmd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->setAutoConnect(ZLjava/lang/String;)V

    .line 295
    const/4 v0, 0x1

    return v0

    .line 292
    :catch_0
    move-exception v0

    goto :goto_1

    .line 285
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public disconnectObservable(J)Lrx/Observable;
    .locals 4
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$5;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x1388

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 382
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public enableBlueTooth(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    const/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->enableBluetoothIfDisabled(Landroid/app/Activity;I)V

    .line 237
    return-void
.end method

.method public enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "serverUuid"    # Ljava/lang/String;
    .param p2, "characteristicUuidRead"    # Ljava/lang/String;
    .param p3, "descriptorUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$25;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 795
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    goto :goto_0
.end method

.method public getConnectDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscoered()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isConnecting()Z

    move-result v0

    return v0
.end method

.method noScanNewDivice(JLjava/lang/String;Z)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;

    invoke-direct {v0, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$18;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->TAG:Ljava/lang/String;

    const-string v1, "============> TestService.onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 79
    iput-object p0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    .line 81
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-direct {v0, v1, v2}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;-><init>(Landroid/content/Context;Lcom/litesuits/bluetooth/LiteBluetooth;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->orderQueue:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .line 82
    const-string v0, "liteBluetooth.addGattCallback 1111 "

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$2;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->addGattCallback(Lcom/litesuits/bluetooth/LiteBleGattCallback;)Z

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 140
    const-string v0, "BleService onDestroy"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 141
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 142
    return-void
.end method

.method public readRssi(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 799
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$26;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$26;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "filterNames"    # [Ljava/lang/String;
    .param p4, "existMacs"    # [Ljava/lang/String;
    .param p5, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Z)",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual {p0, p1, p2, p5}, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanNewDivice(JZ)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$23;

    invoke-direct {v1, p0, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService$23;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$22;

    invoke-direct {v1, p0, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService$22;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;[Ljava/lang/String;)V

    .line 694
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$21;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$21;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 707
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$20;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$20;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 723
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method scanNewDivice(JZ)Lrx/Observable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$19;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;J)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "can not find divice"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 664
    invoke-static {v4}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setAutoConnect(ZLjava/lang/String;)V
    .locals 3
    .param p1, "auto"    # Z
    .param p2, "bond_mac"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string/jumbo v0, "wxf_auto_connect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BleManager   setAutoConnect productname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectState:Z

    .line 157
    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->AutoConnectAddress:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setReconnectMode(Z)V
    .locals 2
    .param p1, "reconnectMode"    # Z

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReconnectMode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 232
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->reconnectMode:Z

    .line 233
    return-void
.end method

.method public stopScan()V
    .locals 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 593
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 595
    :cond_0
    return-void
.end method
