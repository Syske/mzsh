.class public Lcom/meizu/smart/wristband/bluetooth/BleManager;
.super Ljava/lang/Object;
.source "BleManager.java"


# static fields
.field private static _instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

.field private static _instanceLocker:Ljava/lang/Object;


# instance fields
.field context:Landroid/content/Context;

.field private mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field reconnectMode:Z

.field private service_Bind:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instanceLocker:Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    .line 55
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->reconnectMode:Z

    .line 83
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->service_Bind:Z

    .line 99
    new-instance v2, Lcom/meizu/smart/wristband/bluetooth/BleManager$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleManager;)V

    iput-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 85
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->context:Landroid/content/Context;

    .line 86
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, "bindIntent":Landroid/content/Intent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "service_Bind = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->service_Bind:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 88
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->service_Bind:Z

    if-eqz v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 93
    .local v0, "bResult":Ljava/lang/Boolean;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService bResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 94
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->service_Bind:Z

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/bluetooth/BleManager;Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/meizu/smart/wristband/bluetooth/BleService;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/bluetooth/BleManager;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    return-object p1
.end method

.method public static instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    if-nez v0, :cond_1

    .line 61
    sget-object v1, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instanceLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    sget-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public OTAdisconnect()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->OTAdisconnect()Z

    move-result v0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkUUID(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "uuidServer"    # Ljava/util/UUID;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->checkUUID(Ljava/util/UUID;)Z

    move-result v0

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectObservable(J)Lrx/Observable;
    .locals 1
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
    .line 221
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;

    move-result-object v0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectToMac(JLjava/lang/String;Z)Lrx/Observable;
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
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToMac(JLjava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;
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
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connnectToBestDevice(J[Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 210
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/bluetooth/BleService;->connnectToBestDevice(J[Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public diableAutoConnet()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->diableAutoConnet()Z

    move-result v0

    .line 196
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public diableOtaConnet()Z
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->diableOtaConnet()Z

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnectConnection()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->disconnectConnection()Z

    move-result v0

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnectObservable(J)Lrx/Observable;
    .locals 1
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
    .line 216
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->disconnectObservable(J)Lrx/Observable;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 265
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService;->enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->getBluetoothGatt()Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->getConnectDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->isConnected()Z

    move-result v0

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->isConnecting()Z

    move-result v0

    .line 174
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 271
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->readRssi(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->_instance:Lcom/meizu/smart/wristband/bluetooth/BleManager;

    .line 72
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->disconnectConnection()Z

    .line 73
    const-string v0, "service release"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    :cond_0
    return-void
.end method

.method public scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;
    .locals 7
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
    .line 258
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 259
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanForSupportDevice(J[Ljava/lang/String;[Ljava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanNewDivice(JZ)Lrx/Observable;
    .locals 1
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
    .line 253
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanNewDivice(JZ)Lrx/Observable;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoConnect(ZLjava/lang/String;)Z
    .locals 3
    .param p1, "auto"    # Z
    .param p2, "bond_mac"    # Ljava/lang/String;

    .prologue
    .line 239
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

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->setAutoConnect(ZLjava/lang/String;)V

    .line 242
    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReconnectMode(Z)V
    .locals 1
    .param p1, "reconnectMode"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->setReconnectMode(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public stopScan()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleManager;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->stopScan()V

    .line 250
    :cond_0
    return-void
.end method
