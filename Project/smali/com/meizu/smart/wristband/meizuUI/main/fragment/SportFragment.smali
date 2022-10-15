.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;
.super Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;
.source "SportFragment.java"


# static fields
.field public static final ACTION_AIM:Ljava/lang/String; = "ACTION_AIM"


# instance fields
.field private aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private bGetSportAim:Z

.field private bRefreshByManual:Z

.field private bindLayout:Landroid/widget/LinearLayout;

.field private btnBind:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

.field private calorie_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private distance_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private dlgRetry:Landroid/app/AlertDialog;

.field private ivBondHelp:Landroid/widget/ImageView;

.field private ivCup:Landroid/widget/ImageView;

.field public linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

.field private mCurStep:I

.field private mDisconnect:I

.field private mGetAimGif:Landroid/graphics/drawable/AnimationDrawable;

.field private mIvAimGif:Landroid/widget/ImageView;

.field private mIvRun:Landroid/widget/ImageView;

.field private mRunningAinm:Landroid/graphics/drawable/AnimationDrawable;

.field private psRound:Lcom/plattysoft/leonids/ParticleSystem;

.field private psStar:Lcom/plattysoft/leonids/ParticleSystem;

.field public rootView:Landroid/view/View;

.field private scorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

.field private sportAim:I

.field private sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

.field private stepInfo:Landroid/widget/RelativeLayout;

.field private steps:I

.field private subscription:Lrx/Subscription;

.field private totalCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private totalDis:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private totalStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;-><init>()V

    .line 94
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    .line 99
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->psRound:Lcom/plattysoft/leonids/ParticleSystem;

    .line 100
    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->psStar:Lcom/plattysoft/leonids/ParticleSystem;

    .line 102
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    .line 107
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mDisconnect:I

    .line 109
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bRefreshByManual:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mGetAimGif:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->steps:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bRefreshByManual:Z

    return v0
.end method

