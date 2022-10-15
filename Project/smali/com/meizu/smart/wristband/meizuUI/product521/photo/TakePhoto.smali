.class public Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "TakePhoto.java"


# instance fields
.field private btnFrontOrBack:Landroid/widget/Button;

.field private carema_id:I

.field private mySurface:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    return-void
.end method

.method static synthetic access$lambda$0(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->lambda$onCreate$234(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->lambda$onCreate$235(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->lambda$onCreate$236(Ljava/lang/Void;)V

    return-void
.end method

.method private handlerTakePic(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "NT+CAMERA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->mySurface:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->tackPicture()V

    goto :goto_0
.end method

.method private static synthetic lambda$onCreate$234(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    const-string v0, "broadcast_notify_message_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$onCreate$235(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->handlerTakePic(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$onCreate$236(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->toggleCamera()V

    return-void
.end method

.method private toggleCamera()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->mySurface:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;->switchCameraById(I)V

    .line 65
    return-void

    .line 61
    :cond_0
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 40
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "broadcast_notify_message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;)Lrx/functions/Action1;

    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 44
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 47
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v1

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/servers/BleServer;->setCameraFlat(I)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 49
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 51
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->btnFrontOrBack:Landroid/widget/Button;

    invoke-static {v1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v1

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;)Lrx/functions/Action1;

    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lrx/Observable;->subscribe()Lrx/Subscription;

    .line 55
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/servers/BleServer;->setCameraFlat(I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 83
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 85
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 86
    return-void
.end method

.method public setView()V
    .locals 3

    .prologue
    .line 27
    const v1, 0x7f040049

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->setContentView(I)V

    .line 28
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->carema_id:I

    invoke-direct {v1, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->mySurface:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    .line 29
    const v1, 0x7f0e01f5

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 30
    .local v0, "rl":Landroid/widget/RelativeLayout;
    const v1, 0x7f0e01f6

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->btnFrontOrBack:Landroid/widget/Button;

    .line 31
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/photo/TakePhoto;->mySurface:Lcom/meizu/smart/wristband/meizuUI/product521/photo/MySurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 32
    return-void
.end method
