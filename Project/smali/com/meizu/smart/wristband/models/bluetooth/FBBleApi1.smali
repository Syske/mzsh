.class public Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;
.super Ljava/lang/Object;
.source "FBBleApi1.java"


# static fields
.field public static final UUID_DESCRIPTOR:Ljava/util/UUID;

.field public static final UUID_REQUEST:Ljava/util/UUID;

.field public static final UUID_RESPONSE:Ljava/util/UUID;

.field public static final UUID_SERVER:Ljava/util/UUID;

.field public static final antLostState:Ljava/lang/String; = "AT+ANTI_LOST"

.field public static final bind:Ljava/lang/String; = "AT+BOND"

.field public static final carema:Ljava/lang/String; = "AT+CAMERA"

.field public static final enable:Ljava/lang/String; = "AT+ACT"

.field private static final find_phone:Ljava/lang/String; = "AT+FINDPHONE"

.field public static final generateData:Ljava/lang/String; = "AT+DATA"

.field public static final getBattery:Ljava/lang/String; = "AT+BATT"

.field public static final getEfm32Version:Ljava/lang/String; = "AT+VER"

.field public static final getSn:Ljava/lang/String; = "AT+SN"

.field public static final locatingBand:Ljava/lang/String; = "AT+FINDBT=1"

.field public static final music:Ljava/lang/String; = "AT+MUSIC"

.field public static final musicPlaystate:Ljava/lang/String; = "AT+MUSICPLY"

.field public static final pushMsg:Ljava/lang/String; = "AT+PUSH"

.field public static final requestData:Ljava/lang/String; = "AT+DATA"

.field public static final requestPushMsg1:Ljava/lang/String; = "AT+ZI"

.field public static final resetreas:Ljava/lang/String; = "AT+RESETREAS"

.field public static final run_heartRate_setting:Ljava/lang/String; = "AT+REALHEART"

.field private static final run_rewrite_band:Ljava/lang/String; = "AT+RD"

.field public static final setAlarmClock:Ljava/lang/String; = "AT+ALARM"

.field public static final setAlarmClock2:Ljava/lang/String; = "AT+ALARM2"

.field public static final setCalibration:Ljava/lang/String; = "AT+CALDC"

.field public static final setCapcal:Ljava/lang/String; = "AT+CAPCAL"

.field public static final setHandsup:Ljava/lang/String; = "AT+HANDSUP"

.field public static final setHeight:Ljava/lang/String; = "AT+HEIGHT"

.field public static final setHrmonitor:Ljava/lang/String; = "AT+HRMONITOR"

.field public static final setLan:Ljava/lang/String; = "AT+LAN"

.field public static final setMonitorParam:Ljava/lang/String; = "AT+MODEL"

.field public static final setMotor:Ljava/lang/String; = "AT+MOTOR"

.field public static final setName:Ljava/lang/String; = "AT+NAME"

.field public static final setRunParam:Ljava/lang/String; = "AT+RUN"

.field public static final setSex:Ljava/lang/String; = "AT+SEX"

.field public static final setSitAlarm:Ljava/lang/String; = "AT+SIT"

.field public static final setSleepTime:Ljava/lang/String; = "NT+SLPTIME"

.field public static final setSlpTime:Ljava/lang/String; = "AT+SLPTIME"

.field public static final setSportAim:Ljava/lang/String; = "AT+DEST"

.field public static final setSyncFlag:Ljava/lang/String; = "AT+SYN"

.field public static final setTime:Ljava/lang/String; = "AT+DT"

.field public static final setTimeDisplay:Ljava/lang/String; = "AT+TIMEDISPLAY"

.field public static final setTotalPace:Ljava/lang/String; = "AT+TOPACE"

.field public static final setWeight:Ljava/lang/String; = "AT+WEIGHT"

.field public static final staticHeart:Ljava/lang/String; = "AT+HEART"

.field public static final step:Ljava/lang/String; = "AT+PACE"

.field public static final stepStore:Ljava/lang/String; = "AT+STEPSTORE"

.field public static final timezone:Ljava/lang/String; = "AT+TIMEZONE"

.field public static final turnOff:Ljava/lang/String; = "AT+OFF"