.method static synthetic access$202(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bRefreshByManual:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mDisconnect:I

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mDisconnect:I

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->showRetryDlg()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->closeBluetooth()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    return v0
.end method

.method static synthetic access$802(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;
    .param p1, "x1"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->saveAim()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$initView$184(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$185(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$186(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$187(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$188(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$189(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->lambda$setListener$190(Ljava/lang/Void;)V

    return-void
.end method

.method private closeBluetooth()V
    .locals 2

    .prologue
    .line 350
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 351
    .local v1, "bluetoothAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 352
    .local v0, "blueToothState":Z
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 355
    :cond_0
    return-void
.end method

.method private gotoBind()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 456
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->FROM_WHERE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 457
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->startActivity(Landroid/content/Intent;)V

    .line 458
    return-void
.end method

.method private gotoBondHelp()V
    .locals 3

    .prologue
    .line 445
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->startActivity(Landroid/content/Intent;)V

    .line 447
    return-void
.end method

.method private gotoSportContent()V
    .locals 3

    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->startActivity(Landroid/content/Intent;)V

    .line 452
    return-void
.end method

.method private gotoSportRun()V
    .locals 4

    .prologue
    .line 430
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 431
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->startActivity(Landroid/content/Intent;)V

    .line 441
    :goto_0
    return-void

    .line 438
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/sport/NoticeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 439
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 133
    const v4, 0x7f0e032c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->stepInfo:Landroid/widget/RelativeLayout;

    .line 134
    const v4, 0x7f0e032a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivCup:Landroid/widget/ImageView;

    .line 135
    const v4, 0x7f0e0330

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 137
    const v4, 0x7f0e0331

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvRun:Landroid/widget/ImageView;

    .line 139
    const v4, 0x7f0e031d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->scorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    .line 141
    const v4, 0x7f0e0335

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bindLayout:Landroid/widget/LinearLayout;

    .line 142
    const v4, 0x7f0e0337

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->btnBind:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    .line 144
    const v4, 0x7f0e0328

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    .line 145
    const v4, 0x7f0e032b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 146
    const v4, 0x7f0e032d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalDis:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 147
    const v4, 0x7f0e032f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 149
    const v4, 0x7f0e0339

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 150
    const v4, 0x7f0e033b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 151
    const v4, 0x7f0e033d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 153
    const v4, 0x7f0e033a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 154
    const v4, 0x7f0e033c

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->distance_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 155
    const v4, 0x7f0e033e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->calorie_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 157
    const v4, 0x7f0e0329

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvAimGif:Landroid/widget/ImageView;

    .line 159
    const v4, 0x7f0e0336

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivBondHelp:Landroid/widget/ImageView;

    .line 161
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v4}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    .line 162
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    const v4, 0x7f0e0090

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .line 172
    const v4, 0x7f0e0332

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 176
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 179
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 180
    .local v0, "BlackSpan":Landroid/text/style/ForegroundColorSpan;
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v1, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 183
    .local v1, "blueSpan":Landroid/text/style/ForegroundColorSpan;
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x21

    invoke-virtual {v2, v0, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 184
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 185
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v4, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvAimGif:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mGetAimGif:Landroid/graphics/drawable/AnimationDrawable;

    .line 189
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvAimGif:Landroid/widget/ImageView;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$1;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 195
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->scorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->setListView(Landroid/view/View;)V

    .line 197
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->scorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$2;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 209
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "broadcast_notify_message"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;

    invoke-direct {v5, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v4, v5}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v4

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v4

    invoke-virtual {v4}, Lrx/Observable;->retry()Lrx/Observable;

    move-result-object v4

    invoke-virtual {v4}, Lrx/Observable;->subscribe()Lrx/Subscription;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->subscription:Lrx/Subscription;

    .line 232
    return-void
.end method

.method private synthetic lambda$initView$184(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "a"    # Ljava/lang/Throwable;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->longShow(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$setListener$185(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->gotoBondHelp()V

    return-void
.end method

.method private synthetic lambda$setListener$186(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->gotoSportRun()V

    return-void
.end method

.method private synthetic lambda$setListener$187(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->gotoSportContent()V

    return-void
.end method

.method private synthetic lambda$setListener$188(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->gotoBind()V

    return-void
.end method

.method private synthetic lambda$setListener$189(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->showSetAimDialog()V

    return-void
.end method

.method private synthetic lambda$setListener$190(Ljava/lang/Void;)V
    .locals 4
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/meizu/smart/wristband/constant/OtherContant;->handler_cmd_refrush:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private saveAim()V
    .locals 6

    .prologue
    .line 527
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 528
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSleepAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "sleepAim":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v0}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    .line 530
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    .line 538
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 553
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 554
    return-void
.end method

.method private showRetryDlg()V
    .locals 5

    .prologue
    .line 306
    const-string v3, "showRetryDlg "

    invoke-static {v3}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 308
    .local v1, "inflaterDl":Landroid/view/LayoutInflater;
    const v3, 0x7f0400b6

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 310
    .local v2, "layout":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 311
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 315
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    .line 316
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 317
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$6;

    invoke-direct {v4, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 327
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 328
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->dlgRetry:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 332
    const v3, 0x7f0e0263

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 333
    .local v0, "btnOK":Landroid/widget/RelativeLayout;
    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$7;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-void
.end method

.method private showSetAimDialog()V
    .locals 11

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->isBand()Z

    move-result v9

    if-nez v9, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v3, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 627
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    .line 628
    .local v5, "layout":Landroid/view/View;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 629
    .local v1, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-nez v9, :cond_0

    .line 630
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 631
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 632
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7f0400a1

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 633
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 635
    const v9, 0x7f0e02f2

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 636
    .local v2, "btn_done":Landroid/widget/ImageButton;
    const v9, 0x7f0e02f6

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 639
    .local v8, "sport_aim":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    const v9, 0x7f0e02f7

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;

    .line 641
    .local v0, "SprotScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;
    const v6, 0x46ea6000    # 30000.0f

    .line 642
    .local v6, "mMaxAim":F
    const/high16 v7, 0x44fa0000    # 2000.0f

    .line 645
    .local v7, "mMinAim":F
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmModType(I)V

    .line 646
    const/16 v9, 0x64

    invoke-virtual {v0, v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmModeBase(I)V

    .line 647
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setmLineDivider(I)V

    .line 648
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    int-to-float v9, v9

    invoke-virtual {v0, v9, v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->initViewParam(FFF)V

    .line 649
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    new-instance v9, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;

    invoke-direct {v9, p0, v8}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$10;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V

    invoke-virtual {v0, v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView$OnValueChangeListener;)V

    .line 659
    new-instance v9, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$11;

    invoke-direct {v9, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$11;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 668
    .end local v0    # "SprotScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/ScaleRulerView;
    .end local v1    # "ad":Landroid/app/AlertDialog;
    .end local v2    # "btn_done":Landroid/widget/ImageButton;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "mMaxAim":F
    .end local v7    # "mMinAim":F
    .end local v8    # "sport_aim":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    :catch_0
    move-exception v9

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelSuccessAnimation()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvAimGif:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    return-void
.end method

.method public isBand()Z
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 127
    .local v0, "device":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 116
    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->rootView:Landroid/view/View;

    .line 117
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .line 118
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->initView(Landroid/view/View;)V

    .line 119
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->setListener(Landroid/view/View;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getUnit(Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->cancelSuccessAnimation()V

    .line 559
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;->onPause()V

    .line 560
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 564
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->isBand()Z

    move-result v0

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bindLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->setPullLayoutIndex(I)V

    .line 574
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->runSuccessAnimation()V

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    .line 579
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;->onResume()V

    .line 583
    return-void

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->setPullLayoutIndex(I)V

    goto :goto_0
.end method

.method public refreshManual()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->refreshManual()V

    .line 238
    :cond_0
    return-void
.end method

.method public refreshSportAim()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 593
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    .line 594
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    if-lt v1, v2, :cond_0

    .line 596
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    .line 597
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v2, 0x7f0800a2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 598
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setProgress(I)V

    .line 600
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->stepInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivCup:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v1, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 603
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->runSuccessAnimation()V

    .line 616
    :goto_0
    return-void

    .line 606
    :cond_0
    iput-boolean v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    .line 607
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "strAimTip":Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    mul-int/lit16 v2, v2, 0x168

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setProgress(I)V

    .line 611
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->stepInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivCup:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v1, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 614
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->cancelSuccessAnimation()V

    goto :goto_0
.end method

.method public runSuccessAnimation()V
    .locals 2

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    if-nez v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvAimGif:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData(Landroid/content/Context;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "step"    # I

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 466
    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    .line 468
    .local v5, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 469
    int-to-long v6, p2

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceByStep(JI)F

    move-result v1

    .line 470
    .local v1, "distance":F
    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-double v6, v6

    invoke-static {v6, v7, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v0

    .line 474
    .local v0, "calorie":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f08014c

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    .local v4, "strDis":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f08014b

    invoke-virtual {p0, v7}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "strCalorie":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalStep:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    int-to-float v7, v7

    int-to-float v8, p2

    invoke-static {v6, v7, v8}, Lcom/meizu/smart/wristband/utils/NumAnim;->startAnim(Landroid/widget/TextView;FF)V

    .line 481
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalDis:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->totalCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v3}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v6}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    .line 485
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mCurStep:I

    .line 487
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvDistance:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {p1, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvCalorie:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {p1, v0}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->distance_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v7, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceTipByDis(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->calorie_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v7, v0}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorieTipByCal(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    if-lt p2, v6, :cond_1

    .line 494
    iput-boolean v11, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    .line 495
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v7, 0x7f0800a2

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 496
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    const/16 v7, 0x168

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setProgress(I)V

    .line 498
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->stepInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 499
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivCup:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v9}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 501
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->runSuccessAnimation()V

    .line 517
    .end local v0    # "calorie":F
    .end local v1    # "distance":F
    .end local v3    # "strCalorie":Ljava/lang/String;
    .end local v4    # "strDis":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 504
    .restart local v0    # "calorie":F
    .restart local v1    # "distance":F
    .restart local v3    # "strCalorie":Ljava/lang/String;
    .restart local v4    # "strDis":Ljava/lang/String;
    :cond_1
    iput-boolean v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->bGetSportAim:Z

    .line 505
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v11, [Ljava/lang/Object;

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "strAimTip":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->aim_tip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    mul-int/lit16 v7, p2, 0x168

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportAim:I

    div-int/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setProgress(I)V

    .line 510
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->stepInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivCup:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvSucess:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v10}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 513
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->cancelSuccessAnimation()V

    goto :goto_0
.end method

.method public setListener(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->ivBondHelp:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 246
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->mIvRun:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 249
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->sportProgress:Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 253
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->btnBind:Lcom/meizu/smart/wristband/meizuUI/font/BaseButton;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 256
    const v0, 0x7f0e0338

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 259
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->tvRetry:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 263
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->setOnRefreshListener(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;I)V

    .line 279
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->linearlayoutRefreshableView:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->setOnRefreshFinishListener(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;I)V

    .line 302
    return-void
.end method

.method public update(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # I

    .prologue
    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->setData(Landroid/content/Context;I)V

    .line 463
    return-void
.end method
