.class public Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "AerobicExplainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;->lambda$onCreate$297(Ljava/lang/Void;)V

    return-void
.end method

.method private synthetic lambda$onCreate$297(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 24
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;->setContentView(I)V

    .line 17
    return-void
.end method
