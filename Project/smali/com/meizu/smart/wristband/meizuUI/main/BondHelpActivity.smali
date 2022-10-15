.class public Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "BondHelpActivity.java"


# instance fields
.field private iv_down:Landroid/widget/ImageView;

.field private iv_oK:Landroid/widget/ImageView;

.field private iv_up:Landroid/widget/ImageView;

.field private rl_click:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;->lambda$initView$201(Ljava/lang/Void;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 35
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 36
    return-void
.end method

.method private synthetic lambda$initView$201(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 40
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->finish()V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;->initView()V

    .line 31
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f04008c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/BondHelpActivity;->setContentView(I)V

    .line 25
    return-void
.end method
