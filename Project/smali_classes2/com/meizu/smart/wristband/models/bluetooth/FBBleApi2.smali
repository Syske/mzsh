.class public Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;
.super Ljava/lang/Object;
.source "FBBleApi2.java"


# static fields
.field public static final UUID_DESCRIPTOR:Ljava/util/UUID;

.field public static final UUID_REQUEST:Ljava/util/UUID;

.field public static final UUID_RESPONSE:Ljava/util/UUID;

.field public static final UUID_SERVER:Ljava/util/UUID;

.field public static final getNordicVersion:Ljava/lang/String; = "BT+VER"

.field public static final resetNordic:Ljava/lang/String; = "BT+RESET"

.field public static final setConnectParam:Ljava/lang/String; = "BT+C"

.field public static final setDfuMode4Efm32:Ljava/lang/String; = "BT+UPGE"

.field public static final setDfuMode4Nordic:Ljava/lang/String; = "BT+UPGB"

.field public static final setNormalMod:Ljava/lang/String; = "BT+NOR"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "0000190B-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    .line 16
    const-string v0, "00000003-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_REQUEST:Ljava/util/UUID;

    .line 17
    const-string v0, "00000004-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    .line 18
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_DESCRIPTOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->lambda$sendNotifyMessage$376([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->lambda$sendDescriptorMessage$377([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->lambda$turnBizNotify$378(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getVer()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "BT+VER\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$sendDescriptorMessage$377([B)Ljava/lang/Void;
    .locals 1
    .param p0, "Void"    # [B

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$sendNotifyMessage$376([B)Ljava/lang/Void;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$turnBizNotify$378(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Void;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static sendDescriptorMessage(Ljava/lang/String;[B)Lrx/Observable;
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    sget-object v3, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_DESCRIPTOR:Ljava/util/UUID;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendDescriptorUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessage(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 30
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendNotifyMessage(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendTextMessage(Ljava/lang/String;)Lrx/Observable;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setDeviceReset()Lrx/Observable;
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
    .line 76
    const-string v0, "BT+RESET\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$3;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$3;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setUpgradeMode()Lrx/Observable;
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
    .line 67
    const-string v0, "BT+UPGB\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$2;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$2;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static turnBizNotify()Lrx/Observable;
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
    .line 60
    const-string v0, "notify 2"

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->sendDescriptorMessage(Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method
