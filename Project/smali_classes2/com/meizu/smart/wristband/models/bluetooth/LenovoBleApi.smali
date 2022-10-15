.class public Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;
.super Ljava/lang/Object;
.source "LenovoBleApi.java"


# static fields
.field public static final UUID_DESCRIPTOR:Ljava/util/UUID;

.field public static final UUID_REQUEST:Ljava/util/UUID;

.field public static final UUID_RESPONSE:Ljava/util/UUID;

.field public static final UUID_SERVER:Ljava/util/UUID;

.field public static final antLostState:Ljava/lang/String; = "AT49"

.field public static final bind:Ljava/lang/String; = "AT08"

.field public static final carema:Ljava/lang/String; = "AT50"

.field public static final enable:Ljava/lang/String; = "AT09"

.field public static final getBattery:Ljava/lang/String; = "AT21"

.field public static final getEfm32Version:Ljava/lang/String; = "AT01"

.field public static final getSn:Ljava/lang/String; = "AT11"

.field public static final locatingBand:Ljava/lang/String; = "AT36"

.field public static final musicState:Ljava/lang/String; = "AT+MUSICPLY"

.field public static final pushMsg:Ljava/lang/String; = "AT32"

.field public static final requestData:Ljava/lang/String; = "AT04"

.field public static final requestPushMsg1:Ljava/lang/String; = "AT33"

.field public static final resetNordic:Ljava/lang/String; = "AT07"

.field public static final setAlarmClock:Ljava/lang/String; = "AT19"

.field public static final setAlarmClock2:Ljava/lang/String; = "AT20"

.field public static final setCalibration:Ljava/lang/String; = "AT17"

.field public static final setCapcal:Ljava/lang/String; = "AT26"

.field public static final setDfuMode4Nordic:Ljava/lang/String; = "AT40"

.field public static final setHandsup:Ljava/lang/String; = "AT23"

.field public static final setHeight:Ljava/lang/String; = "AT28"

.field public static final setLan:Ljava/lang/String; = "AT15"

.field public static final setMonitorParam:Ljava/lang/String; = "AT22"

.field public static final setMotor:Ljava/lang/String; = "AT25"

.field public static final setName:Ljava/lang/String; = "AT29"

.field public static final setRunParam:Ljava/lang/String; = "AT35"

.field public static final setSex:Ljava/lang/String; = "AT34"

.field public static final setSitAlarm:Ljava/lang/String; = "AT31"

.field public static final setSleepTime:Ljava/lang/String; = "NT27"

.field public static final setSlpTime:Ljava/lang/String; = "AT24"

.field public static final setSportAim:Ljava/lang/String; = "AT16"

.field public static final setTime:Ljava/lang/String; = "AT02"

.field public static final setTotalPace:Ljava/lang/String; = "AT14"

.field public static final setWeight:Ljava/lang/String; = "AT30"

.field public static final smsCall:Ljava/lang/String; = "AT49"

.field public static final step:Ljava/lang/String; = "AT03"

.field public static final stepStore:Ljava/lang/String; = "AT13"

.field public static final timezone:Ljava/lang/String; = "AT48"

.field public static final turnOff:Ljava/lang/String; = "AT18"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "0000190a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    .line 20
    const-string v0, "00000001-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    .line 21
    const-string v0, "00000002-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    .line 22
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_DESCRIPTOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LocatingBand()Lrx/Observable;
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
    .line 261
    const-string v0, "AT36\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$19;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$19;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$0([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->lambda$sendNotifyMessage$379([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->lambda$sendDescriptorMessage$380([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->lambda$turnOnVersionNotify$381(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static bind()Lrx/Observable;
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
    .line 98
    const-string v0, "AT08\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$3;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$3;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$2;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$2;-><init>()V

    .line 105
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static enable()Lrx/Observable;
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
    .line 127
    const-string v0, "AT09=1\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$5;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$5;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static enableStepReport(I)Lrx/Observable;
    .locals 2
    .param p0, "code"    # I
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
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT14="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$16;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$16;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getBattery()Lrx/Observable;
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
    .line 146
    const-string v0, "AT21\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$7;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$7;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getSn()Lrx/Observable;
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
    .line 176
    const-string v0, "AT11\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$10;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$10;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getStep()Lrx/Observable;
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
    .line 156
    const-string v0, "AT03\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$8;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$8;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeZone()Lrx/Observable;
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
    .line 290
    const-string v0, "AT48\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$22;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$22;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 88
    const-string v0, "AT01\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$sendDescriptorMessage$380([B)Ljava/lang/Void;
    .locals 1
    .param p0, "Void"    # [B

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$sendNotifyMessage$379([B)Ljava/lang/Void;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$turnOnVersionNotify$381(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Void;

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "time"    # Ljava/lang/String;
    .param p3, "snsType"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT32="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$20;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$20;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestData(Ljava/lang/Integer;)Lrx/Observable;
    .locals 5
    .param p0, "pkgno"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 344
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT04="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->requestData(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static requestPushMsg1()Lrx/Observable;
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
    .line 280
    const-string v0, "AT33\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$21;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$21;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 76
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    sget-object v3, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_DESCRIPTOR:Ljava/util/UUID;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendDescriptorUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

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
    .line 62
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

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
    .line 70
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

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
    .line 66
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setAlarmClock1(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "alarm"    # Ljava/lang/String;
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
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT19="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$13;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$13;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setAlarmClock2(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "alarm"    # Ljava/lang/String;
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
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT20="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$14;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$14;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setAntLostFlag(I)Lrx/Observable;
    .locals 2
    .param p0, "flag"    # I
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
    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT49="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$29;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$29;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setCameraFlag(I)Lrx/Observable;
    .locals 2
    .param p0, "flag"    # I
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
    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT50="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$28;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$28;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setDeviceReset()Lrx/Observable;
    .locals 5
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
    .line 328
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    const-string v3, "AT07\r\n"

    const v4, 0x7fffffff

    invoke-static {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$26;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$26;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setHandup(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "handup"    # Ljava/lang/String;
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
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT23="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$12;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$12;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setRunParam(I)Lrx/Observable;
    .locals 2
    .param p0, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT35="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$18;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$18;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setSitAlarm(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "alarm"    # Ljava/lang/String;
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
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT31="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$17;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$17;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setSmsIncoming()Lrx/Observable;
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
    .line 309
    const-string v0, "AT49=1\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$24;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$24;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setSportAim(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "sportAim"    # Ljava/lang/String;
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
    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 224
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT16="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$15;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$15;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setStep(Ljava/lang/Integer;)Lrx/Observable;
    .locals 3
    .param p0, "pace"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT03="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$9;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$9;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static setTime(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
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
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT02="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$4;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$4;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setTimeZone(J)Lrx/Observable;
    .locals 2
    .param p0, "time_dev"    # J
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
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT48="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$23;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$23;-><init>()V

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
    .line 319
    const-string v0, "AT40\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$25;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$25;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static stepStore()Lrx/Observable;
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
    .line 186
    const-string v0, "AT13\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$11;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$11;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static synMusicFlag(I)Lrx/Observable;
    .locals 1
    .param p0, "flag"    # I
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
    .line 411
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static syncData()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;-><init>()V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static turnOff()Lrx/Observable;
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
    .line 137
    const-string v0, "AT18\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$6;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$6;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static turnOnVersionNotify()Lrx/Observable;
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
    .line 82
    const-string v0, "notify 1"

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->sendDescriptorMessage(Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

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
