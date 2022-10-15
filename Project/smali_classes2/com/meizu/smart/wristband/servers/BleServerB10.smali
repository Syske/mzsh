.class public Lcom/meizu/smart/wristband/servers/BleServerB10;
.super Lcom/meizu/smart/wristband/servers/BleServer;
.source "BleServerB10.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "productor"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$387(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$388(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMacWithoutScan$397(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMacWithoutScan$398(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMacWithoutScan$399(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$13(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$turnonNotify$400(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$14(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindWithMac$401(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$15(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindWithMac$402(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$getBtVer$415(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$prepareOTA$416(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$18(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$prepareOTA$417(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$19(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$prepareOTA$418(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$389(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$20(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$prepareOTA$419(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$21(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$420(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$22(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$421(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$23(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$422(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$24(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$423(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$25(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$424(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$26(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$425(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$27(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$426(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$28(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$427(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$29(Ljava/lang/String;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$428(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$390(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$30(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$429(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$31(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$430(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$32(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$431(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$33(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$432(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$34(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$433(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$35(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$testAllBleCmd$434(Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$391(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$392(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$bindToCurrentDevice$393(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMac$394(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMac$395(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->lambda$connectToMac$396(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$bindToCurrentDevice$387(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 40
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getSn()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$388(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$bindToCurrentDevice$389(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 3
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->addDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$bindToCurrentDevice$390(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 3
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$bindToCurrentDevice$391(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$392(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getLocalString(Ljava/text/SimpleDateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setTime(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindToCurrentDevice$393(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    invoke-static {}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getTimeDev()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setTimeZone(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindWithMac$401(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 97
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTime(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$bindWithMac$402(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 98
    invoke-static {}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getTimeDev()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTimeZone(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$394(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 52
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->checkService(Ljava/util/UUID;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$395(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->turnonNotify()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMac$396(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->preparedOK:Z

    return-void
.end method

.method private synthetic lambda$connectToMacWithoutScan$397(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    sget-object v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->checkService(Ljava/util/UUID;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$398(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->turnonNotify()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToMacWithoutScan$399(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "p"    # Ljava/lang/Boolean;

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->preparedOK:Z

    return-void
.end method

.method private static synthetic lambda$getBtVer$415(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$prepareOTA$416(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setReconnectMode(Z)V

    return-void
.end method

.method private static synthetic lambda$prepareOTA$417(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 243
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->stepStore()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$prepareOTA$418(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 244
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setUpgradeMode()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$prepareOTA$419(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;

    .prologue
    .line 264
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$420(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 440
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->bind()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$421(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 443
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getSn()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$422(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getVer()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$423(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 449
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enable()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$424(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 452
    sget-object v0, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat9:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setTime(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$425(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 455
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->syncData()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$426(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 458
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$427(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 462
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setRunParam(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$428(Ljava/lang/String;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 465
    const-string v0, "0,20,11111110,0700"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setAlarmClock1(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$429(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 468
    const-string v0, "0,20,11111110,0700"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setAlarmClock2(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$430(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 471
    const-string v0, "030,0800,1700,0"

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setSitAlarm(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$431(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 474
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$432(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$433(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 481
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getBattery()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$testAllBleCmd$434(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 484
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$turnonNotify$400(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private turnonNotify()Lrx/Observable;
    .locals 6
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
    .line 66
    iget-object v3, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v2

    .line 67
    .local v2, "bleManager":Lcom/meizu/smart/wristband/bluetooth/BleManager;
    sget-object v3, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_SERVER:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->UUID_RESPONSE:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->enableCharacteristicNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 68
    .local v0, "b1":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->turnOnVersionNotify()Lrx/Observable;

    move-result-object v1

    .line 69
    .local v1, "b3":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v3

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$14;->lambdaFactory$()Lrx/functions/Func2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public beginToRun()Lrx/Observable;
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
    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 39
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->bind()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p3}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p3}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Func1;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$6;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$4;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$3;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 86
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$2;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$15;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$16;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$1;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 99
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

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
    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    .line 52
    .local v0, "bleConnect":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Func1;

    move-result-object v2

    .line 53
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Action1;

    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

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
    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    .line 60
    .local v0, "bleConnect":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Func1;

    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Action1;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

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
    .line 229
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 188
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getVer()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$7;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$6;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$6;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 194
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 202
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
    .line 270
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->getBattery()Lrx/Observable;

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
    .line 281
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->LocatingBand()Lrx/Observable;

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
    .line 234
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public pauseToRun()Lrx/Observable;
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
    .line 213
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 4
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
    .line 241
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$18;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;)Lrx/functions/Action1;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$19;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$20;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$10;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$10;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 245
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 251
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$9;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$9;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 252
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$8;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$8;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 258
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$21;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

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
    .line 413
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public pushMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 7
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
    .line 388
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->enableStepReport(I)Lrx/Observable;

    move-result-object v6

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$24;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/meizu/smart/wristband/servers/BleServerB10$24;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$23;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$23;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 393
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$22;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$22;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 398
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public pushMsgRequest(Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 408
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 363
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$21;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$21;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    .line 364
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$20;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$20;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 291
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setHandup(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$12;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$12;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$11;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$11;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 296
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
    .line 306
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setHrMonitor(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$14;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$14;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$13;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$13;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 311
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
    .line 342
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setSitAlarm(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$19;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$19;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$18;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$18;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$17;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$17;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public saveTimeDisplay(Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 321
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

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
    .line 327
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setVibrate(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$16;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$16;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB10$15;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$15;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

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
    .line 428
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setAntLostFlag(I)Lrx/Observable;

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
    .line 418
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setCameraFlag(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setRunInfo(Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    .locals 1
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
    .line 218
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

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
    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public setSportAim()Lrx/Observable;
    .locals 3
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "sportAim":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setSportAim(Ljava/lang/String;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public setTWhours(Z)Lrx/Observable;
    .locals 1
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
    .line 433
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
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
    .line 286
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->setSmsIncoming()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public stopRun()Lrx/Observable;
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
    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

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
    .line 423
    invoke-static {p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->synMusicFlag(I)Lrx/Observable;

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
    .line 116
    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$5;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public syncSetting()Lrx/Observable;
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
    .line 109
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
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

    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/meizu/smart/wristband/servers/BleServerB10;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$22;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$23;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 442
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$24;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 445
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$25;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$26;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 451
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$27;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 454
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 457
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 460
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$29;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$30;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$31;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 467
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$32;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$33;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x2710

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 476
    invoke-virtual {v0, v2, v3, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$34;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$35;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 480
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$36;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 483
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