.field private static final tw_hours:Ljava/lang/String; = "AT+TIMEFORMAT"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "0000190a-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    .line 28
    const-string v0, "00000001-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    .line 29
    const-string v0, "00000002-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    .line 30
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_DESCRIPTOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
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
    .line 462
    const-string v0, "AT+FINDBT=1\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$36;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$36;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$0([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->lambda$sendNotifyMessage$368([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->lambda$sendNotifyMessage$369([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2([B)Ljava/lang/Void;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->lambda$sendDescriptorMessage$370([B)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->lambda$turnOnVersionNotify$371(Ljava/lang/Void;)Ljava/lang/Boolean;

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
    .line 121
    const-string v0, "AT+BOND\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$3;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$3;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$2;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$2;-><init>()V

    .line 127
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static closeMsg()Lrx/Observable;
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
    .line 360
    const-string v0, "AT+PUSH\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$27;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$27;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 148
    const-string v0, "AT+ACT=1\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$5;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$5;-><init>()V

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
    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+TOPACE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$21;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$21;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static findPhoneFlag(I)Lrx/Observable;
    .locals 3
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
    .line 603
    const-string/jumbo v0, "wxf_music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbbleapi syncMusicFlag falg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+FINDPHONE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$45;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$45;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static generateData()Lrx/Observable;
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
    .line 208
    const-string v0, "AT+DATA\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$11;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$11;-><init>()V

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
    .line 167
    const-string v0, "AT+BATT\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$7;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$7;-><init>()V

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
    .line 198
    const-string v0, "AT+SN\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$10;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$10;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getStaticHeartRateBegin()Lrx/Observable;
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
    .line 402
    const-string v0, "AT+HEART=1\r\n"

    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$30;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$30;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static getStaticHeartRateEnd()Lrx/Observable;
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
    .line 416
    const-string v0, "AT+HEART=0\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$31;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$31;-><init>()V

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
    .line 177
    const-string v0, "AT+PACE\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$8;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$8;-><init>()V

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
    .line 492
    const-string v0, "AT+TIMEZONE\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$39;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$39;-><init>()V

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
    .line 112
    const-string v0, "AT+VER\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$1;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$sendDescriptorMessage$370([B)Ljava/lang/Void;
    .locals 1
    .param p0, "Void"    # [B

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$sendNotifyMessage$368([B)Ljava/lang/Void;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$sendNotifyMessage$369([B)Ljava/lang/Void;
    .locals 1
    .param p0, "a"    # [B

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$turnOnVersionNotify$371(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Void;

    .prologue
    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static musicFlag(Ljava/lang/Integer;)Lrx/Observable;
    .locals 2
    .param p0, "flag"    # Ljava/lang/Integer;
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
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+MUSIC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$43;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$43;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+PUSH="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "str":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_1

    const-string p2, ""

    .end local p2    # "time":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_2

    const-string p3, ""

    .end local p3    # "snsType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$26;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$26;-><init>()V

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
    .line 525
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AT+DATA="

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
    .line 371
    const-string v0, "AT+ZI\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$28;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$28;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static resetRAES()Lrx/Observable;
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
    .line 481
    const-string v0, "AT+RESETREAS\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$38;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$38;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendByteData(Ljava/lang/String;[B)Lrx/Observable;
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;

    invoke-direct {v0, p1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

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
    .line 100
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    sget-object v3, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_DESCRIPTOR:Ljava/util/UUID;

    move-object v4, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendDescriptorUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendNotifyMessage(Ljava/lang/String;)Lrx/Observable;
    .locals 4
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
    .line 93
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v0, v1, v2, p0, v3}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendNotifyMessage(Ljava/lang/String;[B)Lrx/Observable;
    .locals 3
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
    .line 87
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

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
    .line 79
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sendTextMessage(Ljava/lang/String;I)Lrx/Observable;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "timout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;

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
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+ALARM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$17;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$17;-><init>()V

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
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+ALARM2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$18;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$18;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setAntLostFlag(I)Lrx/Observable;
    .locals 3
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
    .line 630
    const-string/jumbo v0, "wxf_music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbbleapi syncMusicFlag falg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+ANTI_LOST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$47;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$47;-><init>()V

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
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+HANDSUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$13;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$13;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setHeight(I)Lrx/Observable;
    .locals 2
    .param p0, "height"    # I
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
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+HEIGHT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$33;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$33;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setHrMonitor(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "hrMonitor"    # Ljava/lang/String;
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
    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+HRMONITOR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$15;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$15;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setLan(I)Lrx/Observable;
    .locals 3
    .param p0, "lan"    # I
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
    .line 425
    const-string/jumbo v0, "wxf_lan"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set lan = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+LAN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$32;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$32;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setRunInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "distance"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+RD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$25;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$25;-><init>()V

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
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+RUN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$24;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$24;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setRunSetting(ZI)Lrx/Observable;
    .locals 2
    .param p0, "b"    # Z
    .param p1, "max_heartRate"    # I
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
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+REALHEART="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$44;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$44;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSex(I)Lrx/Observable;
    .locals 2
    .param p0, "sex"    # I
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
    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+SEX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$35;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$35;-><init>()V

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
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+SIT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$23;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$23;-><init>()V

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
    .line 472
    const-string v0, "AT+FINDBT=1\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$37;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$37;-><init>()V

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
    .line 280
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+DEST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$19;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$19;-><init>()V

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
    .line 187
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "format":Ljava/text/DecimalFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+PACE="

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

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$9;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$9;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public static setSyncFlag(I)Lrx/Observable;
    .locals 2
    .param p0, "falg"    # I
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
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+SYN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$22;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$22;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setTWhour(I)Lrx/Observable;
    .locals 3
    .param p0, "isTW"    # I
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
    .line 291
    const-string v0, "tw_hours"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+TIMEFORMAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$20;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$20;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+DT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$4;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$4;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setTimeDisplay(Ljava/lang/String;)Lrx/Observable;
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
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+TIMEDISPLAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$16;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$16;-><init>()V

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
    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+TIMEZONE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$40;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$40;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setVibrate(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "vibrate"    # Ljava/lang/String;
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
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+MOTOR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$14;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$14;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setWeight(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p0, "weight"    # Ljava/lang/String;
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
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+WEIGHT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$34;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$34;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static setcCameraFlag(I)Lrx/Observable;
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
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+CAMERA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$42;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$42;-><init>()V

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
    .line 217
    const-string v0, "AT+STEPSTORE\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$12;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$12;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 529
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;-><init>()V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static syncMusicFlag(I)Lrx/Observable;
    .locals 3
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
    .line 615
    const-string/jumbo v0, "wxf_music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fbbleapi syncMusicFlag falg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AT+MUSICPLY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$46;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$46;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 158
    const-string v0, "AT+OFF\r\n"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendTextMessage(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$6;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$6;-><init>()V

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
    .line 106
    const-string v0, "notify 1"

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendDescriptorMessage(Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$$Lambda$4;->lambdaFactory$()Lrx/functions/Func1;

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
