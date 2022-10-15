.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;
.super Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;
.source "HeartRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
    }
.end annotation


# instance fields
.field private final BASE_HEART_LINE_WIDTH:I

.field private final HEART_CHART_ANIMATION_TIME:I

.field private adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

.field final animation1:Landroid/view/animation/ScaleAnimation;

.field final animation2:Landroid/view/animation/ScaleAnimation;

.field private handler:Landroid/os/Handler;

.field private heartChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private heartFail:Landroid/widget/ImageView;

.field private heartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private heartRateDetail:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private heartRateScale:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

.field private heartrateInfo:Landroid/widget/LinearLayout;

.field private hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

.field private isSuccess:Z

.field private listView:Landroid/widget/ListView;

.field private mHeartAinm:Landroid/graphics/drawable/AnimationDrawable;

.field private mListHeart:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;",
            ">;"
        }
    .end annotation
.end field

.field private measureAgain:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private measureComplete:Z

.field private measureHeart:Landroid/widget/ImageView;

.field private measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private measureTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private measuring:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field public rootView:Landroid/view/View;

.field private sorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureComplete:Z

    .line 73
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->HEART_CHART_ANIMATION_TIME:I

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->isSuccess:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->mListHeart:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f6e147b    # 0.93f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f6e147b    # 0.93f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    .line 98
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f6e147b    # 0.93f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f6e147b    # 0.93f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation2:Landroid/view/animation/ScaleAnimation;

    .line 367
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->BASE_HEART_LINE_WIDTH:I

    .line 508
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->handler:Landroid/os/Handler;

    .line 570
    return-void
.end method

.method private StartMeasureHeartrate()V
    .locals 4

    .prologue
    .line 222
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 223
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "showHeartRateTip"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 225
    .local v0, "bShowHeartRateTip":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->showMeasureTipDlg()V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartRate()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->isSuccess:Z

    return v0
.end method

