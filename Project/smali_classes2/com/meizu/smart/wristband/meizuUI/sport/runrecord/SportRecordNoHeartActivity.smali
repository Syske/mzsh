.class public Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportRecordNoHeartActivity.java"


# instance fields
.field private tv_distance:Landroid/widget/TextView;

.field private tv_pace:Landroid/widget/TextView;

.field private tv_step_kcal:Landroid/widget/TextView;

.field private tv_time_escape:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->lambda$setListener$342(Ljava/lang/Void;)V

    return-void
.end method

.method private initData()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method private initUnit()V
    .locals 2

    .prologue
    .line 45
    sget-boolean v1, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v1, :cond_0

    .line 46
    const v1, 0x7f0e00d7

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    .local v0, "tv_km":Landroid/widget/TextView;
    const-string v1, "Distance(mi)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .end local v0    # "tv_km":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    const v1, 0x7f0e00d4

    .line 38
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->tv_pace:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->tv_time_escape:Landroid/widget/TextView;

    .line 40
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->tv_distance:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0e00d8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->tv_step_kcal:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method private synthetic lambda$setListener$342(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->finish()V

    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 33
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->initView()V

    .line 27
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->initUnit()V

    .line 28
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->initData()V

    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->setListener()V

    .line 30
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 20
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordNoHeartActivity;->setContentView(I)V

    .line 21
    return-void
.end method
