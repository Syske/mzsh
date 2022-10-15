.class public Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;
.super Landroid/app/Activity;
.source "PowerActivity.java"


# instance fields
.field private final POWER_DOWN:I

.field private hander:Landroid/os/Handler;

.field private power:I

.field private progressBar:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

.field private tv_percent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->POWER_DOWN:I

    .line 36
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->hander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->progressBar:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    .prologue
    .line 17
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->power:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->tv_percent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->hander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->lambda$setListener$270(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x21

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->power:I

    .line 61
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 54
    const v0, 0x7f0e00e0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->progressBar:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    .line 55
    const v0, 0x7f0e00e1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->tv_percent:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->progressBar:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setProgress(I)V

    .line 57
    return-void
.end method

.method private synthetic lambda$setListener$270(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->finish()V

    return-void
.end method

.method private setAnimation()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->hander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 70
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->setContentView(I)V

    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->initView()V

    .line 30
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->initData()V

    .line 31
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->setListener()V

    .line 32
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->setAnimation()V

    .line 33
    return-void
.end method