.method static synthetic access$102(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->isSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartRate()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lcom/github/mikephil/charting/charts/LineChart;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->doChartAnimation()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$setListener$79(Landroid/view/View;Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$setListener$80(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$setListener$81(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$setListener$82(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$setListener$83(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$measureHeartRate$84(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$measureHeartRate$85(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->lambda$measureHeartRate$86(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private checkBle()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const v1, 0x7f0800e9

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 298
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartrateInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureAgain:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartFail:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 303
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measuring:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 311
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatCount(I)V

    .line 312
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setRepeatMode(I)V

    .line 313
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 314
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeart:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 315
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->startNow()V

    .line 317
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->doChartAnimation()V

    .line 318
    return-void
.end method

.method private doChartAnimation()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->animateX(I)V

    .line 505
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    return-void
.end method

.method private gotoHeartRateContent()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method private initChart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 349
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 350
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 351
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 352
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 353
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 354
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 355
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 356
    .local v0, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 357
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 358
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 359
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 360
    .local v1, "y":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 361
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 362
    .local v2, "yr":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 363
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->setData()V

    .line 364
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 365
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v2, 0x7f0e031c

    const v1, 0x7f0e02e6

    .line 113
    const v0, 0x7f0e0278

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->sorllview:Lcom/meizu/smart/wristband/meizuUI/widget/ListScrollView;

    .line 114
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 115
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    .line 117
    const v0, 0x7f0e0313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeart:Landroid/widget/ImageView;

    .line 119
    const v0, 0x7f0e0314

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartrateInfo:Landroid/widget/LinearLayout;

    .line 120
    const v0, 0x7f0e0315

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 122
    const v0, 0x7f0e0317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartFail:Landroid/widget/ImageView;

    .line 123
    const v0, 0x7f0e0316

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureAgain:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 125
    const v0, 0x7f0e0318

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 126
    const v0, 0x7f0e0319

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measuring:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 127
    const v0, 0x7f0e031a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 128
    const v0, 0x7f0e031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartRateDetail:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 130
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartRateScale:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    .line 131
    const v0, 0x7f0e0091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->listView:Landroid/widget/ListView;

    .line 134
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->initChart()V

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->updateHeartRateList(Z)V

    .line 136
    return-void
.end method

.method private synthetic lambda$measureHeartRate$84(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->checkBle()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$measureHeartRate$85(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->doAnimation()V

    return-void
.end method

.method private synthetic lambda$measureHeartRate$86(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p1, "Void"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measure()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$setListener$79(Landroid/view/View;Ljava/lang/Void;)V
    .locals 3
    .param p2, "Void"    # Ljava/lang/Void;

    .prologue
    const v2, 0x7f0e013f

    .line 141
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->setVisibility(I)V

    .line 143
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f02014a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 149
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->setVisibility(I)V

    .line 146
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$80(Ljava/lang/Void;)V
    .locals 4
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 153
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v3, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method private synthetic lambda$setListener$81(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->gotoHeartRateContent()V

    .line 164
    return-void
.end method

.method private synthetic lambda$setListener$82(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->StartMeasureHeartrate()V

    .line 170
    return-void
.end method

.method private synthetic lambda$setListener$83(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->StartMeasureHeartrate()V

    .line 176
    return-void
.end method

.method private measure()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureComplete:Z

    .line 323
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 324
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->getStaticHeartRate()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method private measureHeartRate()V
    .locals 2

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Func1;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    .line 186
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    .line 195
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    .line 205
    invoke-virtual {v0, v1}, Lrx/Observable;->finallyDo(Lrx/functions/Action0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 211
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 212
    return-void
.end method

.method private setData()V
    .locals 15

    .prologue
    const/high16 v14, 0x40c00000    # 6.0f

    const/high16 v13, -0x3e400000    # -24.0f

    const/high16 v12, 0x40400000    # 3.0f

    const/4 v11, 0x0

    const/high16 v10, -0x40800000    # -1.0f

    .line 376
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v7, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v6, "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    const/4 v8, 0x4

    if-ge v4, v8, :cond_3

    .line 382
    mul-int/lit8 v0, v4, 0x64

    .line 383
    .local v0, "base":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x64

    if-ge v2, v8, :cond_0

    .line 384
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 386
    :cond_0
    add-int/lit8 v2, v0, 0x0

    move v3, v2

    .line 387
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v8, v0, 0x14

    if-ge v3, v8, :cond_1

    .line 388
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v11, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_2

    .line 390
    :cond_1
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41400000    # 12.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v10, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v10, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3fc00000    # -3.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v11, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41400000    # 12.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41800000    # 16.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41a00000    # 20.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41c80000    # 25.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41f00000    # 30.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42040000    # 33.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42180000    # 38.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42200000    # 40.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42280000    # 42.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42280000    # 42.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x421c0000    # 39.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x420c0000    # 35.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41f00000    # 30.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41c80000    # 25.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41a00000    # 20.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41700000    # 15.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41200000    # 10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x40a00000    # 5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3f600000    # -5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ee00000    # -10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ea00000    # -14.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e700000    # -18.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e500000    # -22.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v13, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v13, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v13, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e500000    # -22.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e700000    # -18.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ea00000    # -14.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ee00000    # -10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3f600000    # -5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v11, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x40000000    # 2.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x3f800000    # 1.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 443
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_3
    add-int/lit8 v8, v0, 0x64

    if-ge v3, v8, :cond_2

    .line 444
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v11, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_3

    .line 381
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 449
    .end local v0    # "base":I
    .end local v3    # "i":I
    :cond_3
    new-instance v5, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "DataSet 1"

    invoke-direct {v5, v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 450
    .local v5, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCubic(Z)V

    .line 451
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 452
    const/16 v8, 0xf4

    const/16 v9, 0x75

    const/16 v10, 0x75

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 453
    const-string v8, "#FF7F6B"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 454
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 455
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 456
    new-instance v1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v1, v7, v5}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 457
    .local v1, "data":Lcom/github/mikephil/charting/data/LineData;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 458
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 460
    return-void
.end method

.method private setListener(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 139
    const v0, 0x7f0e013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)Lrx/functions/Action1;

    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 151
    const v0, 0x7f0e0287

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 161
    const v0, 0x7f0e031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureAgain:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 177
    return-void
.end method

.method private showMeasureTipDlg()V
    .locals 8

    .prologue
    .line 241
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 242
    .local v3, "inflaterDl":Landroid/view/LayoutInflater;
    const v5, 0x7f0400b5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 247
    .local v4, "layout":Landroid/widget/RelativeLayout;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const v7, 0x7f0a00bc

    invoke-direct {v5, v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 249
    .local v2, "dlgTip":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 250
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 251
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 255
    const v5, 0x7f0e030d

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, "btnOK":Landroid/widget/TextView;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    const v5, 0x7f0e030e

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 267
    .local v0, "btnNomore":Landroid/widget/TextView;
    new-instance v5, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;

    invoke-direct {v5, p0, v2}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

.method private updateHeartRateList(Z)V
    .locals 7
    .param p1, "bScorll"    # Z

    .prologue
    .line 530
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->mListHeart:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 532
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 533
    .local v3, "today":Ljava/util/Date;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v4, v3}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getStaticHeartRateToday(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    .line 535
    .local v1, "heartRates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-nez v1, :cond_0

    .line 561
    :goto_0
    return-void

    .line 537
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 538
    .local v2, "item":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;-><init>()V

    .line 539
    .local v0, "h":Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v5

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;->startTime:Ljava/util/Date;

    .line 540
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;->endTime:Ljava/util/Date;

    .line 541
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;->rate:Ljava/lang/String;

    .line 542
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->mListHeart:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 545
    .end local v0    # "h":Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$HeartRateItem;
    .end local v2    # "item":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_1
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->mListHeart:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Ljava/util/List;)V

    iput-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    .line 546
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;->notifyDataSetChanged()V

    .line 547
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->listView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/HeartRateAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 548
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 105
    const v0, 0x7f0400b9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->rootView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->initView(Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->setListener(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public showContent(Z)V
    .locals 6
    .param p1, "isSuccess"    # Z

    .prologue
    const/4 v5, 0x0

    .line 470
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->animation1:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v3}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 471
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeart:Landroid/widget/ImageView;

    const v4, 0x7f02014e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measuring:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 474
    if-eqz p1, :cond_1

    .line 475
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartrateInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 476
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureAgain:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 478
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 479
    .local v2, "today":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getStaticHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    .line 481
    .local v1, "heartList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 482
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 484
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->hrScaleView:Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getValue()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->setHearRateValue(I)V

    .line 486
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->updateHeartRateList(Z)V

    .line 494
    .end local v0    # "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    .end local v1    # "heartList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v2    # "today":Ljava/util/Date;
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->heartFail:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setBackgroundColor(I)V

    .line 491
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureHeartrate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 492
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->measureTip:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # I

    .prologue
    .line 567
    return-void
.end method
