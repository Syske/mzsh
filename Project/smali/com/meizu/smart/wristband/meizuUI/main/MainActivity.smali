.class public Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
.source "MainActivity.java"


# static fields
.field public static final FRAGMENT_HEARTRATE:I = 0x2

.field public static final FRAGMENT_SLEEP:I = 0x1

.field public static final FRAGMENT_SPORT:I = 0x0

.field private static final ONGOING_NOTIFICATION_ID:I = 0x7f030000


# instance fields
.field private final AUTO_CONNECT_MSG:I

.field private autoConnectHandler:Landroid/os/Handler;

.field public autoConnectStart:Z

.field private autoConnecting:Z

.field private bFirstSend:Z

.field private bSynSetting:Z

.field public bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

.field private exit:Z

.field private haeartRateTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

.field public handler:Landroid/os/Handler;

.field private heartFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

.field private isFirstBind:Z

.field private isfirst:Z

.field mAutoConnectTask:Ljava/util/TimerTask;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field mBluetoothStateListener:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field mProxyTimer:Ljava/util/Timer;

.field private mSmsContentObserver:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

.field private musicServer:Lcom/meizu/smart/wristband/servers/MusicServer;

.field private scanState:Z

.field private sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

.field private sleepTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

.field private soundPoolServer:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

.field private sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

.field private sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

.field private subscription:Lrx/Subscription;

