.class public Lcom/litesuits/bluetooth/LiteBluetooth;
.super Ljava/lang/Object;
.source "LiteBluetooth.java"


# static fields
.field public static final DEFAULT_CONN_TIME:I = 0x2710

.field public static final DEFAULT_SCAN_TIME:I = 0x4e20

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_SCANNING:I = 0x1

.field public static final STATE_SERVICES_DISCOVERED:I = 0x4

.field public static final STATE_SERVICES_DISCOVERING:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private callbackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothGattCallback;",
            ">;"
        }
    .end annotation
.end field

.field private checkDiscoverRunable:Ljava/lang/Runnable;

.field private connectionState:I

.field private context:Landroid/content/Context;

.field private coreGattCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

.field private handler:Landroid/os/Handler;

.field private isServiceDiscovered:Z

.field private mServiceHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/litesuits/bluetooth/LiteBluetooth;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v2, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->handler:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->mServiceHandler:Landroid/os/Handler;

    .line 320
    iput-boolean v2, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscovered:Z

    .line 342
    new-instance v0, Lcom/litesuits/bluetooth/LiteBluetooth$3;

    invoke-direct {v0, p0}, Lcom/litesuits/bluetooth/LiteBluetooth$3;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->coreGattCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->context:Landroid/content/Context;

    .line 73
    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 74
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/litesuits/bluetooth/LiteBluetooth;)Z
    .locals 1
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscovered:Z

    return v0
.end method

.method static synthetic access$002(Lcom/litesuits/bluetooth/LiteBluetooth;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscovered:Z

    return p1
.end method

.method static synthetic access$100(Lcom/litesuits/bluetooth/LiteBluetooth;)Landroid/bluetooth/BluetoothGatt;
    .locals 1
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method static synthetic access$102(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGatt;
    .locals 0
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object p1
.end method

.method static synthetic access$202(Lcom/litesuits/bluetooth/LiteBluetooth;I)I
    .locals 0
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    return p1
.end method

.method static synthetic access$300(Lcom/litesuits/bluetooth/LiteBluetooth;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/litesuits/bluetooth/LiteBluetooth;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/litesuits/bluetooth/LiteBluetooth;->checkServiceDiscover(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$600(Lcom/litesuits/bluetooth/LiteBluetooth;)V
    .locals 0
    .param p0, "x0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/litesuits/bluetooth/LiteBluetooth;->disableServiceDiscover()V

    return-void
.end method

.method private checkServiceDiscover(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->isServiceDiscovered:Z

    .line 325
    new-instance v0, Lcom/litesuits/bluetooth/LiteBluetooth$2;

    invoke-direct {v0, p0, p1}, Lcom/litesuits/bluetooth/LiteBluetooth$2;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->checkDiscoverRunable:Ljava/lang/Runnable;

    .line 333
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->checkDiscoverRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 334
    return-void
.end method

.method private disableServiceDiscover()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->checkDiscoverRunable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->checkDiscoverRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static isMainThread()Z
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addGattCallback(Lcom/litesuits/bluetooth/LiteBleGattCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public closeBluetoothGatt()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 249
    sget-object v0, Lcom/litesuits/bluetooth/LiteBluetooth;->TAG:Ljava/lang/String;

    const-string v1, "closed BluetoothGatt "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    return-void
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;ZLcom/litesuits/bluetooth/LiteBleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/litesuits/bluetooth/LiteBluetooth;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect device\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 177
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " autoConnect ------> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v0, 0x2

    iput v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    .line 180
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->coreGattCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    invoke-virtual {p1, v0, p2, v1}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disableBluetooth()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 282
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 278
    return-void
.end method

.method public enableBluetooth(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    return-void
.end method

.method public enableBluetoothIfDisabled(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-static {p1, p2}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->enableBluetooth(Landroid/app/Activity;I)V

    .line 257
    :cond_0
    return-void
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    return-object v0
.end method

.method public getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLiteBleGattCallback()Lcom/litesuits/bluetooth/LiteBleGattCallback;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectingOrConnected()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInScanning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceDiscoered()Z
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newBleConnector()Lcom/litesuits/bluetooth/conn/LiteBleConnector;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-direct {v0, p0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;)V

    return-object v0
.end method

.method public removeGattCallback(Landroid/bluetooth/BluetoothGattCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothGattCallback;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->callbackList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public runOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 264
    invoke-static {}, Lcom/litesuits/bluetooth/LiteBluetooth;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public scanAndConnect(Ljava/lang/String;ZLcom/litesuits/bluetooth/LiteBleGattCallback;)Z
    .locals 8
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "autoConnect"    # Z
    .param p3, "callback"    # Lcom/litesuits/bluetooth/LiteBleGattCallback;

    .prologue
    .line 198
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal MAC ! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_1
    new-instance v1, Lcom/litesuits/bluetooth/LiteBluetooth$1;

    const-wide/16 v4, 0x4e20

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/litesuits/bluetooth/LiteBluetooth$1;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth;Ljava/lang/String;JLcom/litesuits/bluetooth/LiteBleGattCallback;Z)V

    invoke-virtual {p0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->startLeScan(Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;)V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public startLeScan(Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/litesuits/bluetooth/LiteBluetooth;->startLeScan(Lcom/litesuits/bluetooth/scan/PeriodScanCallback;)Z

    .line 143
    return-void
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 124
    .local v0, "suc":Z
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x1

    iput v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    .line 127
    :cond_0
    return v0
.end method

.method public startLeScan(Lcom/litesuits/bluetooth/scan/PeriodScanCallback;)Z
    .locals 2
    .param p1, "callback"    # Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    .prologue
    .line 131
    invoke-virtual {p1, p0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->setLiteBluetooth(Lcom/litesuits/bluetooth/LiteBluetooth;)Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    move-result-object v1

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->notifyScanStarted()V

    .line 132
    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 133
    .local v0, "suc":Z
    if-eqz v0, :cond_0

    .line 134
    const/4 v1, 0x1

    iput v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    .line 138
    :goto_0
    return v0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->removeHandlerMsg()V

    goto :goto_0
.end method

.method public stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 2
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 146
    instance-of v0, p1, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->removeHandlerMsg()V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 150
    iget v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth;->connectionState:I

    .line 153
    :cond_1
    return-void
.end method
