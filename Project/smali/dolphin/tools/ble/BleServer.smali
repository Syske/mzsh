.class public Ldolphin/tools/ble/BleServer;
.super Ljava/lang/Object;
.source "BleServer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I = null

.field public static final DEFAULT_SCAN_PERIOD:J = 0x1388L

.field private static i:Ldolphin/tools/ble/BleServer;


# instance fields
.field private a:Landroid/bluetooth/BluetoothManager;

.field private b:Landroid/bluetooth/BluetoothAdapter;

.field public btDevice:Ldolphin/tools/ble/BtDevice;

.field private c:Landroid/content/Context;

.field private d:Ldolphin/tools/ble/BleCallback;

.field private e:Landroid/os/Handler;

.field private f:Z

.field private g:I

.field private h:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field public mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

.field public mConnectionState:Ldolphin/tools/ble/BleConnectState;


# direct methods
.method static synthetic $SWITCH_TABLE$dolphin$tools$ble$InstructionType()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Ldolphin/tools/ble/BleServer;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ldolphin/tools/ble/InstructionType;->values()[Ldolphin/tools/ble/InstructionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicNotify:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicRead:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Ldolphin/tools/ble/InstructionType;->characteristicWrite:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Ldolphin/tools/ble/InstructionType;->descriptorRead:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Ldolphin/tools/ble/InstructionType;->descriptorWrite:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Ldolphin/tools/ble/InstructionType;->readRemoteRssi:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Ldolphin/tools/ble/BleServer;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ldolphin/tools/ble/BleServer;->g:I

    .line 30
    new-instance v0, Ldolphin/tools/ble/BleServer$1;

    invoke-direct {v0, p0}, Ldolphin/tools/ble/BleServer$1;-><init>(Ldolphin/tools/ble/BleServer;)V

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->h:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 51
    iput-object p1, p0, Ldolphin/tools/ble/BleServer;->c:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->e:Landroid/os/Handler;

    .line 53
    new-instance v0, Ldolphin/tools/ble/BtDevice;

    invoke-direct {v0}, Ldolphin/tools/ble/BtDevice;-><init>()V

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    .line 54
    return-void
.end method

.method static synthetic access$0(Ldolphin/tools/ble/BleServer;Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Ldolphin/tools/ble/BleServer;->f:Z

    return-void
.end method

.method static synthetic access$1(Ldolphin/tools/ble/BleServer;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Ldolphin/tools/ble/BleServer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Ldolphin/tools/ble/BleServer;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$4(Ldolphin/tools/ble/BleServer;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->h:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 295
    const-class v1, Ldolphin/tools/ble/BleServer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldolphin/tools/ble/BleServer;->i:Ldolphin/tools/ble/BleServer;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ldolphin/tools/ble/BleServer;

    invoke-direct {v0, p0}, Ldolphin/tools/ble/BleServer;-><init>(Landroid/content/Context;)V

    sput-object v0, Ldolphin/tools/ble/BleServer;->i:Ldolphin/tools/ble/BleServer;

    .line 298
    :cond_0
    sget-object v0, Ldolphin/tools/ble/BleServer;->i:Ldolphin/tools/ble/BleServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    .line 196
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 197
    const-string v0, "BluetoothGatt not initialized"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 156
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 157
    :cond_0
    const-string v1, "BluetoothAdapter not initialized or unspecified address."

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V

    move v1, v2

    .line 182
    :goto_0
    return v1

    .line 160
    :cond_1
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v3, v3, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 161
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v3, v3, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_3

    .line 163
    const-string v3, "Trying to use an existing mBluetoothGatt for connection."

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 165
    sget-object v2, Ldolphin/tools/ble/BleConnectState;->CONNECTING:Ldolphin/tools/ble/BleConnectState;

    iput-object v2, p0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    goto :goto_0

    .line 168
    :cond_2
    const-string v1, "Reconnect fail."

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V

    move v1, v2

    .line 169
    goto :goto_0

    .line 172
    :cond_3
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, "localBluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    if-nez v0, :cond_4

    .line 173
    const-string v1, "Device not found.  Unable to connect."

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V

    move v1, v2

    .line 174
    goto :goto_0

    .line 177
    :cond_4
    iget-object v3, p0, Ldolphin/tools/ble/BleServer;->c:Landroid/content/Context;

    .line 178
    iget-object v4, p0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    .line 177
    invoke-virtual {v0, v3, v2, v4}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    iput-object v2, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 179
    const-string v2, "Trying to create a new connection."

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iput-object p1, v2, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    .line 181
    sget-object v2, Ldolphin/tools/ble/BleConnectState;->CONNECTING:Ldolphin/tools/ble/BleConnectState;

    iput-object v2, p0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Ldolphin/tools/ble/BleConnectState;->DISCONNECTED:Ldolphin/tools/ble/BleConnectState;

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    .line 187
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 188
    :cond_0
    const-string v0, "BluetoothAdapter or BluetoothGatt not initialized"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_0
.end method

.method public getBleCallback()Ldolphin/tools/ble/BleCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    return-object v0
.end method

.method public getSupportedGattServices()Ljava/util/List;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getmBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method public initialize()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->a:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->c:Landroid/content/Context;

    const-string v2, "bluetooth"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->a:Landroid/bluetooth/BluetoothManager;

    .line 71
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->a:Landroid/bluetooth/BluetoothManager;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "Unable to initialize BluetoothManager."

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    move v0, v1

    .line 83
    :goto_0
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->a:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    .line 78
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 79
    const-string v0, "Unable to obtain a BluetoothAdapter."

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    move v0, v1

    .line 80
    goto :goto_0

    .line 83
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Ldolphin/tools/ble/BleServer;->f:Z

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Ldolphin/tools/ble/BleServer;->i:Ldolphin/tools/ble/BleServer;

    .line 58
    return-void
.end method

.method public scanAndConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iput-object p1, v0, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iput-object p2, v0, Ldolphin/tools/ble/BtDevice;->name:Ljava/lang/String;

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldolphin/tools/ble/BleServer;->scanLeDevice(Z)Z

    move-result v0

    return v0
.end method

.method public scanLeDevice(Z)Z
    .locals 2
    .param p1, "paramBoolean"    # Z

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->h:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, p1, v1, v1, v0}, Ldolphin/tools/ble/BleServer;->scanLeDevice(ZLjava/lang/Long;Ldolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public scanLeDevice(ZLjava/lang/Long;Ldolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 5
    .param p1, "paramBoolean"    # Z
    .param p2, "paramLong"    # Ljava/lang/Long;
    .param p3, "paramPreScanCallback"    # Ldolphin/tools/ble/PreScanCallback;
    .param p4, "paramLeScanCallback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    .line 124
    invoke-virtual {p0, p1, p3, p4}, Ldolphin/tools/ble/BleServer;->scanLeDeviceForever(ZLdolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    .line 126
    .local v0, "b":Z
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Ldolphin/tools/ble/BleServer;->e:Landroid/os/Handler;

    new-instance v4, Ldolphin/tools/ble/BleServer$2;

    invoke-direct {v4, p0}, Ldolphin/tools/ble/BleServer$2;-><init>(Ldolphin/tools/ble/BleServer;)V

    .line 133
    if-nez p2, :cond_1

    const-wide/16 v2, 0x1388

    .line 127
    :goto_0
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    :cond_0
    return v0

    .line 133
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public scanLeDeviceForever(ZLdolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 6
    .param p1, "paramBoolean"    # Z
    .param p2, "paramPreScanCallback"    # Ldolphin/tools/ble/PreScanCallback;
    .param p3, "paramLeScanCallback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    if-eqz p1, :cond_4

    .line 90
    iget-boolean v4, p0, Ldolphin/tools/ble/BleServer;->f:Z

    if-nez v4, :cond_1

    .line 91
    iput-boolean v3, p0, Ldolphin/tools/ble/BleServer;->f:Z

    .line 92
    iget-object v4, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p3}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-interface {p2}, Ldolphin/tools/ble/PreScanCallback;->callback()V

    .line 96
    :cond_0
    iput v2, p0, Ldolphin/tools/ble/BleServer;->g:I

    :cond_1
    :goto_0
    move v2, v3

    .line 118
    :cond_2
    return v2

    .line 99
    :cond_3
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_1
    iget v4, p0, Ldolphin/tools/ble/BleServer;->g:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ldolphin/tools/ble/BleServer;->g:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_2

    .line 109
    invoke-virtual {p0, p1, p2, p3}, Ldolphin/tools/ble/BleServer;->scanLeDeviceForever(ZLdolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 102
    .local v1, "localInterruptedException2":Ljava/lang/InterruptedException;
    move-object v0, v1

    .line 103
    .local v0, "localInterruptedException1":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 104
    iput v2, p0, Ldolphin/tools/ble/BleServer;->g:I

    goto :goto_1

    .line 114
    .end local v0    # "localInterruptedException1":Ljava/lang/InterruptedException;
    .end local v1    # "localInterruptedException2":Ljava/lang/InterruptedException;
    :cond_4
    iput-boolean v2, p0, Ldolphin/tools/ble/BleServer;->f:Z

    .line 115
    iget-object v4, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, p3}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 116
    iput v2, p0, Ldolphin/tools/ble/BleServer;->g:I

    goto :goto_0
.end method

.method public scanUntilConnect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iput-object p1, v0, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iput-object p2, v0, Ldolphin/tools/ble/BtDevice;->name:Ljava/lang/String;

    .line 152
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Ldolphin/tools/ble/BleServer;->h:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {p0, v0, v1, v2}, Ldolphin/tools/ble/BleServer;->scanLeDeviceForever(ZLdolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized sendCharacteristic(Ldolphin/tools/ble/Instruction;)V
    .locals 16
    .param p1, "paramInstruction"    # Ldolphin/tools/ble/Instruction;

    .prologue
    const/16 v10, 0x14

    .line 205
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v11, :cond_2

    .line 206
    :cond_0
    const-string v10, "BluetoothAdapter not initialized"

    invoke-static {v10}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 210
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    move-object/from16 v0, p1

    iget-object v12, v0, Ldolphin/tools/ble/Instruction;->gattService:Landroid/bluetooth/BluetoothGattService;

    .line 211
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 210
    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v11, v0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 215
    move-object/from16 v0, p1

    iget-object v12, v0, Ldolphin/tools/ble/Instruction;->gattService:Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 214
    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v11

    .line 216
    move-object/from16 v0, p1

    iget-object v12, v0, Ldolphin/tools/ble/Instruction;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v12}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v12

    .line 215
    invoke-virtual {v11, v12}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v7

    .line 219
    .local v7, "localObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    move-object/from16 v0, p1

    iget-object v11, v0, Ldolphin/tools/ble/Instruction;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 220
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    .local v2, "arrayOfByte1":[B
    array-length v11, v2

    .line 219
    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x14

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 220
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .line 218
    add-double/2addr v12, v14

    double-to-int v4, v12

    .line 222
    .local v4, "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "add buff count="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 223
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v6, "localArrayList":Ljava/util/ArrayList;
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    if-lt v5, v4, :cond_3

    .line 235
    move-object/from16 v0, p0

    iget-object v10, v0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    iget-object v10, v10, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v10, v0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    iget-object v10, v10, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 241
    :goto_2
    move-object v0, v7

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    move-object v10, v0

    .line 242
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    invoke-virtual {v10, v11}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 243
    invoke-static {}, Ldolphin/tools/ble/BleServer;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType()[I

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Ldolphin/tools/ble/Instruction;->type:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v11}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 245
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 246
    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .end local v7    # "localObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v10, v7}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 205
    .end local v2    # "arrayOfByte1":[B
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "localArrayList":Ljava/util/ArrayList;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 225
    .restart local v2    # "arrayOfByte1":[B
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "localArrayList":Ljava/util/ArrayList;
    .restart local v7    # "localObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_3
    mul-int/lit8 v8, v5, 0x14

    .line 227
    .local v8, "m":I
    :try_start_2
    array-length v11, v2

    sub-int/2addr v11, v8

    if-ge v11, v10, :cond_4

    array-length v11, v2

    .line 228
    sub-int v9, v11, v8

    .line 227
    .local v9, "n":I
    :goto_3
    new-array v3, v9, [B

    .line 231
    .local v3, "arrayOfByte2":[B
    const/4 v11, 0x0

    invoke-static {v2, v8, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v3    # "arrayOfByte2":[B
    .end local v9    # "n":I
    :cond_4
    move v9, v10

    .line 229
    goto :goto_3

    .line 238
    .end local v8    # "m":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    iget-object v10, v10, Ldolphin/tools/ble/BleCallback;->bleSendBuff:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 249
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 250
    check-cast v7, Landroid/bluetooth/BluetoothGattCharacteristic;

    .end local v7    # "localObject":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v10, v7}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized sendDescriptor(Ldolphin/tools/ble/Instruction;)V
    .locals 2
    .param p1, "paramInstruction"    # Ldolphin/tools/ble/Instruction;

    .prologue
    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    invoke-static {}, Ldolphin/tools/ble/BleServer;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType()[I

    move-result-object v0

    iget-object v1, p1, Ldolphin/tools/ble/Instruction;->type:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v1}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 272
    :pswitch_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p1, Ldolphin/tools/ble/Instruction;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 275
    :pswitch_1
    :try_start_2
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v1, p1, Ldolphin/tools/ble/Instruction;->descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBleCallback(Ldolphin/tools/ble/BleCallback;)V
    .locals 0
    .param p1, "paramBleCallback"    # Ldolphin/tools/ble/BleCallback;

    .prologue
    .line 65
    iput-object p1, p0, Ldolphin/tools/ble/BleServer;->d:Ldolphin/tools/ble/BleCallback;

    .line 66
    return-void
.end method

.method public declared-synchronized setCharacteristicNotification(Ldolphin/tools/ble/Instruction;)V
    .locals 3
    .param p1, "paramInstruction"    # Ldolphin/tools/ble/Instruction;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->b:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    if-nez v0, :cond_1

    .line 257
    :cond_0
    const-string v0, "BluetoothAdapter not initialized"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->w(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :goto_0
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    :try_start_1
    iget-object v0, p0, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    .line 261
    iget-object v1, p1, Ldolphin/tools/ble/Instruction;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 262
    iget-boolean v2, p1, Ldolphin/tools/ble/Instruction;->notificationToggle:Z

    .line 260
    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
