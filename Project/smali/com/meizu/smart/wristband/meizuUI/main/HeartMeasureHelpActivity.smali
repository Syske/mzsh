.class public Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;
.source "HeartMeasureHelpActivity.java"


# static fields
.field public static final FRAGMENT_NORMAL:I = 0x0

.field public static final FRAGMENT_SPORT:I = 0x1

.field public static final FRAGMENT_STATIC:I = 0x2


# instance fields
.field private iDefaultIndex:I

.field private pointFragment:Landroid/support/v4/app/Fragment;

.field private pointTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

.field private sportFragment:Landroid/support/v4/app/Fragment;

.field private sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

.field private staticFragment:Landroid/support/v4/app/Fragment;

.field private staticTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->iDefaultIndex:I

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->lambda$initView$202(Ljava/lang/Void;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 174
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 175
    return-void
.end method

.method private synthetic lambda$initView$202(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->initView()V

    .line 127
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->iDefaultIndex:I

    .line 130
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->iDefaultIndex:I

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->onPageSelected(I)V

    .line 131
    return-void
.end method

.method protected refreshListView(IZ)V
    .locals 0
    .param p1, "currentItem"    # I
    .param p2, "b"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 170
    const v0, 0x7f04008e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->setContentView(I)V

    .line 171
    return-void
.end method

.method protected supplyTabs(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "tabs":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;>;"
    const v4, 0x7f0d0071

    const v3, 0x7f0d005c

    .line 141
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u70b9\u6d4b\u5fc3\u7387"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->pointTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 145
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/PointHeartHelpFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/PointHeartHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->pointFragment:Landroid/support/v4/app/Fragment;

    .line 146
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->pointTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->pointFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 147
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->pointTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const/4 v1, 0x1

    const-string/jumbo v2, "\u52a8\u6001\u5fc3\u7387"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 153
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/SportHeartHelpFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/SportHeartHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->sportFragment:Landroid/support/v4/app/Fragment;

    .line 154
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->sportFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 155
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->sportTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    const/4 v1, 0x2

    const-string/jumbo v2, "\u9759\u606f\u5fc3\u7387"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->staticTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    .line 161
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/help/StaticHeartHelpFragment;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->staticFragment:Landroid/support/v4/app/Fragment;

    .line 162
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->staticTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->staticFragment:Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;->fragment:Landroid/support/v4/app/Fragment;

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->staticTab:Lcom/meizu/smart/wristband/meizuUI/main/indicator/IndicatorFragmentActivity$TabInfo;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;->iDefaultIndex:I

    return v0
.end method
