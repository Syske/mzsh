.class public Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "RunPreActivity.java"


# instance fields
.field private count:I

.field private handler:Landroid/os/Handler;

.field private tv_count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->count:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->count:I

    return v0
.end method

.method static synthetic access$010(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    .prologue
    .line 19
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->count:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->count:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->tv_count:Landroid/widget/TextView;

    return-object v0
.end method

.method private gotoRunDetailActivity()V
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->finish()V

    .line 93
    return-void
.end method

.method private initAnimation()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 48
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 50
    .local v0, "sa":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 51
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 86
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->tv_count:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 87
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->tv_count:Landroid/widget/TextView;

    .line 40
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->initView()V

    .line 35
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->initAnimation()V

    .line 36
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity;->setContentView(I)V

    .line 27
    return-void
.end method