.field private telephonyServer:Lcom/meizu/smart/wristband/servers/TelephonyServer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isfirst:Z

    .line 129
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    .line 130
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bFirstSend:Z

    .line 253
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanState:Z

    .line 254
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnecting:Z

    .line 255
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 319
    const/16 v0, 0x78

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->AUTO_CONNECT_MSG:I

    .line 320
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectHandler:Landroid/os/Handler;

    .line 333
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    .line 441
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    .line 1086
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->exit:Z

    .line 1192
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$18;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothStateListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isFirstBind:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStop()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceData(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanState:Z

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanLeDevice(Z)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$onCreate$88(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$onCreate$89(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$103(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$11(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$104(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$105(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$13(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$106(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$14(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$107(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$15(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$108(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$16(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$109(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$110(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$18(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$111(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$19(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$112(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$onCreate$90(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$20(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$113(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$21(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$114(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$22(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$115(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$23(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$116(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$24(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$117(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$25(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$118()V

    return-void
.end method

.method static synthetic access$lambda$26(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$119(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$27(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$120(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$28(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$121(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$29(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$122(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$autoConnectDevice$96(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$30(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$123(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$31(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$124(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$32(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$125(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$33(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$126(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$34(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$127(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$35(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$128(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$36(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$129()V

    return-void
.end method

.method static synthetic access$lambda$37(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$130(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$38(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$131(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$39(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$132(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$autoConnectDevice$97(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$40(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$133(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$41(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$134(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$42(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$135(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$43(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$136(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$44(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$137(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$45(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$138(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$46(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$139(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$47(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$140(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$48(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$showUpgradeDialog$141(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$49(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$showUpgradeDialog$144(Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$autoConnectDevice$98(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$50(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$145(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$51(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$146(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$52(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$147(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$53(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$148(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$54(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$149(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$55(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$150(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$56(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$151(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$57(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$152(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$58(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceData$153(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$59(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$154(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$autoConnectDevice$99(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$60(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$155(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$61(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$156(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$62(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$157(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$63(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$158(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$64(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$159(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$65(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$160(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$66(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$downloadHistroyData$161(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$67(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDevice$162(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$68(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDevice$163(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$69(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDevice$164(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$setListener$100(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$70(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDevice$165(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$71(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDeviceNoScan$166(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$72(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDeviceNoScan$167(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$73(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDeviceNoScan$168(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$74(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$connectToDeviceNoScan$169(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$75(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$170(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$76(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$171(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$77(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$172(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$78(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$173(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$79(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$174(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$onResume$101()V

    return-void
.end method

.method static synthetic access$lambda$80(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$175(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$81(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$176(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$82(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncDeviceInfo$177(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$83(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncSettingInfo$178(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$84(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncSettingInfo$179(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$85(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/lang/Object;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$syncSettingInfo$180(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$86(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$onKeyDown$181()V

    return-void
.end method

.method static synthetic access$lambda$87(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$null$142(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$88(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$null$143(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$9(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->lambda$doRefreshlistener$102(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private autoConnectDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 3
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    .line 314
    :goto_0
    return-object v1

    .line 301
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 303
    .local v0, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0

    .line 307
    :cond_2
    const-string v1, "autoConnectDevice "

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 309
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 311
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 313
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 314
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method private autoConnectStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 338
    const-string/jumbo v0, "wxf_auto_connect"

    const-string/jumbo v1, "\u81ea\u52a8\u91cd\u8fde\u63a5\u5f00\u59cb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStop()V

    .line 348
    :cond_2
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    if-eqz v0, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStop()V

    .line 353
    :cond_3
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-nez v0, :cond_0

    .line 354
    iput-boolean v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnecting:Z

    .line 356
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mProxyTimer:Ljava/util/Timer;

    .line 357
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mAutoConnectTask:Ljava/util/TimerTask;

    .line 371
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mProxyTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mAutoConnectTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x2af8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 372
    iput-boolean v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    goto :goto_0
.end method

.method private autoConnectStop()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    const/4 v1, 0x0

    .line 377
    const-string v0, "mainactivity autoConnectStop"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mProxyTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mProxyTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    :cond_1
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-eqz v0, :cond_2

    .line 388
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    .line 390
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnecting:Z

    .line 391
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanState:Z

    if-eqz v0, :cond_3

    .line 392
    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanLeDevice(Z)V

    .line 394
    :cond_3
    return-void
.end method

.method private checkGps()V
    .locals 3

    .prologue
    .line 244
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 245
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 247
    const v1, 0x7f080227

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method private downloadHistroyData(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 7
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 734
    new-instance v5, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->isFirstLogin()Z

    move-result v5

    if-nez v5, :cond_0

    .line 735
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 767
    :goto_0
    return-object v5

    .line 746
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 747
    .local v4, "start":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "dateFormat2":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v5, "2016-07-01"

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 754
    :goto_1
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 755
    .local v2, "end":Ljava/util/Date;
    move-object v3, v4

    .line 756
    .local v3, "finalStart":Ljava/util/Date;
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    .line 757
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$60;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v6

    .line 758
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$61;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v6

    .line 759
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0, p1, v3, v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/functions/Func1;

    move-result-object v6

    .line 760
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$63;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v6

    .line 761
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    .line 762
    invoke-virtual {v5}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v5

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$64;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v6

    .line 763
    invoke-virtual {v5, v6}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    .line 764
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$65;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v6

    .line 765
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$66;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v6

    .line 766
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$67;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v6

    .line 767
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    goto :goto_0

    .line 750
    .end local v2    # "end":Ljava/util/Date;
    .end local v3    # "finalStart":Ljava/util/Date;
    :catch_0
    move-exception v1

    .line 751
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method private gotoOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V
    .locals 3
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .param p2, "event"    # Lcom/meizu/smart/wristband/models/database/entity/GainEvent;

    .prologue
    .line 687
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/constant/Producter;->isB52Set(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 688
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const-string v1, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "filepath"

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/ota/suota/DeviceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "device_name"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductorname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string v1, "device_mac"

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v1, "filepath"

    invoke-virtual {p2}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getDatapath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private gotoSetting()V
    .locals 2

    .prologue
    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/setting/SettingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method

.method private initServerForRemind()V
    .locals 4

    .prologue
    .line 425
    new-instance v0, Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->soundPoolServer:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    .line 426
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->soundPoolServer:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->start()V

    .line 429
    new-instance v0, Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/TelephonyServer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->telephonyServer:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    .line 430
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->telephonyServer:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->monitorIncomingTelegram()V

    .line 437
    new-instance v0, Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/smart/wristband/servers/SmsContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mSmsContentObserver:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    .line 438
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mSmsContentObserver:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 439
    return-void
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method private synthetic lambda$autoConnectDevice$96(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$autoConnectDevice$97(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private static synthetic lambda$autoConnectDevice$98(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 312
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setAutoConnect(ZLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$autoConnectDevice$99(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0xea60

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToDevice$162(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 802
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$connectToDevice$163(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private static synthetic lambda$connectToDevice$164(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 804
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setAutoConnect(ZLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$connectToDevice$165(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 805
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v2, 0xea60

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMac(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$connectToDeviceNoScan$166(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$connectToDeviceNoScan$167(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private static synthetic lambda$connectToDeviceNoScan$168(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 831
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setAutoConnect(ZLjava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$connectToDeviceNoScan$169(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 4
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 832
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x1388

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->connectToMacWithoutScan(Ljava/lang/String;JZ)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$102(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 576
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceData(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$103(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$104(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncSettingInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$105(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 579
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$106(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 580
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$107(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->uploadLocalData(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$108(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$109(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 584
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->checkUpdate(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$110(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$111(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$112(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->downloadHistroyData(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$113(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->connectToDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$114(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceData(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$115(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 595
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$116(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 596
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncSettingInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$117(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$118()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$119(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    return-void
.end method

.method private static synthetic lambda$doRefreshlistener$120(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$121(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 601
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->checkUpdate(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$122(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$123(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$124(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 611
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->connectToDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$125(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 612
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceData(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$126(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncDeviceInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$127(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 614
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncSettingInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doRefreshlistener$128(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$129()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshing()V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$130(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 617
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    return-void
.end method

.method private static synthetic lambda$doRefreshlistener$131(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$132(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 620
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->uploadLocalData(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$133(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$134(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 624
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$135(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxx onErrorResumeNext : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$doRefreshlistener$136(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 626
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method private static synthetic lambda$doRefreshlistener$137(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$138(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 628
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->checkUpdate(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$doRefreshlistener$139(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxxxx "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$doRefreshlistener$140(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-void
.end method

.method private synthetic lambda$downloadHistroyData$154(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f0800fa

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$downloadHistroyData$155(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 759
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->downloadSetting(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$downloadHistroyData$156(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p4, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 760
    invoke-static {p0, p1, p2, p3}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->downloadAllHistory(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$downloadHistroyData$157(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private static synthetic lambda$downloadHistroyData$158(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/util/List;

    .prologue
    .line 763
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$downloadHistroyData$159(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 765
    new-instance v0, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->setIsFirstLogin(Z)V

    return-void
.end method

.method private synthetic lambda$downloadHistroyData$160(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->refreshListView(IZ)V

    return-void
.end method

.method private synthetic lambda$downloadHistroyData$161(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->updateSleep()V

    return-void
.end method

.method private synthetic lambda$null$142(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Boolean;)V
    .locals 0
    .param p3, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 666
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->gotoOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V

    return-void
.end method

.method private synthetic lambda$null$143(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Ljava/lang/Throwable;)V
    .locals 0
    .param p3, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 667
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->gotoOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)V

    return-void
.end method

.method private synthetic lambda$onCreate$88(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$89(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {p0, v0, v0}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCreate$90(Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->fetchLatestVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onKeyDown$181()V
    .locals 1

    .prologue
    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->exit:Z

    .line 1107
    return-void
.end method

.method private synthetic lambda$onResume$101()V
    .locals 1

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->refreshViewPager()V

    .line 470
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isfirst:Z

    .line 471
    return-void
.end method

.method private synthetic lambda$setListener$100(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 413
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->gotoSetting()V

    .line 414
    return-void
.end method

.method private static synthetic lambda$showUpgradeDialog$141(Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "Void"    # Landroid/view/View;

    .prologue
    .line 662
    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showUpgradeDialog$144(Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;Landroid/view/View;)V
    .locals 2
    .param p4, "Void"    # Landroid/view/View;

    .prologue
    .line 664
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 665
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v0, p2}, Lcom/meizu/smart/wristband/servers/BleServer;->prepareOTA(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$88;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)Lrx/functions/Action1;

    move-result-object v1

    .line 666
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$89;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)Lrx/functions/Action1;

    move-result-object v1

    .line 667
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 668
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 669
    return-void
.end method

.method private synthetic lambda$syncDeviceData$145(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f08028b

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$146(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 713
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->syncData(Landroid/os/Handler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceData$147(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$148(Ljava/util/List;)V
    .locals 1
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 716
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->setSyncTime(Landroid/content/Context;Ljava/util/Date;)V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$149(Ljava/util/List;)V
    .locals 1
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getTodayStep(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->updateStep(I)V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$150(Ljava/util/List;)V
    .locals 0
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 718
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->updateSleep()V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$151(Ljava/util/List;)V
    .locals 0
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->updateHeart()V

    return-void
.end method

.method private synthetic lambda$syncDeviceData$152(Ljava/util/List;)V
    .locals 2
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 720
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->refreshListView(IZ)V

    return-void
.end method

.method private static synthetic lambda$syncDeviceData$153(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/util/List;

    .prologue
    .line 721
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceInfo$170(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->syncPaceToBand()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceInfo$171(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private synthetic lambda$syncDeviceInfo$172(Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p2, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 848
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v0, p1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBtVer(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceInfo$173(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private synthetic lambda$syncDeviceInfo$174(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->syncSetting()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceInfo$175(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private synthetic lambda$syncDeviceInfo$176(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncDeviceInfo$177(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    return-void
.end method

.method private static synthetic lambda$syncSettingInfo$178(Lcom/meizu/smart/wristband/servers/BleServer;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 888
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$syncSettingInfo$179(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 889
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$syncSettingInfo$180(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->setSportAim()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private refreshViewPager()V
    .locals 2

    .prologue
    .line 510
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getTodayStep(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    .local v0, "todayStep":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->update(Landroid/content/Context;I)V

    .line 513
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-virtual {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->update(Landroid/content/Context;I)V

    .line 514
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->heartFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-virtual {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->update(Landroid/content/Context;I)V

    .line 515
    return-void
.end method

.method private scanLeDevice(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 288
    if-eqz p1, :cond_0

    .line 289
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const v1, 0x7f0800de

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateStateMessage(Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanState:Z

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mLeScanCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->scanState:Z

    goto :goto_0
.end method

.method private sendNotification()V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const/high16 v10, 0x7f030000

    const/4 v8, 0x0

    .line 1118
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1119
    .local v5, "res":Landroid/content/res/Resources;
    invoke-static {v5, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1120
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1121
    .local v3, "notificationIntent":Landroid/content/Intent;
    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1123
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1124
    .local v1, "manager":Landroid/app/NotificationManager;
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f080205

    .line 1125
    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f0800af

    .line 1126
    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 1127
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1128
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f020289

    .line 1129
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1131
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1132
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1133
    .local v2, "notification":Landroid/app/Notification;
    invoke-virtual {v1, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1134
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 411
    const v0, 0x7f0e0297

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 412
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 415
    return-void
.end method

.method private settingGoogleFit()V
    .locals 3

    .prologue
    .line 1028
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/googlefit/Googlefit;->isGoogleFitEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/fitness/Fitness;->HISTORY_API:Lcom/google/android/gms/common/api/Api;

    .line 1033
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/fitness.activity.write"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/Scope;

    const-string v2, "https://www.googleapis.com/auth/fitness.location.write"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$17;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$17;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 1036
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$16;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$16;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 1047
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->enableAutoManage(Landroid/support/v4/app/FragmentActivity;ILcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 1053
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    goto :goto_0
.end method

.method private showUpgradeDialog(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 18
    .param p1, "dev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    .prologue
    .line 640
    const/4 v5, 0x0

    .line 642
    .local v5, "event":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_start_0
    new-instance v15, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v16

    const-string v17, "02"

    invoke-virtual/range {v15 .. v17}, Lcom/meizu/smart/wristband/models/database/servers/VersionServer;->getVersion(Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 647
    :goto_0
    move-object v7, v5

    .line 649
    .local v7, "finalEvent":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 650
    .local v2, "ad":Landroid/app/AlertDialog;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 651
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v15

    if-nez v15, :cond_0

    .line 652
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 653
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 654
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const v15, 0x7f040076

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 656
    .local v9, "layout":Landroid/view/View;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 657
    .local v14, "window":Landroid/view/Window;
    invoke-virtual {v14, v9}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 658
    const/high16 v15, 0x43960000    # 300.0f

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v15

    const/high16 v16, 0x437a0000    # 250.0f

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Landroid/view/Window;->setLayout(II)V

    .line 659
    const v15, 0x7f0e0091

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ListView;

    .line 660
    .local v10, "listView":Landroid/widget/ListView;
    const v15, 0x7f0e025b

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 661
    .local v11, "rl_cancel":Landroid/widget/RelativeLayout;
    const v15, 0x7f0e0264

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout;

    .line 662
    .local v12, "rl_done":Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$49;->lambdaFactory$(Landroid/app/AlertDialog;)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v11, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v2, v1, v7}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$50;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Landroid/app/AlertDialog;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Lcom/meizu/smart/wristband/models/database/entity/GainEvent;)Landroid/view/View$OnClickListener;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 672
    .local v6, "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/utils/LocaleUtil;->isChinese(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 673
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getCnMsg()Ljava/lang/String;

    move-result-object v13

    .line 674
    .local v13, "str":Ljava/lang/String;
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    :goto_1
    const/4 v15, 0x0

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 680
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v15, 0x7f04007c

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 681
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const/4 v15, 0x0

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 682
    invoke-virtual {v10, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 684
    .end local v3    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6    # "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v9    # "layout":Landroid/view/View;
    .end local v10    # "listView":Landroid/widget/ListView;
    .end local v11    # "rl_cancel":Landroid/widget/RelativeLayout;
    .end local v12    # "rl_done":Landroid/widget/RelativeLayout;
    .end local v13    # "str":Ljava/lang/String;
    .end local v14    # "window":Landroid/view/Window;
    :cond_0
    return-void

    .line 643
    .end local v2    # "ad":Landroid/app/AlertDialog;
    .end local v7    # "finalEvent":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    :catch_0
    move-exception v4

    .line 644
    .local v4, "e":Ljava/sql/SQLException;
    invoke-virtual {v4}, Ljava/sql/SQLException;->printStackTrace()V

    goto/16 :goto_0

    .line 676
    .end local v4    # "e":Ljava/sql/SQLException;
    .restart local v2    # "ad":Landroid/app/AlertDialog;
    .restart local v6    # "explain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "finalEvent":Lcom/meizu/smart/wristband/models/database/entity/GainEvent;
    .restart local v8    # "inflater":Landroid/view/LayoutInflater;
    .restart local v9    # "layout":Landroid/view/View;
    .restart local v10    # "listView":Landroid/widget/ListView;
    .restart local v11    # "rl_cancel":Landroid/widget/RelativeLayout;
    .restart local v12    # "rl_done":Landroid/widget/RelativeLayout;
    .restart local v14    # "window":Landroid/view/Window;
    :cond_1
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/GainEvent;->getEnMsg()Ljava/lang/String;

    move-result-object v13

    .line 677
    .restart local v13    # "str":Ljava/lang/String;
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private syncDeviceData(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 6
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    .line 710
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 711
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$51;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 712
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$52;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 713
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$53;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 714
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 715
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$54;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 716
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$55;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 717
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$56;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 718
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$57;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 719
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$58;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 720
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$59;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 721
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 722
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "sync timeout!"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 723
    invoke-static {v4}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private syncPaceToBand()Lrx/Observable;
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
    .line 983
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getStepOfDay(Landroid/content/Context;Ljava/util/Date;)I

    move-result v0

    .line 984
    .local v0, "step":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncPaceToBand sted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 987
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setStep(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method private syncSettingInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 7
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    const/4 v6, 0x1

    .line 866
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    .line 868
    .local v2, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    iget-boolean v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    if-eqz v5, :cond_1

    .line 869
    const-string v5, "syncSettingInfo to band "

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 874
    const-string v5, "start syncSettingInfo to band "

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 876
    const/4 v4, 0x0

    .line 877
    .local v4, "verCode":I
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v1

    .line 878
    .local v1, "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v1, :cond_0

    .line 879
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getCoreVersion()Ljava/lang/String;

    move-result-object v3

    .line 881
    .local v3, "ver":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 882
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 886
    .end local v3    # "ver":Ljava/lang/String;
    :cond_0
    move v0, v4

    .line 887
    .local v0, "finalVerCode":I
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$84;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;)Lrx/functions/Func1;

    move-result-object v6

    .line 888
    invoke-virtual {v5, v6}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$85;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v6

    .line 889
    invoke-virtual {v5, v6}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$14;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$14;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 890
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$13;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$13;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 908
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$12;

    invoke-direct {v6, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$12;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;I)V

    .line 920
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$11;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 932
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$10;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 940
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$9;

    invoke-direct {v6, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;I)V

    .line 956
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$86;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v6

    .line 971
    invoke-virtual {v5, v6}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v5

    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$8;

    invoke-direct {v6, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    .line 972
    invoke-virtual {v5, v6}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v5

    .end local v0    # "finalVerCode":I
    .end local v1    # "mDev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    .end local v4    # "verCode":I
    :goto_0
    return-object v5

    .line 871
    :cond_1
    const-string v5, "not need syncSettingInfo to band "

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 872
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v5

    goto :goto_0
.end method

.method private uploadLocalData(Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;
    .locals 4
    .param p1, "user"    # Lcom/meizu/smart/wristband/models/database/entity/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/database/entity/User;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1004
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadLocalData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v1

    .line 1017
    .local v1, "uploadNet":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mGoogleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-static {p0, v2, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadGooglefitData(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/Observable;

    move-result-object v0

    .line 1019
    .local v0, "uploadGoogleFit":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Boolean;>;"
    invoke-static {v1, v0}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$15;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$15;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    invoke-virtual {v2, v3}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v2

    .line 1024
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public connectToDevice(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 3
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    .line 790
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    :cond_0
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    .line 806
    :goto_0
    return-object v1

    .line 793
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 795
    .local v0, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0

    .line 799
    :cond_2
    const-string v1, "mainactivity connectToDevice come"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 800
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 801
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$68;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 802
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$69;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 803
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$70;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 804
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 805
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 806
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public connectToDeviceNoScan(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 3
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    .line 817
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 818
    :cond_0
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v1

    .line 833
    :goto_0
    return-object v1

    .line 820
    :cond_1
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 822
    .local v0, "bleServer":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 823
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0

    .line 826
    :cond_2
    const-string v1, "mainactivity connectToDeviceNoScan come"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 827
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    .line 828
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$72;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 829
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$73;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$74;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 831
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$75;->lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v2

    .line 832
    invoke-virtual {v1, v2}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 833
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method public doRefreshlistener()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 559
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnecting:Z

    if-eqz v2, :cond_0

    .line 560
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStop()V

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 563
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 570
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 571
    const/16 v2, 0x3e8

    invoke-static {p0, v2}, Lcom/litesuits/bluetooth/utils/BluetoothUtil;->enableBluetooth(Landroid/app/Activity;I)V

    .line 572
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    .line 636
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/servers/BleServer;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 574
    const-string v2, "Refreshlistener normal "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 575
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$10;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 576
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$11;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 577
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$12;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 578
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$13;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 579
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$14;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 580
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$15;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 581
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$16;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 582
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$17;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 584
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$18;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 585
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$19;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 586
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 587
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0

    .line 588
    :cond_2
    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->isFirstLogin()Z

    move-result v2

    if-ne v2, v4, :cond_3

    .line 589
    const-string v2, "Refreshlistener isFirstLogin "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 590
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bSynSetting:Z

    .line 591
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$20;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 592
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$21;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 593
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$22;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 594
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$23;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 595
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$24;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 596
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$25;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 597
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$26;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action0;

    move-result-object v3

    .line 598
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$27;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 599
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$28;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 600
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$29;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 601
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$30;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 602
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$31;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 603
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 604
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 605
    :cond_3
    if-eqz v0, :cond_5

    .line 606
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    if-eqz v2, :cond_4

    .line 607
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->updateProgressState(I)V

    .line 609
    :cond_4
    const-string v2, "Refreshlistener connect "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 610
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$32;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 611
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$33;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 612
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$34;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 613
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$35;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 614
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$36;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 615
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$37;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action0;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$38;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 617
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$39;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 619
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$40;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 620
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$41;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 622
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    .line 623
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->onErrorResumeNext(Lrx/Observable;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$42;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v3

    .line 624
    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$43;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 625
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$44;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v3

    .line 626
    invoke-virtual {v2, v3}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$45;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 627
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$46;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v3

    .line 628
    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$47;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v3

    .line 629
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$48;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;

    move-result-object v3

    .line 630
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 631
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto/16 :goto_0

    .line 633
    :cond_5
    const-string/jumbo v2, "wxf_auto_connect"

    const-string v3, "5"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iget-object v2, v2, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->finishRefreshingWithError()V

    goto/16 :goto_0
.end method

.method public isBand()Z
    .locals 2

    .prologue
    .line 403
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 404
    .local v0, "device":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTWhours()Z
    .locals 3

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 520
    .local v0, "cv":Landroid/content/ContentResolver;
    const-string v2, "time_12_24"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "strTimeFormat":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 523
    const/4 v2, 0x1

    .line 525
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    .line 136
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mContext:Landroid/content/Context;

    .line 138
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->initView()V

    .line 139
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->setListener()V

    .line 140
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->initServerForRemind()V

    .line 141
    const-string v2, "bluetooth"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothManager;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 142
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->checkGps()V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "broadcast_notify_message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v2, "broadcast_notify_connect_state"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v2, "broadcast_connect_manutal"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v2, "ACTION_AIM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "ACTION_UNIT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v2, "action_tip"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "action_UNBUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "ACTION_GOOGLEFIT_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    invoke-virtual {v2, v3}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lrx/Observable;->subscribe()Lrx/Subscription;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->subscription:Lrx/Subscription;

    .line 215
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 216
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v3

    .line 218
    invoke-virtual {v2, v3}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;

    move-result-object v3

    .line 219
    invoke-virtual {v2, v3}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 220
    invoke-virtual {v2}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 221
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 223
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isBand()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/servers/LoginInfoServer;->isFirstLogin()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 224
    :cond_0
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bFirstSend:Z

    .line 225
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    sget-object v3, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_refrush:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 229
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothStateListener:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 231
    const-string v2, "userId"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "NetworkRelease"

    sget-boolean v3, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/tencent/bugly/crashreport/CrashReport;->putUserData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1141
    const-string v0, "MainActivity is onDestroy"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 1144
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStart:Z

    if-eqz v0, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->autoConnectStop()V

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mBluetoothStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1153
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->telephonyServer:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    if-eqz v0, :cond_1

    .line 1154
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->telephonyServer:Lcom/meizu/smart/wristband/servers/TelephonyServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/TelephonyServer;->stop()V

    .line 1156
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->soundPoolServer:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    if-eqz v0, :cond_2

    .line 1157
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->soundPoolServer:Lcom/meizu/smart/wristband/servers/SoundPoolServer;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/SoundPoolServer;->stop()V

    .line 1159
    :cond_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->subscription:Lrx/Subscription;

    if-eqz v0, :cond_3

    .line 1160
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 1165
    :cond_3
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->release()V

    .line 1168
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->mSmsContentObserver:Lcom/meizu/smart/wristband/servers/SmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1175
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onDestroy()V

    .line 1177
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1090
    packed-switch p1, :pswitch_data_0

    .line 1111
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 1092
    :pswitch_0
    iget-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->exit:Z

    if-eqz v2, :cond_0

    .line 1097
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "intentLauncher":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1099
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1103
    .end local v0    # "intentLauncher":Landroid/content/Intent;
    :cond_0
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->exit:Z

    .line 1104
    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 1105
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$87;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1182
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1183
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->refreshViewPager()V

    .line 1184
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isBand()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isFirstBind:Z

    .line 1186
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->MoveToFirst()V

    .line 1187
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_refrush:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1189
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bFirstSend:Z

    .line 506
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onPause()V

    .line 507
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 458
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onResume()V

    .line 459
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->bleServer:Lcom/meizu/smart/wristband/servers/BleServer;

    .line 460
    const-string v4, "config"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 461
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v4, "checkbox_inch_time"

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isTWhours()Z

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    const-string v4, "showTip"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 467
    .local v3, "showTip":Z
    iget-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->isfirst:Z

    if-eqz v4, :cond_0

    .line 468
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_0
    if-eqz v3, :cond_1

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .local v1, "intent1":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 501
    .end local v1    # "intent1":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public refreshListView(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "updated"    # Z

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, "adapter":Landroid/widget/BaseAdapter;
    packed-switch p1, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 533
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->runSuccessAnimation()V

    goto :goto_0

    .line 537
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->cancelSuccessAnimation()V

    .line 538
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->update(Landroid/content/Context;I)V

    goto :goto_0

    .line 541
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->cancelSuccessAnimation()V

    goto :goto_0

    .line 530
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getMainViewResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->setContentView(I)V

    .line 241
    return-void
.end method

.method protected supplyTabs(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;>;"
    const/4 v5, 0x0

    .line 1060
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const v1, 0x7f0801d8

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00bb

    const v3, 0x7f0d0073

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 1063
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .line 1064
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 1065
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const/4 v1, 0x1

    const v2, 0x7f0801d7

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d00ba

    const v4, 0x7f0d0072

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 1071
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .line 1072
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 1073
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const/4 v1, 0x2

    const v2, 0x7f0801d6

    .line 1076
    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0d00b9

    const v4, 0x7f0d0071

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->haeartRateTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 1079
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->heartFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .line 1080
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->haeartRateTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->heartFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 1081
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->haeartRateTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    return v5
.end method

.method public syncDeviceInfo(Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/Observable;
    .locals 6
    .param p1, "btDev"    # Lcom/meizu/smart/wristband/models/database/entity/BtDev;
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
    .line 843
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 844
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$76;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 846
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$77;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 847
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$78;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;

    move-result-object v1

    .line 848
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$79;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 849
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$80;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 850
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$81;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 851
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$82;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 852
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$83;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 853
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 854
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v2, 0x14

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "sync timeout!"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-static {v4}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public updateHeart()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->heartFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->update(Landroid/content/Context;I)V

    .line 1001
    return-void
.end method

.method public updateSleep()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sleepFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->update(Landroid/content/Context;I)V

    .line 997
    return-void
.end method

.method public updateStep(I)V
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 992
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->sportFragment:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    invoke-virtual {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->update(Landroid/content/Context;I)V

    .line 993
    return-void
.end method
