.class public Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "PermissonsHelpActivity.java"


# instance fields
.field private iv_down:Landroid/widget/ImageView;

.field private iv_oK:Landroid/widget/ImageView;

.field private iv_up:Landroid/widget/ImageView;

.field private rl_click:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;->lambda$initView$233(Ljava/lang/Void;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 34
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 35
    return-void
.end method

.method private synthetic lambda$initView$233(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->finish()V

    .line 40
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;->initView()V

    .line 30
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f040093

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/product521/PermissonsHelpActivity;->setContentView(I)V

    .line 24
    return-void
.end method
