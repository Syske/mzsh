.class public Lcom/meizu/smart/wristband/servers/BleServerB52;
.super Lcom/meizu/smart/wristband/servers/BleServer;
.source "BleServerB52.java"


# instance fields
.field final ALARM_TAG:Ljava/lang/String;

.field final ALRAM_HANDLE_MSG:I

.field private alarmHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productor"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 450
    const/16 v0, 0x65

    iput v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->ALRAM_HANDLE_MSG:I

    .line 451
    const-string v0, "meizu_alarm"

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->ALARM_TAG:Ljava/lang/String;

    .line 452
    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$22;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$22;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->alarmHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method

.method static synthetic access$lambda$0(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$turnonNotify$435(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$turnonNotify$436(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$445(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$446(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$447(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$448(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$14(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$449(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$15(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$450(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMac$451(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMac$452(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$18(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMac$453(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$19(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMac$454(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$turnonNotify$437(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$20(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMacWithoutScan$455(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$21(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMacWithoutScan$456(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$22(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMacWithoutScan$457(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$23(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$connectToMacWithoutScan$458(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$24(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$syncSetting$459(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$25(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$syncSetting$460(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$26(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$syncSetting$461(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$27(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$syncSetting$462(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$28(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$getBtVer$478(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$29(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$beginToRun$479(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$turnonNotify$438(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$30(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$pauseToRun$480(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$31(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$setRunInfo$481(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$32(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$stopRun$482(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$33([Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$saveAlarm$483([Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$34(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$saveAlarm$484(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$35(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$485(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$36(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$486(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$37(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$487(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$38(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$488(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$39(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$489(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$439(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$40(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$490(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$41(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$491(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$42(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$492(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$43(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$493(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$44(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$494(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$45(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$495(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$46(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$496(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$47(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$497(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$48(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$498(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$49(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$499(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$440(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$50(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$500(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$51(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$testAllBleCmd$501(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$441(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$442(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$443(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->lambda$bindToCurrentDevice$444(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$beginToRun$479(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$439(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getSn()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$bindToCurrentDevice$440(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/String;)V
    .locals 2
    .param p2, "a"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->saveDeviceSn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$bindToCurrentDevice$441(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->enable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$bindToCurrentDevice$442(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 3
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$bindToCurrentDevice$443(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 3
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$bindToCurrentDevice$444(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$bindToCurrentDevice$445(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->getLanguage(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setLan(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$446(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setHeight(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$447(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setWeight(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$448(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getSex()Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/constant/Sex;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSex(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$449(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 77
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getLocalString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTime(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$450(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 78
    invoke-static {}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getTimeDev()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTimeZone(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$451(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->checkService(Ljava/util/UUID;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$452(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->turnonNotify()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$453(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->preparedOK:Z

    return-void
.end method

.method private synthetic lambda$connectToMac$454(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->getLanguage(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setLan(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$455(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->checkService(Ljava/util/UUID;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$456(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->turnonNotify()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$457(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->preparedOK:Z

    return-void
.end method

.method private synthetic lambda$connectToMacWithoutScan$458(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->getLanguage(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setLan(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getBtVer$478(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$pauseToRun$480(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$saveAlarm$483([Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "alarm1"    # [Ljava/lang/String;

    .prologue
    .line 544
    invoke-static {p0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$saveAlarm$484(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p1, "alarm1"    # Ljava/lang/String;

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->sendAlarmToBand(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$setRunInfo$481(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$stopRun$482(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 294
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncSetting$459(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->getLanguage(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setLan(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$syncSetting$460(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setHeight(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$syncSetting$461(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setWeight(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$syncSetting$462(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/database/entity/User;->getSex()Lcom/meizu/smart/wristband/constant/Sex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/constant/Sex;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSex(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$485(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 688
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->bind()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$486(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 691
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getSn()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$487(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getVer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$488(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 697
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->enable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$489(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 700
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTime(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$490(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 703
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->syncData()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$491(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 706
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getStaticHeartRateBegin()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$492(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 709
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getStaticHeartRateEnd()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$493(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 712
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$494(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 716
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$495(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 719
    const-string v0, "0,20,11111110,0700"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$496(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 722
    const-string v0, "0,20,11111110,0700"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock2(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$497(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 725
    const-string v0, "030,0800,1700,0"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSitAlarm(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$498(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 728
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$499(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$500(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 735
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getBattery()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$501(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 738
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$turnonNotify$435(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 56
    return-object p0
.end method

.method private static synthetic lambda$turnonNotify$436(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 57
    return-object p0
.end method

.method private static synthetic lambda$turnonNotify$437(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 58
    return-object p0
.end method

.method private static synthetic lambda$turnonNotify$438(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    return-object p0
.end method

.method private sendAlarm(Ljava/lang/String;)V
    .locals 4
    .param p1, "alarm"    # Ljava/lang/String;

    .prologue
    .line 503
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 504
    .local v0, "mBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->alarmHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 505
    .local v1, "msg":Landroid/os/Message;
    const-string v2, "meizu_alarm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 507
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->alarmHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 508
    return-void
.end method

.method private turnonNotify()Lrx/Observable;
    .locals 8
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
    const/4 v7, 0x0

    .line 49
    iget-object v5, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v4

    .line 50
    .local v4, "bleManager":Lcom/meizu/smart/wristband/bluetooth/BleManager;
    sget-object v5, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 51
    .local v0, "b1":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    sget-object v5, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    .line 52
    .local v1, "b2":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->turnOnVersionNotify()Lrx/Observable;

    move-result-object v2

    .line 53
    .local v2, "b3":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->turnBizNotify()Lrx/Observable;

    move-result-object v3

    .line 55
    .local v3, "b4":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$1;->lambdaFactory$(Lrx/Observable;)Lrx/functions/Func1;

    move-result-object v6

    .line 56
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$2;->lambdaFactory$(Lrx/Observable;)Lrx/functions/Func1;

    move-result-object v6

    .line 57
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$3;->lambdaFactory$(Lrx/Observable;)Lrx/functions/Func1;

    move-result-object v6

    .line 58
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;->lambdaFactory$(Lrx/Observable;)Lrx/functions/Func1;

    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    return-object v5
.end method


# virtual methods
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
    .line 272
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$30;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public bindToCurrentDevice(JLcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 4
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
    .line 64
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 65
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "000"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->bind()Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$5;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, p3}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, p3}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 70
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, p3}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v3

    .line 72
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v3

    .line 73
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$13;->lambdaFactory$(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 75
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 76
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$15;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$16;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2
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
    .line 616
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->closeMsg()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$29;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$29;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public connectToMac(Ljava/lang/String;JZ)Lrx/Observable;
    .locals 4
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
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    .line 84
    .local v0, "bleConnect":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$17;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$18;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$19;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Action1;

    move-result-object v2

    .line 86
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$20;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;
    .locals 4
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
    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    .line 93
    .local v0, "bleConnect":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$21;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$22;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v2

    .line 94
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$23;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Action1;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$24;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public findPhoneFlag(Z)Lrx/Observable;
    .locals 1
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
    .line 680
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->findPhoneFlag(I)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 226
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->getVer()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$3;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$2;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 232
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$29;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getPower()Lrx/Observable;
    .locals 1
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
    .line 310
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getBattery()Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 596
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getStaticHeartRateBegin()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$28;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$28;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$27;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$27;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 601
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$26;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$26;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 606
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public locatingBand()Lrx/Observable;
    .locals 1
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
    .line 333
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->LocatingBand()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public musicFlag(Z)Lrx/Observable;
    .locals 1
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
    .line 649
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->musicFlag(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 279
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$31;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 245
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi2;->setUpgradeMode()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$6;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$5;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 250
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$4;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 258
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public pushByte([B)Lrx/Observable;
    .locals 1
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
    .line 660
    const-string v0, "pushByte"

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendByteData(Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 628
    invoke-static {p1, p2, p3, p4}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$30;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$30;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 639
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->requestPushMsg1()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$31;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$31;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveAlarm(Ljava/lang/String;)Lrx/Observable;
    .locals 10
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
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 513
    if-eqz p1, :cond_4

    .line 514
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "alarms":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 517
    const-string v6, "0,0,00,00000000,0000"

    aput-object v6, v2, v9

    .line 521
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 522
    aget-object v5, v2, v3

    .line 525
    .local v5, "tmp":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "alarmStringItem":[Ljava/lang/String;
    const-string v4, "0000"

    .line 529
    .local v4, "strAlarmtime":Ljava/lang/String;
    array-length v6, v1

    if-le v6, v8, :cond_1

    .line 530
    aget-object v4, v1, v8

    .line 531
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v6, v8, :cond_1

    .line 532
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 536
    :cond_1
    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-static {v6}, Lcom/meizu/smart/wristband/utils/NumberFormat;->BToH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "HexDate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_2

    .line 538
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 521
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 543
    .end local v0    # "HexDate":Ljava/lang/String;
    .end local v1    # "alarmStringItem":[Ljava/lang/String;
    .end local v4    # "strAlarmtime":Ljava/lang/String;
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v6

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;->lambdaFactory$([Ljava/lang/String;)Lrx/functions/Func1;

    move-result-object v7

    .line 544
    invoke-virtual {v6, v7}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v6

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$35;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v7

    .line 545
    invoke-virtual {v6, v7}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v6

    new-instance v7, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v7}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 546
    invoke-virtual {v6, v7}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 562
    .end local v2    # "alarms":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v6}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v6

    return-object v6
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
    .line 343
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveHandupString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 344
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setHandup(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$9;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$8;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$7;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 364
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveHeartRateMonitingString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 365
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setHrMonitor(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$12;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$12;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 366
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$11;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$11;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$10;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$10;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 431
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveLongSitString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 432
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSitAlarm(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$21;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$21;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$20;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$20;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$19;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$19;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveTimeDisplay(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "time"    # Ljava/lang/String;
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
    .line 387
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveTimeDisplayString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 388
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTimeDisplay(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$15;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$15;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$14;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$14;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$13;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$13;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveVibrate(Ljava/lang/String;)Lrx/Observable;
    .locals 2
    .param p1, "vibrate"    # Ljava/lang/String;
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
    .line 409
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->saveVibrateString(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 410
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setVibrate(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$18;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$18;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$17;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$17;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$16;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$16;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAlarmToBand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 484
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$25;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$25;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$24;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$24;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 489
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$23;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$23;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    .line 494
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setAlarm1(Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 300
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setAlarm2(Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 305
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAlarmClock2(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setAntLostFlag(Z)Lrx/Observable;
    .locals 1
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
    .line 675
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setAntLostFlag(I)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCameraFlat(I)Lrx/Observable;
    .locals 1
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
    .line 665
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setcCameraFlag(I)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 286
    invoke-static {p1, p2}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$32;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setRunSetting(ZI)Lrx/Observable;
    .locals 1
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
    .line 654
    invoke-static {p1, p2}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunSetting(ZI)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setSportAim()Lrx/Observable;
    .locals 4
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
    .line 320
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getGoalRemindString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "goalRemind":Ljava/lang/String;
    const-string v1, "00000"

    .line 325
    .local v1, "sportAim":Ljava/lang/String;
    const-string v2, "01"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    :cond_1
    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSportAim(Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

.method public setTWhours(Z)Lrx/Observable;
    .locals 3
    .param p1, "isTW"    # Z
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
    .line 745
    const-string v0, "setTWhours"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTWhour(I)Lrx/Observable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public smsIncoming()Lrx/Observable;
    .locals 1
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
    .line 338
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setSmsIncoming()Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 293
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$33;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synMusicFlag(I)Lrx/Observable;
    .locals 1
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
    .line 670
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->syncMusicFlag(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public syncData(Landroid/os/Handler;)Lrx/Observable;
    .locals 1
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
    .line 123
    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public syncSetting()Lrx/Observable;
    .locals 4
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
    .line 112
    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 113
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "000"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "df":Ljava/text/DecimalFormat;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$25;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB52;)Lrx/functions/Func1;

    move-result-object v3

    .line 115
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$26;->lambdaFactory$(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 116
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;->lambdaFactory$(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$28;->lambdaFactory$(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 118
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method

.method public testAllBleCmd(Ljava/lang/String;)Lrx/Observable;
    .locals 4
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
    const-wide/16 v2, 0x7530

    .line 686
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/meizu/smart/wristband/servers/BleServerB52;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$36;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 687
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$37;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 690
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$38;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$39;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 696
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$40;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 699
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$41;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 702
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$42;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 708
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$44;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 711
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 714
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$45;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$46;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$47;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 721
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$48;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 724
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$49;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 727
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x2710

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 730
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$50;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 731
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$51;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 734
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$52;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 737
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public turnOff()Lrx/Observable;
    .locals 1
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
    .line 315
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->turnOff()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
