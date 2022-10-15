.class public Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;
.super Landroid/app/Activity;
.source "NoticeActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->lambda$setListener$317(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->lambda$setListener$318(Ljava/lang/Void;)V

    return-void
.end method

.method private beginToRun()Lrx/Observable;
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
    .line 53
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 55
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->beginToRun()Lrx/Observable;

    move-result-object v1

    .line 57
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    goto :goto_0
.end method

.method private checkGPS()V
    .locals 3

    .prologue
    .line 33
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 34
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    const v2, 0x7f0e01dc

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 37
    .local v0, "btn_continue":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->performClick()Z

    .line 38
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->finish()V

    .line 40
    .end local v0    # "btn_continue":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    :cond_0
    return-void
.end method

.method private gotoRunPre()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->finish()V

    .line 65
    return-void
.end method

.method private synthetic lambda$setListener$317(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$318(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->gotoRunPre()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f0e01db

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 47
    const v0, 0x7f0e01dc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f040044

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->setContentView(I)V

    .line 28
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;->setListener()V

    .line 30
    return-void
.end method
