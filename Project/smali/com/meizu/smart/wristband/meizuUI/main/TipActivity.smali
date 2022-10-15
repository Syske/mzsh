.class public Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "TipActivity.java"


# instance fields
.field private iv_down:Landroid/widget/ImageView;

.field private iv_oK:Landroid/widget/ImageView;

.field private iv_up:Landroid/widget/ImageView;

.field private rl_click:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->lambda$initView$203(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->lambda$initView$204(Ljava/lang/Void;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 36
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->iv_oK:Landroid/widget/ImageView;

    .line 39
    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->rl_click:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->rl_click:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 54
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->iv_oK:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 55
    return-void
.end method

.method private synthetic lambda$initView$203(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initView$204(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    const-string v2, "config"

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 61
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "showTip"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->finish()V

    .line 64
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->initView()V

    .line 33
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 26
    const v0, 0x7f04002f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/TipActivity;->setContentView(I)V

    .line 27
    return-void
.end method
