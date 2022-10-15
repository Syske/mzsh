.class public Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "UnbundActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->lambda$setListener$263(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->lambda$setListener$264(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->lambda$setListener$265(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->lambda$setListener$266(Ljava/lang/Void;)V

    return-void
.end method

.method private synthetic lambda$setListener$263(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->unbind()V

    return-void
.end method

.method private synthetic lambda$setListener$264(Ljava/lang/Void;)V
    .locals 1
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 39
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->finish()V

    .line 41
    return-void
.end method

.method private synthetic lambda$setListener$265(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$266(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0e01f9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 43
    const v0, 0x7f0e01fa

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 46
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 48
    return-void
.end method

.method private unbind()V
    .locals 5

    .prologue
    .line 51
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->setAutoConnect(ZLjava/lang/String;)Z

    .line 52
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/servers/BleServer;->disConnect()V

    .line 53
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 54
    .local v0, "dev":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/BtDev;->getProductor()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/meizu/smart/wristband/servers/ModelSettingManager;->commitMac(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 55
    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->unBindDevice(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    .line 56
    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServer;->releaseInstance()V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->setListener()V

    .line 31
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/UnbundActivity;->setContentView(I)V

    .line 25
    return-void
.end method
