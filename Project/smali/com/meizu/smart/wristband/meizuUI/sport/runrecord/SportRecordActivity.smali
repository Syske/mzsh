.class public Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportRecordActivity.java"


# static fields
.field private static final FILE_SAVEPATH:Ljava/lang/String; = "sport_record_share.png"


# instance fields
.field private bdView:Lcom/baidu/mapapi/map/MapView;

.field private handler:Landroid/os/Handler;

.field private iconPathString:Ljava/lang/String;

.field private llShareButton:Landroid/widget/LinearLayout;

.field private ll_info:Landroid/widget/LinearLayout;

.field private ll_share:Landroid/widget/LinearLayout;

.field private ll_share_info:Landroid/widget/LinearLayout;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Location1;",
            ">;"
        }
    .end annotation
.end field

.field mBaiPolyline:Lcom/baidu/mapapi/map/Polyline;

.field private mContext:Landroid/content/Context;

.field private paceHis:Ljava/lang/String;

.field private realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

.field private rl_share:Landroid/widget/RelativeLayout;

.field private rl_vift_logo:Landroid/widget/LinearLayout;

.field private snapshotHolder:Landroid/widget/ImageView;

.field private tv_avg_heart_rate:Landroid/widget/TextView;

.field private tv_avg_heart_rate1:Landroid/widget/TextView;

.field private tv_calorie:Landroid/widget/TextView;

.field private tv_calorie1:Landroid/widget/TextView;

.field private tv_day_tip:Landroid/widget/TextView;

.field private tv_distance:Landroid/widget/TextView;

.field private tv_distance1:Landroid/widget/TextView;

.field private tv_pace:Landroid/widget/TextView;

.field private tv_pace1:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_time1:Landroid/widget/TextView;

.field private tv_time_length:Landroid/widget/TextView;

