.class public Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "RunActivity.java"


# instance fields
.field final alphaDuration:I

.field private iv_animation:Landroid/widget/ImageView;

.field private iv_gps:Landroid/widget/ImageView;

.field final scaleDuration:I

.field private tv_gps_enable:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 75
    const/16 v0, 0x320

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->scaleDuration:I

    .line 76
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->alphaDuration:I

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->lambda$setListener$319(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->lambda$setListener$320(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->lambda$setListener$321(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->lambda$setListener$322(Ljava/lang/Void;)V

    return-void
.end method

.method private beginToRun()V
    .locals 3

    .prologue
    .line 117
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 119
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->beginToRun()Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 120
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 123
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->gotoRunPre()V

    .line 124
    return-void
.end method

.method private checkGPS()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 142
    const-string v2, "location"

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 143
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 148
    :goto_0
    return-object v2

    .line 146
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->startActivity(Landroid/content/Intent;)V

    .line 148
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method private gotoHistory()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method private gotoProduct()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->startActivity(Landroid/content/Intent;)V

    .line 134
    return-void
.end method

.method private gotoRunPre()V
    .locals 2

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method private initAnimation()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 80
    .local v10, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 82
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 83
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x708

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 84
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 85
    invoke-virtual {v0, v11}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 87
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 88
    .local v9, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 89
    const-wide/16 v2, 0x3e8

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    const-wide/16 v2, 0x320

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 92
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 93
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->iv_animation:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 95
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 68
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 69
    .local v0, "locationManager":Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->tv_gps_enable:Landroid/widget/TextView;

    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->iv_gps:Landroid/widget/ImageView;

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 73
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    const v4, 0x7f0e0130

    const v3, 0x7f0e012f

    .line 48
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->iv_animation:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->iv_gps:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->tv_gps_enable:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 54
    .local v1, "tv_gps_enable":Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 56
    .local v0, "iv_gps_enable":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const v2, 0x7f08011a

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const v2, 0x7f0200dd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const v2, 0x7f0200dc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$319(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->checkGPS()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$320(Ljava/lang/Void;)V
    .locals 0
    .param p1, "b"    # Ljava/lang/Void;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->beginToRun()V

    return-void
.end method

.method private synthetic lambda$setListener$321(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$322(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/HistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 98
    const v0, 0x7f0e01e3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;)Lrx/functions/Func1;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 101
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 104
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 107
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 114
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->initView()V

    .line 42
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->initData()V

    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->initAnimation()V

    .line 44
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->setListener()V

    .line 45
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f040046

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunActivity;->setContentView(I)V

    .line 36
    return-void
.end method
