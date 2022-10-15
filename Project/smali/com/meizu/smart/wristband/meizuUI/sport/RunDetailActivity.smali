.class public Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "RunDetailActivity.java"

# interfaces
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static distance:I

.field static heartRateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation
.end field

.field static mFinish:Z

.field static mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

.field static user:Lcom/meizu/smart/wristband/models/database/entity/User;


# instance fields
.field private final PROGRESS_DOWN:I

.field private final PROGRESS_UP:I

.field private final TIMER_1000:I

.field private count:I

.field private handler:Landroid/os/Handler;

.field private isdown:Z

.field private iv_gps:Landroid/widget/ImageView;

.field runStep:Ljava/lang/Integer;

.field private stop_progress:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

.field private tv_continue:Landroid/widget/TextView;

.field private tv_distance:Landroid/widget/TextView;

.field private tv_finish:Landroid/widget/TextView;

.field private tv_gps_enable:Landroid/widget/TextView;

.field private tv_heart_rate:Landroid/widget/TextView;

.field private tv_map_mode:Landroid/widget/TextView;

.field private tv_speed:Landroid/widget/TextView;

.field private tv_step_freq:Landroid/widget/TextView;

.field private tv_stop:Landroid/widget/TextView;

.field private tv_time_escape:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 64
    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 65
    sput-boolean v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mFinish:Z

    .line 66
    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->heartRateList:Ljava/util/ArrayList;

    .line 181
    sput v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->distance:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->runStep:Ljava/lang/Integer;

    .line 69
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->count:I

    .line 312
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->PROGRESS_DOWN:I

    .line 313
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->PROGRESS_UP:I

    .line 314
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->TIMER_1000:I

    .line 316
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_stop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->stop_progress:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doOnActionDown()V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->gotoChoose()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doOnActionUp()V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->updateData()V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->updataUI()V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$setListener$323(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$setListener$324(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$setListener$325(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$setListener$326(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$setListener$327(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->lambda$stopRun$328(Ljava/lang/Integer;)V

    return-void
.end method

.method private doContinue()V
    .locals 14

    .prologue
    .line 274
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 275
    .local v12, "setLeft":Landroid/view/animation/AnimationSet;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 276
    .local v13, "setRight":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 278
    .local v0, "taleft":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 280
    .local v1, "taright":Landroid/view/animation/TranslateAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 281
    .local v10, "aa":Landroid/view/animation/AlphaAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 282
    .local v11, "aa1":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 283
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 284
    const-wide/16 v2, 0x1f4

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 285
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 286
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 287
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 288
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 289
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 292
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 310
    return-void
.end method

.method private doOnActionDown()V
    .locals 4

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->isdown:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 377
    :cond_0
    return-void
.end method

.method private doOnActionUp()V
    .locals 4

    .prologue
    .line 370
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 371
    return-void
.end method

.method private gotoChoose()V
    .locals 10

    .prologue
    .line 352
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 354
    .local v0, "taleft":Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 356
    .local v1, "taright":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 357
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 358
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_stop:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->stop_progress:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setVisibility(I)V

    .line 362
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 363
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    return-void
.end method

.method private gotoMapMode()V
    .locals 2

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method private initUnit()V
    .locals 3

    .prologue
    .line 155
    sget-boolean v2, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v2, :cond_0

    .line 156
    const v2, 0x7f0e00d7

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 157
    .local v1, "tv_km":Landroid/widget/TextView;
    const v2, 0x7f0e0132

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 158
    .local v0, "tv_dis":Landroid/widget/TextView;
    const v2, 0x7f080252

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const v2, 0x7f0802b8

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "tv_dis":Landroid/widget/TextView;
    .end local v1    # "tv_km":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const v5, 0x7f0e0130

    const v3, 0x7f0e012f

    const/4 v4, 0x0

    .line 114
    const v2, 0x7f0e0139

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_stop:Landroid/widget/TextView;

    .line 115
    const v2, 0x7f0e0138

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->stop_progress:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    .line 116
    const v2, 0x7f0e013a

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    .line 117
    const v2, 0x7f0e013b

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    .line 118
    const v2, 0x7f0e00d5

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_time_escape:Landroid/widget/TextView;

    .line 119
    const v2, 0x7f0e0136

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_speed:Landroid/widget/TextView;

    .line 120
    const v2, 0x7f0e0137

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_step_freq:Landroid/widget/TextView;

    .line 121
    const v2, 0x7f0e00d4

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_distance:Landroid/widget/TextView;

    .line 122
    const v2, 0x7f0e0133

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_heart_rate:Landroid/widget/TextView;

    .line 123
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->iv_gps:Landroid/widget/ImageView;

    .line 124
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_gps_enable:Landroid/widget/TextView;

    .line 125
    const v2, 0x7f0e0131

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_map_mode:Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    .local v1, "tv_gps_enable":Landroid/widget/TextView;
    invoke-virtual {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 130
    .local v0, "iv_gps_enable":Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->isGpsEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const v2, 0x7f08011a

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const v2, 0x7f0200dd

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :goto_0
    new-instance v2, Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;-><init>()V

    sput-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 140
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 141
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStartTime(Ljava/util/Date;)V

    .line 142
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 143
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 144
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 145
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 146
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 147
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreq(Ljava/lang/Integer;)V

    .line 148
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 149
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    .line 150
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    sput-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    .line 151
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    return-void

    .line 134
    :cond_0
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v2, 0x7f0200dc

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$323(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doContinue()V

    return-void
.end method

.method private synthetic lambda$setListener$324(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->saveRunData()Lrx/Observable;

    return-void
.end method

.method private synthetic lambda$setListener$325(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->stopRun()Lrx/Observable;

    return-void
.end method

.method private synthetic lambda$setListener$326(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$327(Ljava/lang/Void;)V
    .locals 0
    .param p1, "a"    # Ljava/lang/Void;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->gotoMapMode()V

    .line 226
    return-void
.end method

.method private static synthetic lambda$stopRun$328(Ljava/lang/Integer;)V
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 267
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreqland(Ljava/lang/Integer;)V

    return-void
.end method

.method private saveRunData()Lrx/Observable;
    .locals 8
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
    .line 240
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 241
    const v4, 0x7f0800f7

    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Ldolphin/tools/util/ToastUtil;->shortShow(Landroid/content/Context;Ljava/lang/String;)V

    .line 242
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v4

    .line 261
    :goto_0
    return-object v4

    .line 245
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getRecords()Ljava/util/List;

    move-result-object v3

    .line 246
    .local v3, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v2, "location1s":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/database/entity/Location1;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 248
    .local v1, "location":Landroid/location/Location;
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/Location1;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/Location1;-><init>()V

    .line 249
    .local v0, "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setTime(Ljava/util/Date;)V

    .line 250
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setX(Ljava/lang/Float;)V

    .line 251
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setY(Ljava/lang/Float;)V

    .line 252
    invoke-virtual {v1}, Landroid/location/Location;->getSpeed()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setSpeed(Ljava/lang/Float;)V

    .line 253
    invoke-virtual {v1}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setDirect(Ljava/lang/Float;)V

    .line 254
    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v5}, Lcom/meizu/smart/wristband/models/database/entity/Location1;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 255
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    .end local v0    # "loc":Lcom/meizu/smart/wristband/models/database/entity/Location1;
    .end local v1    # "location":Landroid/location/Location;
    :cond_1
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setAvgHeart(Ljava/lang/Integer;)V

    .line 259
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget-object v6, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-static {p0, v4, v5, v6, v2}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveRunSport(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/entity/SportReal;Ljava/util/ArrayList;Ljava/util/List;)Lrx/Observable;

    move-result-object v4

    new-instance v5, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v4, v5}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 260
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->stopRecord()V

    .line 261
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_stop:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_continue:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 218
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_finish:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 223
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_map_mode:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 227
    return-void
.end method

.method private stopRun()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p0}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->instance(Landroid/content/Context;)Lcom/meizu/smart/wristband/bluetooth/BleManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServer;->getBleInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/servers/BleServer;

    move-result-object v0

    .line 267
    .local v0, "server":Lcom/meizu/smart/wristband/servers/BleServer;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/servers/BleServer;->stopRun()Lrx/Observable;

    move-result-object v1

    invoke-static {}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$$Lambda$6;->lambdaFactory$()Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 269
    .end local v0    # "server":Lcom/meizu/smart/wristband/servers/BleServer;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private updataUI()V
    .locals 8

    .prologue
    .line 203
    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 204
    .local v0, "time_second":J
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_time_escape:Landroid/widget/TextView;

    long-to-int v3, v0

    invoke-static {v3}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->formatTimeString1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_speed:Landroid/widget/TextView;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getPace()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {p0, v4, v5}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatPaceToString(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_distance:Landroid/widget/TextView;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_step_freq:Landroid/widget/TextView;

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method private updateData()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 192
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->runStep:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setStepCount(Ljava/lang/Integer;)V

    .line 193
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setEndTime(Ljava/util/Date;)V

    .line 195
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v4}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sget-object v6, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 196
    .local v2, "timeEscape":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    long-to-double v4, v4

    div-double/2addr v4, v12

    sget-object v6, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getPace(DI)D

    move-result-wide v0

    .line 197
    .local v0, "pace":D
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v0

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setPace(Ljava/lang/Integer;)V

    .line 198
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->runStep:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    long-to-double v10, v2

    mul-double/2addr v8, v10

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    div-double/2addr v8, v12

    div-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setFreq(Ljava/lang/Integer;)V

    .line 199
    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget-object v5, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    div-long/2addr v6, v2

    long-to-double v6, v6

    const-wide v8, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setSpeed(Ljava/lang/Integer;)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const/4 v2, 0x0

    sput-boolean v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mFinish:Z

    .line 80
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->initView()V

    .line 81
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->initUnit()V

    .line 82
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->setListener()V

    .line 84
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->startRecord()V

    .line 85
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->addListener(Landroid/location/LocationListener;)V

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "broadcast_notify_message"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v0}, Lcom/cantrowitz/rxbroadcast/RxBroadcast;->fromBroadcast(Landroid/content/Context;Landroid/content/IntentFilter;)Lrx/Observable;

    move-result-object v1

    .line 89
    .local v1, "stepObservable":Lrx/Observable;, "Lrx/Observable<Landroid/content/Intent;>;"
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$1;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 100
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 232
    return-void
.end method

.method public onHeartReaded(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 165
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->count:I

    .line 166
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->count:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    .line 167
    new-instance v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;-><init>()V

    .line 168
    .local v0, "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setTime(Ljava/util/Date;)V

    .line 169
    sget-object v1, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->TPYE_RUNTIME:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setType(Ljava/lang/Integer;)V

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setValue(Ljava/lang/Integer;)V

    .line 171
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setUser(Lcom/meizu/smart/wristband/models/database/entity/User;)V

    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->setSync(Ljava/lang/Boolean;)V

    .line 173
    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->heartRateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v0    # "h":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeartReadedtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->tv_heart_rate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 398
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 399
    const/4 v0, 0x1

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getDistance()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->distance:I

    .line 186
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->user:Lcom/meizu/smart/wristband/models/database/entity/User;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    sget-object v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v3, v1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setCalorie(Ljava/lang/Float;)V

    .line 187
    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mSportReal:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->distance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->setDistance(Ljava/lang/Integer;)V

    .line 188
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 417
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 412
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 107
    sget-boolean v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->mFinish:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->getInstance(Landroid/content/Context;)Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/LocationRecordingTools;->stopRecord()V

    .line 109
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->finish()V

    .line 111
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 407
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 382
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 393
    :goto_0
    return v2

    .line 384
    :pswitch_0
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->isdown:Z

    .line 385
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->stop_progress:Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setVisibility(I)V

    .line 386
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doOnActionDown()V

    goto :goto_0

    .line 389
    :pswitch_1
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->isdown:Z

    .line 390
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->doOnActionUp()V

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f040038

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->setContentView(I)V

    .line 74
    return-void
.end method