.field private tv_time_length1:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->locations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/baidu/mapapi/map/MapView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lcom/meizu/smart/wristband/models/database/entity/SportReal;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->calZoomSize()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->snapshotHolder:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->getCutScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->iconPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->iconPathString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->showShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->ll_share_info:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->lambda$initListener$339(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->lambda$initListener$340(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->lambda$initListener$341(Ljava/lang/Void;)V

    return-void
.end method

.method private baiduPoint()V
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private calZoomSize()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/map/BaiduMap;->setOnMapLoadedCallback(Lcom/baidu/mapapi/map/BaiduMap$OnMapLoadedCallback;)V

    goto :goto_0
.end method

.method private createShareImage()V
    .locals 2

    .prologue
    .line 603
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$9;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    .line 698
    .local v0, "callback2":Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->snapshot(Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V

    .line 699
    return-void
.end method

.method private getCutScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 409
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->rl_share:Landroid/widget/RelativeLayout;

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->getBitmappath(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->iconPathString:Ljava/lang/String;

    .line 410
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-static {p0, v1}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 411
    .local v0, "ta":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 412
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 413
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->ll_share:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->snapshotHolder:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/mapapi/map/MapView;->setVisibility(I)V

    .line 416
    return-void
.end method

.method private initData()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/high16 v10, 0x447a0000    # 1000.0f

    .line 483
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_distance:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time_length:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString2(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 488
    .local v2, "min":I
    if-gtz v2, :cond_0

    .line 489
    const/4 v2, 0x1

    .line 491
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 492
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v3, v10

    float-to-double v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->paceHis:Ljava/lang/String;

    .line 493
    int-to-double v6, v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v7, v3}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getPace(DI)D

    move-result-wide v4

    .line 494
    .local v4, "pace":D
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_pace:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v10

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "calorie":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_calorie:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getAvgHeart()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 501
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getAvgHeart()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat18:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 507
    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_day_tip:Landroid/widget/TextView;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void

    .line 503
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate:Landroid/widget/TextView;

    const-string v6, "--"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initData_share()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    const/high16 v10, 0x447a0000    # 1000.0f

    .line 513
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_distance1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToStringForRun(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time_length1:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v6}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v8}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString2(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    div-long/2addr v6, v12

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    long-to-int v2, v6

    .line 518
    .local v2, "min":I
    if-gtz v2, :cond_0

    .line 519
    const/4 v2, 0x1

    .line 521
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v3, "0.00"

    invoke-direct {v1, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 522
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v3, v10

    float-to-double v6, v3

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->paceHis:Ljava/lang/String;

    .line 523
    int-to-double v6, v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getDistance()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v6, v7, v3}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getPace(DI)D

    move-result-wide v4

    .line 524
    .local v4, "pace":D
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_pace1:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getCalorie()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v10

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "calorie":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_calorie1:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getAvgHeart()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 531
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate1:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v7}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getAvgHeart()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    :goto_0
    return-void

    .line 533
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate1:Landroid/widget/TextView;

    const-string v6, "--"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 541
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 542
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 544
    const v0, 0x7f0e01df

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 545
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 550
    const v0, 0x7f0e02cc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 551
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 555
    const v0, 0x7f0e0162

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    const v0, 0x7f0e0163

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    const v0, 0x7f0e02ca

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    const v0, 0x7f0e02cb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$7;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    const v0, 0x7f0e0166

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$8;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$8;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    return-void
.end method

.method private initUnit()V
    .locals 2

    .prologue
    .line 476
    sget-boolean v1, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v1, :cond_0

    .line 477
    const v1, 0x7f0e00d7

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 478
    .local v0, "tv_km":Landroid/widget/TextView;
    const-string v1, "Distance(mi)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    .end local v0    # "tv_km":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 449
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time:Landroid/widget/TextView;

    .line 450
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time_length:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_pace:Landroid/widget/TextView;

    .line 452
    const v0, 0x7f0e00c0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_calorie:Landroid/widget/TextView;

    .line 453
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_distance:Landroid/widget/TextView;

    .line 454
    const v0, 0x7f0e01e1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate:Landroid/widget/TextView;

    .line 455
    const v0, 0x7f0e015e

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->rl_vift_logo:Landroid/widget/LinearLayout;

    .line 456
    const v0, 0x7f0e0161

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->ll_share:Landroid/widget/LinearLayout;

    .line 457
    const v0, 0x7f0e014d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->rl_share:Landroid/widget/RelativeLayout;

    .line 458
    const v0, 0x7f0e015f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_day_tip:Landroid/widget/TextView;

    .line 461
    const v0, 0x7f0e02c5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_time_length1:Landroid/widget/TextView;

    .line 462
    const v0, 0x7f0e02c6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_pace1:Landroid/widget/TextView;

    .line 463
    const v0, 0x7f0e02c7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_calorie1:Landroid/widget/TextView;

    .line 464
    const v0, 0x7f0e02c4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_distance1:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f0e02c8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->tv_avg_heart_rate1:Landroid/widget/TextView;

    .line 468
    const v0, 0x7f0e01e0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->ll_info:Landroid/widget/LinearLayout;

    .line 471
    const v0, 0x7f0e02c3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->ll_share_info:Landroid/widget/LinearLayout;

    .line 473
    return-void
.end method

.method private synthetic lambda$initListener$339(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$initListener$340(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 546
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->createShareImage()V

    .line 547
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->llShareButton:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 548
    return-void
.end method

.method private synthetic lambda$initListener$341(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->llShareButton:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    return-void
.end method

.method private showShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iconPathString"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 721
    if-eqz p1, :cond_0

    .line 722
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "\u751f\u6210\u56fe\u7247\u4e2d..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 744
    .end local v0    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 729
    :cond_0
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 730
    .local v1, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 731
    const-string v2, "Have a look now!"

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 733
    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->ExistSDCard()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSDFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 734
    invoke-virtual {v1, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v1, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 737
    :cond_1
    invoke-virtual {v1, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 739
    if-eqz p2, :cond_2

    .line 740
    invoke-virtual {v1, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 742
    :cond_2
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;-><init>()V

    invoke-virtual {v1, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 743
    invoke-virtual {v1, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private takeSnapshot3()V
    .locals 2

    .prologue
    .line 390
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 405
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;)V

    .line 402
    .local v0, "callback2":Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/map/MapView;->getMap()Lcom/baidu/mapapi/map/BaiduMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/map/BaiduMap;->snapshot(Lcom/baidu/mapapi/map/BaiduMap$SnapshotReadyCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/SDKInitializer;->initialize(Landroid/content/Context;)V

    .line 112
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    iput-object p0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->mContext:Landroid/content/Context;

    .line 116
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetDensity(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "KEY_REALSPORT_ID"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 120
    .local v1, "sportID":I
    const-string v2, "pace"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->paceHis:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getRunSport(Landroid/content/Context;Ljava/lang/Integer;)Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    .line 122
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getStartTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->realSport:Lcom/meizu/smart/wristband/models/database/entity/SportReal;

    invoke-virtual {v3}, Lcom/meizu/smart/wristband/models/database/entity/SportReal;->getEndTime()Ljava/util/Date;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/meizu/smart/wristband/servers/DBLocationApi;->getLocations(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->locations:Ljava/util/List;

    .line 123
    const v2, 0x7f0e01dd

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->snapshotHolder:Landroid/widget/ImageView;

    .line 127
    const v2, 0x7f0e01de

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/map/MapView;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    .line 129
    const v2, 0x7f0e02c9

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->llShareButton:Landroid/widget/LinearLayout;

    .line 146
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->baiduPoint()V

    .line 155
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->initView()V

    .line 157
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->initData()V

    .line 158
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->initData_share()V

    .line 159
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->initListener()V

    .line 160
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->handler:Landroid/os/Handler;

    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onDestroy()V

    .line 433
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onDestroy()V

    .line 434
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 438
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onLowMemory()V

    .line 440
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onPause()V

    .line 427
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onPause()V

    .line 428
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onResume()V

    .line 421
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/map/MapView;->onResume()V

    .line 422
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 444
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 445
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->bdView:Lcom/baidu/mapapi/map/MapView;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/map/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    return-void
.end method

.method public optimizePoints(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "inPoint":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/mapapi/model/LatLng;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 280
    .local v10, "size":I
    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 303
    :goto_0
    return-object p1

    .line 283
    :cond_0
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const/4 v11, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v6, v12, v14

    .line 284
    .local v6, "latitude":D
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const/4 v11, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .line 285
    .local v8, "longitude":D
    new-instance v2, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v2, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 286
    .local v2, "latLng0":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v6, v12, v14

    .line 289
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v8, v12, v14

    .line 290
    new-instance v3, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v3, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 291
    .local v3, "latLng1":Lcom/baidu/mapapi/model/LatLng;
    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v6, v12, v14

    .line 294
    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    div-double v8, v12, v14

    .line 295
    new-instance v4, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 296
    .local v4, "latLng2":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->latitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v6, v12, v14

    .line 299
    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    add-int/lit8 v11, v10, -0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v0, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    add-double/2addr v12, v14

    add-int/lit8 v11, v10, -0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/mapapi/model/LatLng;

    iget-wide v14, v11, Lcom/baidu/mapapi/model/LatLng;->longitude:D

    sub-double/2addr v12, v14

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    div-double v8, v12, v14

    .line 300
    new-instance v5, Lcom/baidu/mapapi/model/LatLng;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/baidu/mapapi/model/LatLng;-><init>(DD)V

    .line 301
    .local v5, "latLng3":Lcom/baidu/mapapi/model/LatLng;
    add-int/lit8 v11, v10, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v11, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 106
    const v0, 0x7f040097

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/runrecord/SportRecordActivity;->setContentView(I)V

    .line 107
    return-void
.end method
