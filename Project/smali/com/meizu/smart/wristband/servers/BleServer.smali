.class public abstract Lcom/meizu/smart/wristband/servers/BleServer;
.super Ljava/lang/Object;
.source "BleServer.java"


# static fields
.field static instance:Lcom/meizu/smart/wristband/servers/BleServer;


# instance fields
.field context:Landroid/content/Context;

.field protected otaOrLogout:Z

.field protected preparedOK:Z

.field protected productmac:Ljava/lang/String;

.field protected productname:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productname"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

    .line 31
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->otaOrLogout:Z

    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServer;->productname:Ljava/lang/String;

    .line 36
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

    .line 37
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/servers/BleServer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMac$193(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/servers/BleServer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMac$194(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$lambda$2(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMac$195(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/servers/BleServer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMacWithoutScan$196(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/servers/BleServer;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMacWithoutScan$197(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$lambda$5(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->lambda$connectToMacWithoutScan$198(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    sget-object v1, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    if-nez v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 42
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/servers/BleServer;

    .line 49
    .end local v0    # "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    :cond_0
    sget-object v1, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    return-object v1
.end method

.method public static getBleInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/meizu/smart/wristband/servers/BleServer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "productor"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    .line 62
    :goto_0
    sget-object v0, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    goto :goto_0
.end method

.method private synthetic lambda$connectToMac$193(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->productname:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$connectToMac$194(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 122
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->productmac:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$connectToMac$195(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$196(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->productname:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$connectToMacWithoutScan$197(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->productmac:Ljava/lang/String;

    return-void
.end method

.method private static synthetic lambda$connectToMacWithoutScan$198(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static releaseInstance()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServer;->instance:Lcom/meizu/smart/wristband/servers/BleServer;

    .line 69
    return-void
.end method


# virtual methods
.method public OTAdisconnect()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->OTAdisconnect()Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

    .line 96
    return-void
.end method

.method public beginToRun()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindToCurrentDevice(JLcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindWithMac(Ljava/lang/String;J)Lrx/Observable;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkService(Ljava/util/UUID;)Lrx/Observable;
    .locals 2
    .param p1, "uuidServer"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->checkUUID(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "service not found!"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public closeMsg()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectToMac(Ljava/lang/String;JZ)Lrx/Observable;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->connectToMac(JLjava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Action1;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Action1;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JZ)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "connectToMacWithoutScan start 1"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 145
    const-string v0, "connectToMacWithoutScan start 2"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1, p4}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Action1;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Action1;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer$$Lambda$6;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public disConnect()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->disconnectConnection()Z

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

    .line 91
    return-void
.end method

.method public findPhoneFlag(Z)Lrx/Observable;
    .locals 2
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 2
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPace(Landroid/os/Handler;)Lrx/Observable;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPower()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStaticHeartRate()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

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
    .line 85
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->preparedOK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public locatingBand()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public musicFlag(Z)Lrx/Observable;
    .locals 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pauseToRun()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 2
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/BtDev;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushByte([B)Lrx/Observable;
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "param4"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 223
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pushMsgRequest(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveAlarm(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveHandup(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "handup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveHrMonitor(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "hrMoniter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveLongSit(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "longsit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveTimeDisplay(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "hrMoniter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveVibrate(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "hrMoniter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendAlarmToBand(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlarm1(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlarm2(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "alarm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAntLostFlag(Z)Lrx/Observable;
    .locals 2
    .param p1, "checked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAutoConnect(ZLjava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "auto"    # Z
    .param p2, "bond_mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    .line 100
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setCameraFlat(I)Lrx/Observable;
    .locals 2
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRunInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "distance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRunSetting(ZI)Lrx/Observable;
    .locals 2
    .param p1, "b"    # Z
    .param p2, "max_heartRate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSportAim()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTWhours(Z)Lrx/Observable;
    .locals 2
    .param p1, "alarm"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public smsIncoming()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopRun()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synMusicFlag(I)Lrx/Observable;
    .locals 2
    .param p1, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncData(Landroid/os/Handler;)Lrx/Observable;
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncSetting()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testAllBleCmd(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public turnOff()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
