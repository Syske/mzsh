.class public Ldolphin/tools/ble/BleUtil;
.super Ljava/lang/Object;
.source "BleUtil.java"


# static fields
.field private static synthetic $SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I = null

.field public static final REQUEST_ENABLE_BT:I = 0x1


# direct methods
.method static synthetic $SWITCH_TABLE$dolphin$tools$ble$InstructionType()[I
    .locals 3

    .prologue
    .line 12
    sget-object v0, Ldolphin/tools/ble/BleUtil;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I

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
    sput-object v0, Ldolphin/tools/ble/BleUtil;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBleEnable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 63
    const-string v1, "android.hardware.bluetooth_le"

    .line 62
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized close(Landroid/content/Context;)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v1, Ldolphin/tools/ble/BleUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit v1

    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized connect(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v3, Ldolphin/tools/ble/BleUtil;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    .line 17
    .local v0, "bb":Ldolphin/tools/ble/BleServer;
    const/4 v1, 0x0

    .line 18
    .local v1, "bool":Z
    sget-object v2, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    iget-object v4, v0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    if-ne v2, v4, :cond_0

    .line 19
    const-string v2, "already initialize Bluetooth"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const/4 v1, 0x1

    .line 27
    :goto_0
    monitor-exit v3

    return v1

    .line 21
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->initialize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Ldolphin/tools/ble/BleServer;->connect(Ljava/lang/String;)Z

    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-string v2, "Unable to initialize Bluetooth"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 16
    .end local v0    # "bb":Ldolphin/tools/ble/BleServer;
    .end local v1    # "bool":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized disconnect(Landroid/content/Context;)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 53
    const-class v1, Ldolphin/tools/ble/BleUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v1

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized executeInstruction(Landroid/content/Context;Ldolphin/tools/ble/Instruction;)V
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramInstruction"    # Ldolphin/tools/ble/Instruction;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 91
    const-class v3, Ldolphin/tools/ble/BleUtil;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v1

    .line 92
    .local v1, "localBleServer":Ldolphin/tools/ble/BleServer;
    const/4 v0, 0x1

    .line 93
    .local v0, "bool":Z
    sget-object v2, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    iget-object v4, v1, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    if-eq v2, v4, :cond_0

    .line 94
    iget-object v2, v1, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v2, v2, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    invoke-static {v2}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, v1, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v2, v2, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    invoke-static {p0, v2}, Ldolphin/tools/ble/BleUtil;->connect(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 97
    :cond_0
    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Ldolphin/tools/ble/BleUtil;->$SWITCH_TABLE$dolphin$tools$ble$InstructionType()[I

    move-result-object v2

    iget-object v4, p1, Ldolphin/tools/ble/Instruction;->type:Ldolphin/tools/ble/InstructionType;

    invoke-virtual {v4}, Ldolphin/tools/ble/InstructionType;->ordinal()I

    move-result v4

    aget v2, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 119
    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    .line 101
    :pswitch_0
    :try_start_1
    const-string v2, "characteristic"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v1, p1}, Ldolphin/tools/ble/BleServer;->sendCharacteristic(Ldolphin/tools/ble/Instruction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    .end local v0    # "bool":Z
    .end local v1    # "localBleServer":Ldolphin/tools/ble/BleServer;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 106
    .restart local v0    # "bool":Z
    .restart local v1    # "localBleServer":Ldolphin/tools/ble/BleServer;
    :pswitch_1
    :try_start_2
    const-string v2, "descriptor"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, p1}, Ldolphin/tools/ble/BleServer;->sendDescriptor(Ldolphin/tools/ble/Instruction;)V

    goto :goto_0

    .line 110
    :pswitch_2
    const-string v2, "characteristicNotify"

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v1, p1}, Ldolphin/tools/ble/BleServer;->setCharacteristicNotification(Ldolphin/tools/ble/Instruction;)V

    goto :goto_0

    .line 116
    :pswitch_3
    iget-object v2, v1, Ldolphin/tools/ble/BleServer;->mBluetoothGatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGatt;->readRemoteRssi()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static openBle(Landroid/content/Context;)V
    .locals 1
    .param p0, "paramContext"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 68
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->initialize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->getmBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->getmBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 72
    :cond_0
    return-void
.end method

.method public static requestTurnOnBt(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "enableBtIntent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    return-void
.end method

.method public static declared-synchronized scanAndConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v2, Ldolphin/tools/ble/BleUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    .line 33
    .local v0, "bb":Ldolphin/tools/ble/BleServer;
    sget-object v1, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    iget-object v3, v0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    if-ne v1, v3, :cond_1

    .line 34
    const-string v1, "already initialize Bluetooth"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 37
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->initialize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0, p1, p2}, Ldolphin/tools/ble/BleServer;->scanAndConnect(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 32
    .end local v0    # "bb":Ldolphin/tools/ble/BleServer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized scanUntilConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v2, Ldolphin/tools/ble/BleUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    .line 44
    .local v0, "bb":Ldolphin/tools/ble/BleServer;
    sget-object v1, Ldolphin/tools/ble/BleConnectState;->CONNECTED:Ldolphin/tools/ble/BleConnectState;

    iget-object v3, v0, Ldolphin/tools/ble/BleServer;->mConnectionState:Ldolphin/tools/ble/BleConnectState;

    if-ne v1, v3, :cond_1

    .line 45
    const-string v1, "already initialize Bluetooth"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->initialize()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0, p1, p2}, Ldolphin/tools/ble/BleServer;->scanUntilConnect(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    .end local v0    # "bb":Ldolphin/tools/ble/BleServer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static turnOnBtDirect(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 76
    invoke-static {p0}, Ldolphin/tools/ble/BleServer;->getInstance(Landroid/content/Context;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    .line 78
    .local v0, "b":Ldolphin/tools/ble/BleServer;
    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->initialize()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->getmBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {v0}, Ldolphin/tools/ble/BleServer;->getmBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 81
    :cond_0
    return-void
.end method
