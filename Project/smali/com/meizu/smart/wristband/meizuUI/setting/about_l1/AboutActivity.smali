.class public Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "AboutActivity.java"


# instance fields
.field private updateInfo:Landroid/widget/TextView;

.field private version:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->lambda$initListener$268(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->lambda$initListener$269(Ljava/lang/Void;)V

    return-void
.end method

.method private checkUpdate()V
    .locals 6

    .prologue
    .line 39
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getUpgradeInfo()Lcom/tencent/bugly/beta/UpgradeInfo;

    move-result-object v2

    .line 40
    .local v2, "upgradeInfo":Lcom/tencent/bugly/beta/UpgradeInfo;
    if-nez v2, :cond_0

    .line 41
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->updateInfo:Landroid/widget/TextView;

    const v4, 0x7f0800b2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, v2, Lcom/tencent/bugly/beta/UpgradeInfo;->versionName:Ljava/lang/String;

    .line 44
    .local v1, "strVersion":Ljava/lang/String;
    sget-boolean v3, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-eqz v3, :cond_1

    .line 45
    const-string v3, "\\("

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "arrVersion":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v0, v3

    .line 48
    .end local v0    # "arrVersion":[Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->updateInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6709\u6700\u65b0\u7248\u672c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\u70b9\u51fb\u66f4\u65b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private goUpdate()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->checkUpgrade()V

    .line 76
    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 69
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 71
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 53
    const v2, 0x7f0e0071

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->version:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0e0072

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->updateInfo:Landroid/widget/TextView;

    .line 56
    invoke-static {p0}, Ldolphin/tools/util/AppUtil;->getVerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "strVersion":Ljava/lang/String;
    sget-boolean v2, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    if-eqz v2, :cond_0

    .line 59
    const-string v2, "\\("

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "arrVersion":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v1, v0, v2

    .line 63
    .end local v0    # "arrVersion":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->version:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0800ba

    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method private synthetic lambda$initListener$268(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initListener$269(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->goUpdate()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->initView()V

    .line 33
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->initListener()V

    .line 34
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->checkUpdate()V

    .line 35
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/AboutActivity;->setContentView(I)V

    .line 25
    return-void
.end method
