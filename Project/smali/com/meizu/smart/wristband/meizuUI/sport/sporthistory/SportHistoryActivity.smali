.class public Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportHistoryActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    }
.end annotation


# static fields
.field private static COLOR_AEROBIC:Ljava/lang/String;

.field private static COLOR_AEROBIC_PRESS:Ljava/lang/String;

.field private static COLOR_ANAEROBIC:Ljava/lang/String;

.field private static COLOR_ANAEROBIC_PRESS:Ljava/lang/String;

.field private static stat_data_unit_day:I

.field private static stat_data_unit_month:I

.field private static stat_data_unit_week:I


# instance fields
.field private HOURS:[Ljava/lang/String;

.field private MONTH:[Ljava/lang/String;

.field private btn_minus:Landroid/widget/ImageButton;

.field private btn_plus:Landroid/widget/ImageButton;

.field private colors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isFirstShowMonth:Z

.field private isFirstShowWeek:Z

.field private ll_total_burnt:Landroid/widget/LinearLayout;

.field private ll_total_data:Landroid/widget/LinearLayout;

.field private ll_total_title:Landroid/widget/LinearLayout;

.field private mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mHandler:Landroid/os/Handler;

.field private mHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private mWidth:I

.field private right_count_day:I

.field private right_count_month:I

.field private right_count_week:I

.field private sCountDay:F

.field private sCountMonth:F

.field private sCountWeek:F

.field private selectIndex:I

.field private selectedDate:Ljava/util/Date;

.field private sport_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;",
            ">;"
        }
    .end annotation
.end field

.field private stat_data_unit:I

.field private text_item_o2:Landroid/widget/TextView;

.field private text_item_rest:Landroid/widget/TextView;

.field private text_item_run:Landroid/widget/TextView;

.field private text_item_walk:Landroid/widget/TextView;

.field private titleIsShowing:Z

.field private tv_dis:Landroid/widget/TextView;

.field private tv_heat:Landroid/widget/TextView;

.field private tv_rest_dis:Landroid/widget/TextView;

.field private tv_rest_heat:Landroid/widget/TextView;

.field private tv_sport_dis:Landroid/widget/TextView;

.field private tv_sport_kacl:Landroid/widget/TextView;

.field private tv_sport_o2_dis:Landroid/widget/TextView;

.field private tv_sport_o2_heat:Landroid/widget/TextView;

.field private tv_sport_o2_min:Landroid/widget/TextView;

.field private tv_sport_rest_min:Landroid/widget/TextView;

.field private tv_sport_run_dis:Landroid/widget/TextView;

.field private tv_sport_run_heat:Landroid/widget/TextView;

.field private tv_sport_run_min:Landroid/widget/TextView;

.field private tv_sport_step:Landroid/widget/TextView;

.field private tv_sport_walk_dis:Landroid/widget/TextView;

.field private tv_sport_walk_heat:Landroid/widget/TextView;

.field private tv_sport_walk_min:Landroid/widget/TextView;

.field private tv_step:Landroid/widget/TextView;

.field private tv_time:Landroid/widget/TextView;

.field private tv_title_title_dis:Landroid/widget/TextView;

.field private tv_title_title_heat:Landroid/widget/TextView;

.field private tv_title_title_step:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    .line 62
    const/4 v0, 0x1

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    .line 477
    const-string v0, "#f6a800"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC:Ljava/lang/String;

    .line 478
    const-string v0, "#d9780e"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC:Ljava/lang/String;

    .line 479
    const-string v0, "#f7e0ad"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC_PRESS:Ljava/lang/String;

    .line 480
    const-string v0, "#facd9d"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC_PRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 47
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 64
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    .line 70
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v4

    const-string v1, "01"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "02"

    aput-object v2, v0, v1

    const-string v1, "03"

    aput-object v1, v0, v5

    const-string v1, "04"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "05"

    aput-object v2, v0, v1

    const-string v1, "06"

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const-string v2, "07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "08"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->HOURS:[Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    .line 73
    iput v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    .line 74
    iput v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    .line 75
    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    .line 633
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowWeek:Z

    .line 634
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowMonth:Z

    .line 716
    iput-boolean v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->titleIsShowing:Z

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$onCreate$343()V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$344(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$345(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$346(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$347(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$348(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$6(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$setListener$349(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$7(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$showWeekChart$350()V

    return-void
.end method

.method static synthetic access$lambda$8(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->lambda$showMonthChart$351()V

    return-void
.end method

.method private getColors(Z)Ljava/util/List;
    .locals 6
    .param p1, "hasData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 483
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 485
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 486
    if-eqz p1, :cond_4

    .line 487
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v3, v4, :cond_1

    .line 488
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    sub-int v1, v3, v4

    .line 494
    :cond_0
    :goto_1
    if-ne v0, v1, :cond_3

    .line 495
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC_PRESS:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC_PRESS:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 485
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_1
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    if-ne v3, v4, :cond_2

    .line 490
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    sub-int v1, v3, v4

    goto :goto_1

    .line 491
    :cond_2
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    if-ne v3, v4, :cond_0

    .line 492
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    sub-int v1, v3, v4

    goto :goto_1

    .line 498
    :cond_3
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 499
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 502
    :cond_4
    mul-int/lit8 v3, v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 503
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 506
    :cond_5
    return-object v2
.end method

.method private initChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 3
    .param p1, "mChart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    const/4 v2, 0x0

    .line 429
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 431
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 432
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 433
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 434
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 435
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 436
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 437
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 438
    .local v0, "xLabels":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v1, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 439
    const-string v1, "#8D8D8D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 440
    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 441
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 442
    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 443
    return-void
.end method

.method private initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I
    .locals 12
    .param p1, "mChart"    # Lcom/github/mikephil/charting/charts/BarChart;
    .param p2, "hasColor"    # Z

    .prologue
    const/4 v11, 0x0

    .line 446
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v6, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 448
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v7, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 454
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;

    iget-object v8, v8, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 455
    .local v4, "val1":F
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;

    iget-object v8, v8, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    .line 456
    .local v5, "val2":F
    new-instance v8, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v9, 0x2

    new-array v9, v9, [F

    aput v4, v9, v11

    const/4 v10, 0x1

    aput v5, v9, v10

    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/BarEntry;-><init>([FI)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 459
    .end local v4    # "val1":F
    .end local v5    # "val2":F
    :cond_1
    new-instance v3, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v8, "Statistics Vienna 2014"

    invoke-direct {v3, v7, v8}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 460
    .local v3, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-direct {p0, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getColors(Z)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    .line 461
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 462
    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual {v3, v8}, Lcom/github/mikephil/charting/data/BarDataSet;->setBarSpacePercent(F)V

    .line 463
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 464
    invoke-virtual {v3, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v0, v6, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 471
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 472
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 473
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    return v8
.end method

.method private initData()V
    .locals 26

    .prologue
    .line 119
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    .line 120
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    .line 122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 123
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v15

    .line 129
    .local v15, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    :goto_0
    if-eqz v15, :cond_1f

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_1f

    .line 130
    const/16 v19, 0xb

    .line 131
    .local v19, "time_field":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 132
    const/16 v19, 0x6

    .line 140
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 141
    .local v6, "clStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 142
    .local v5, "clEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 143
    .local v7, "clitem":Ljava/util/Calendar;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v17, v0

    .line 144
    .local v17, "start":Ljava/util/Date;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 145
    .local v8, "end":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 146
    invoke-static/range {v17 .. v17}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    invoke-static {v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 162
    :cond_0
    :goto_2
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 163
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    :cond_1
    const/16 v16, 0x0

    .line 165
    .local v16, "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_4
    new-instance v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)V

    .line 166
    .local v9, "hour":Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    .line 167
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    .line 168
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dur:Ljava/lang/String;

    .line 169
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    .line 170
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dis:Ljava/lang/String;

    .line 171
    const-string v21, "0"

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dis_o2:Ljava/lang/String;

    .line 174
    const-string/jumbo v12, "xxx"

    .line 175
    .local v12, "lable":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/meizu/smart/wristband/utils/SystemUtil;->getLanguage(Landroid/content/Context;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    const/4 v10, 0x1

    .line 176
    .local v10, "isChinese":Z
    :goto_5
    if-eqz v10, :cond_13

    .line 177
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 178
    .local v4, "cToday":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    .line 179
    .local v20, "today":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 180
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 181
    const-string/jumbo v12, "\u4eca\u5929"

    .line 248
    :goto_6
    if-nez v16, :cond_1d

    .line 249
    new-instance v14, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v14}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 250
    .local v14, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 251
    iput-object v14, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v14    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_7
    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 124
    .end local v4    # "cToday":Ljava/util/Calendar;
    .end local v5    # "clEnd":Ljava/util/Calendar;
    .end local v6    # "clStart":Ljava/util/Calendar;
    .end local v7    # "clitem":Ljava/util/Calendar;
    .end local v8    # "end":Ljava/util/Date;
    .end local v9    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    .end local v10    # "isChinese":Z
    .end local v11    # "j":I
    .end local v12    # "lable":Ljava/lang/String;
    .end local v15    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    .end local v16    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v17    # "start":Ljava/util/Date;
    .end local v19    # "time_field":I
    .end local v20    # "today":Ljava/util/Date;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 125
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    goto/16 :goto_0

    .line 127
    .end local v15    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v15

    .restart local v15    # "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    goto/16 :goto_0

    .line 133
    .restart local v19    # "time_field":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 134
    const/16 v19, 0x3

    goto/16 :goto_1

    .line 136
    :cond_5
    const/16 v19, 0x2

    goto/16 :goto_1

    .line 150
    .restart local v5    # "clEnd":Ljava/util/Calendar;
    .restart local v6    # "clStart":Ljava/util/Calendar;
    .restart local v7    # "clitem":Ljava/util/Calendar;
    .restart local v8    # "end":Ljava/util/Date;
    .restart local v17    # "start":Ljava/util/Date;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 151
    invoke-static/range {v17 .. v17}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 152
    invoke-static {v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 154
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2

    .line 155
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 156
    invoke-static/range {v17 .. v17}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 157
    invoke-static {v8}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_2

    .line 163
    .restart local v11    # "j":I
    :cond_8
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-object/from16 v16, v21

    goto/16 :goto_4

    .line 175
    .restart local v9    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    .restart local v12    # "lable":Ljava/lang/String;
    .restart local v16    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 183
    .restart local v4    # "cToday":Ljava/util/Calendar;
    .restart local v10    # "isChinese":Z
    .restart local v20    # "today":Ljava/util/Date;
    :cond_a
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 184
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 185
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 186
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 187
    const-string/jumbo v12, "\u672c\u5468"

    goto/16 :goto_6

    .line 188
    :cond_c
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 189
    const-string/jumbo v12, "\u4e0a\u5468"

    goto/16 :goto_6

    .line 191
    :cond_d
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v13, v21, v22

    .line 192
    .local v13, "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v18, v21, v22

    .line 193
    .local v18, "sun":Ljava/util/Date;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 194
    goto/16 :goto_6

    .line 196
    .end local v13    # "mon":Ljava/util/Date;
    .end local v18    # "sun":Ljava/util/Date;
    :cond_e
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v13, v21, v22

    .line 197
    .restart local v13    # "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v18, v21, v22

    .line 198
    .restart local v18    # "sun":Ljava/util/Date;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 199
    goto/16 :goto_6

    .line 201
    .end local v13    # "mon":Ljava/util/Date;
    .end local v18    # "sun":Ljava/util/Date;
    :cond_f
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 202
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    .line 203
    const-string/jumbo v12, "\u672c\u6708"

    goto/16 :goto_6

    .line 204
    :cond_10
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 205
    const-string/jumbo v12, "\u4e0a\u6708"

    goto/16 :goto_6

    .line 207
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    aget-object v12, v21, v22

    goto/16 :goto_6

    .line 209
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    aget-object v12, v21, v22

    goto/16 :goto_6

    .line 212
    .end local v4    # "cToday":Ljava/util/Calendar;
    .end local v20    # "today":Ljava/util/Date;
    :cond_13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 213
    .restart local v4    # "cToday":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    .line 214
    .restart local v20    # "today":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 215
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat6:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 216
    const-string v12, "Today"

    goto/16 :goto_6

    .line 218
    :cond_14
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_6

    .line 219
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    move/from16 v21, v0

    sget v22, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_19

    .line 220
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 221
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 222
    const-string v12, "This Week"

    goto/16 :goto_6

    .line 223
    :cond_16
    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 224
    const-string v12, "Last Week"

    goto/16 :goto_6

    .line 226
    :cond_17
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v13, v21, v22

    .line 227
    .restart local v13    # "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v18, v21, v22

    .line 228
    .restart local v18    # "sun":Ljava/util/Date;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 229
    goto/16 :goto_6

    .line 231
    .end local v13    # "mon":Ljava/util/Date;
    .end local v18    # "sun":Ljava/util/Date;
    :cond_18
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x0

    aget-object v13, v21, v22

    .line 232
    .restart local v13    # "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v21

    const/16 v22, 0x1

    aget-object v18, v21, v22

    .line 233
    .restart local v18    # "sun":Ljava/util/Date;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 234
    goto/16 :goto_6

    .line 236
    .end local v13    # "mon":Ljava/util/Date;
    .end local v18    # "sun":Ljava/util/Date;
    :cond_19
    sget-object v21, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    sget-object v22, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat14:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 237
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 238
    const-string v12, "This Month"

    goto/16 :goto_6

    .line 239
    :cond_1a
    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1b

    .line 240
    const-string v12, "Last Month"

    goto/16 :goto_6

    .line 242
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    aget-object v12, v21, v22

    goto/16 :goto_6

    .line 244
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    aget-object v12, v21, v22

    goto/16 :goto_6

    .line 257
    :cond_1d
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 258
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v21

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1e

    .line 259
    new-instance v14, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {v14}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 260
    .restart local v14    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v14, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 261
    iput-object v14, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 267
    .end local v14    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_1e
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    .line 268
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsstep:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    .line 269
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dur:Ljava/lang/String;

    .line 270
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dur_o2:Ljava/lang/String;

    .line 271
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dis:Ljava/lang/String;

    .line 272
    move-object/from16 v0, v16

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->dis_o2:Ljava/lang/String;

    .line 273
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    .line 280
    .end local v4    # "cToday":Ljava/util/Calendar;
    .end local v5    # "clEnd":Ljava/util/Calendar;
    .end local v6    # "clStart":Ljava/util/Calendar;
    .end local v7    # "clitem":Ljava/util/Calendar;
    .end local v8    # "end":Ljava/util/Date;
    .end local v9    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    .end local v10    # "isChinese":Z
    .end local v11    # "j":I
    .end local v12    # "lable":Ljava/lang/String;
    .end local v16    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v17    # "start":Ljava/util/Date;
    .end local v19    # "time_field":I
    .end local v20    # "today":Ljava/util/Date;
    :cond_1f
    return-void
.end method

.method private initUnit()V
    .locals 7

    .prologue
    .line 411
    sget-boolean v5, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->unit_length_Metric:Z

    if-nez v5, :cond_0

    .line 412
    const v5, 0x7f0e01d3

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 413
    .local v1, "tv_km1":Landroid/widget/TextView;
    const v5, 0x7f0e01ba

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 414
    .local v2, "tv_m1":Landroid/widget/TextView;
    const v5, 0x7f0e01be

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 415
    .local v3, "tv_m2":Landroid/widget/TextView;
    const v5, 0x7f0e01c3

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 416
    .local v4, "tv_m3":Landroid/widget/TextView;
    const v5, 0x7f0e01cc

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 417
    .local v0, "km":Landroid/widget/TextView;
    const-string v5, "mi"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const-string v5, "ft"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    const-string v5, "ft"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    const-string v5, "ft"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const-string v5, "mi"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    .end local v0    # "km":Landroid/widget/TextView;
    .end local v1    # "tv_km1":Landroid/widget/TextView;
    .end local v2    # "tv_m1":Landroid/widget/TextView;
    .end local v3    # "tv_m2":Landroid/widget/TextView;
    .end local v4    # "tv_m3":Landroid/widget/TextView;
    :cond_0
    invoke-static {p0}, Lcom/meizu/smart/wristband/utils/LocaleUtil;->isChinese(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 424
    const v5, 0x7f0e01d0

    invoke-virtual {p0, v5}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 426
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 374
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 375
    const v0, 0x7f0e018a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 376
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 377
    const v0, 0x7f0e0086

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_time:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0e01b8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_step:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0e01d2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_dis:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f0e01d6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_heat:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f0e01b9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_dis:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0e01bb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_min:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f0e01bc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_heat:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f0e01bd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_dis:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f0e01bf

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_min:Landroid/widget/TextView;

    .line 386
    const v0, 0x7f0e01c0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_heat:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_dis:Landroid/widget/TextView;

    .line 388
    const v0, 0x7f0e01c4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_min:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f0e01c5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_heat:Landroid/widget/TextView;

    .line 390
    const v0, 0x7f0e01c6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_dis:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f0e01c8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_rest_min:Landroid/widget/TextView;

    .line 392
    const v0, 0x7f0e01c9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_heat:Landroid/widget/TextView;

    .line 393
    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_dis:Landroid/widget/TextView;

    .line 394
    const v0, 0x7f0e01d4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_step:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_heat:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_walk:Landroid/widget/TextView;

    .line 397
    const v0, 0x7f0e01d8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_run:Landroid/widget/TextView;

    .line 398
    const v0, 0x7f0e01d9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_o2:Landroid/widget/TextView;

    .line 399
    const v0, 0x7f0e01da

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_rest:Landroid/widget/TextView;

    .line 400
    const v0, 0x7f0e0192

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_minus:Landroid/widget/ImageButton;

    .line 401
    const v0, 0x7f0e0193

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_plus:Landroid/widget/ImageButton;

    .line 402
    const v0, 0x7f0e01cb

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_title:Landroid/widget/LinearLayout;

    .line 403
    const v0, 0x7f0e01ce

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_burnt:Landroid/widget/LinearLayout;

    .line 404
    const v0, 0x7f0e01cd

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_data:Landroid/widget/LinearLayout;

    .line 405
    const v0, 0x7f0e01b4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_dis:Landroid/widget/TextView;

    .line 406
    const v0, 0x7f0e0171

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_step:Landroid/widget/TextView;

    .line 407
    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_kacl:Landroid/widget/TextView;

    .line 408
    return-void
.end method

.method private synthetic lambda$onCreate$343()V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWidth:I

    .line 112
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountDay:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 113
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 114
    return-void
.end method

.method private synthetic lambda$setListener$344(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 514
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 515
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 516
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->finish()V

    .line 517
    return-void
.end method

.method private synthetic lambda$setListener$345(Ljava/lang/Void;)V
    .locals 2
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/explain/AerobicExplainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 522
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 523
    return-void
.end method

.method private synthetic lambda$setListener$346(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$347(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->onMinusClick()V

    return-void
.end method

.method private synthetic lambda$setListener$348(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->onPlusClick()V

    return-void
.end method

.method private synthetic lambda$setListener$349(Ljava/lang/Void;)V
    .locals 6
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 536
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/share/SportShareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    if-ne v2, v3, :cond_1

    .line 538
    const-string v2, "STATE_UNIT_KEY"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 543
    :cond_0
    :goto_0
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 544
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;

    iget-object v1, v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 545
    .local v1, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    const-string v2, "STATE_UNIT_VALUE"

    iget-object v3, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 550
    .end local v1    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->startActivity(Landroid/content/Intent;)V

    .line 551
    return-void

    .line 539
    :cond_1
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    if-ne v2, v3, :cond_0

    .line 540
    const-string v2, "STATE_UNIT_KEY"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 547
    :cond_2
    const-string v2, "STATE_UNIT_VALUE"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1
.end method

.method private synthetic lambda$showMonthChart$351()V
    .locals 5

    .prologue
    .line 667
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    .line 668
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountMonth:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 669
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 670
    return-void
.end method

.method private synthetic lambda$showWeekChart$350()V
    .locals 5

    .prologue
    .line 644
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    .line 645
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountWeek:F

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWidth:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 646
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 647
    return-void
.end method

.method private onMinusClick()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    .line 556
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    if-ne v0, v1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 559
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v0, v1, :cond_2

    .line 560
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_plus:Landroid/widget/ImageButton;

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 561
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 562
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 563
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showWeekChart()V

    .line 570
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->resetText()V

    goto :goto_0

    .line 564
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    if-ne v0, v1, :cond_1

    .line 565
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_minus:Landroid/widget/ImageButton;

    const v1, 0x7f02029f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 566
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 567
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 568
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showMonthChart()V

    goto :goto_1
.end method

.method private onPlusClick()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 574
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    .line 575
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v0, v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 578
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    if-ne v0, v1, :cond_3

    .line 579
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    .line 580
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->titleIsShowing:Z

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_data:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_title:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 583
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_burnt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 584
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->titleIsShowing:Z

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_plus:Landroid/widget/ImageButton;

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 587
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 589
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 590
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    .line 591
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 598
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->resetText()V

    goto :goto_0

    .line 592
    :cond_3
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    if-ne v0, v1, :cond_2

    .line 593
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_minus:Landroid/widget/ImageButton;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 594
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 596
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showWeekChart()V

    goto :goto_1
.end method

.method private resetText()V
    .locals 3

    .prologue
    .line 602
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v1, v2, :cond_1

    .line 603
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_dis:Landroid/widget/TextView;

    const v2, 0x7f0802b0

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_step:Landroid/widget/TextView;

    const v2, 0x7f0802b2

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_heat:Landroid/widget/TextView;

    const v2, 0x7f0802b1

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_walk:Landroid/widget/TextView;

    const v2, 0x7f0802d4

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_run:Landroid/widget/TextView;

    const v2, 0x7f080146

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_o2:Landroid/widget/TextView;

    const v2, 0x7f080274

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_rest:Landroid/widget/TextView;

    const v2, 0x7f08022d

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    :goto_0
    const/4 v0, 0x0

    .line 620
    .local v0, "index":I
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v1, v2, :cond_2

    .line 621
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    sub-int v0, v1, v2

    .line 622
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_time:Landroid/widget/TextView;

    const v2, 0x7f0802ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 630
    :cond_0
    :goto_1
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showDetail(I)V

    .line 631
    return-void

    .line 611
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_dis:Landroid/widget/TextView;

    const v2, 0x7f0802d7

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_step:Landroid/widget/TextView;

    const v2, 0x7f0802d9

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_title_title_heat:Landroid/widget/TextView;

    const v2, 0x7f0802d8

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_walk:Landroid/widget/TextView;

    const v2, 0x7f0800b7

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_run:Landroid/widget/TextView;

    const v2, 0x7f0800b6

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_o2:Landroid/widget/TextView;

    const v2, 0x7f0800b4

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->text_item_rest:Landroid/widget/TextView;

    const v2, 0x7f0800b5

    invoke-virtual {p0, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 623
    .restart local v0    # "index":I
    :cond_2
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    if-ne v1, v2, :cond_3

    .line 624
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    sub-int v0, v1, v2

    .line 625
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_time:Landroid/widget/TextView;

    const v2, 0x7f0802bd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 626
    :cond_3
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    if-ne v1, v2, :cond_0

    .line 627
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    sub-int v0, v1, v2

    .line 628
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_time:Landroid/widget/TextView;

    const v2, 0x7f0802b3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1
.end method

.method private setColors(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 692
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 693
    if-ne v0, p1, :cond_0

    .line 694
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 695
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 692
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_ANAEROBIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->COLOR_AEROBIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 701
    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 512
    const v0, 0x7f0e01ca

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 513
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 519
    const v0, 0x7f0e01c1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 525
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$4;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 528
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_minus:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$5;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 529
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 531
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->btn_plus:Landroid/widget/ImageButton;

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$6;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 532
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 534
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$7;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 552
    return-void
.end method

.method private showDetail(I)V
    .locals 3
    .param p1, "xIndex"    # I

    .prologue
    .line 705
    if-gez p1, :cond_1

    .line 714
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;

    .line 709
    .local v0, "hour":Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    iget-object v1, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectedDate:Ljava/util/Date;

    .line 710
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->updateUI(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V

    .line 711
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-eq v1, v2, :cond_0

    .line 712
    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showTitle(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V

    goto :goto_0
.end method

.method private showMonthChart()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 660
    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_month:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    .line 661
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowMonth:Z

    if-eqz v1, :cond_0

    .line 662
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowMonth:Z

    .line 663
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 664
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    move-result v0

    .line 665
    .local v0, "xCount":I
    int-to-float v1, v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_month:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountMonth:F

    .line 666
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$9;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    .end local v0    # "xCount":I
    :goto_0
    return-void

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 673
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    .line 674
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    goto :goto_0
.end method

.method private showTitle(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V
    .locals 8
    .param p1, "tag"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .prologue
    const/4 v2, 0x0

    .line 719
    iget v1, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    if-eqz v1, :cond_1

    .line 720
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->titleIsShowing:Z

    if-nez v1, :cond_0

    .line 721
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_title:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 722
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_data:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 723
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->ll_total_burnt:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 724
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->titleIsShowing:Z

    .line 726
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_dis:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getKilogram(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_step:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_kacl:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_1
    return-void
.end method

.method private showWeekChart()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 637
    sget v1, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_week:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    .line 638
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowWeek:Z

    if-eqz v1, :cond_0

    .line 639
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->isFirstShowWeek:Z

    .line 640
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 641
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    move-result v0

    .line 642
    .local v0, "xCount":I
    int-to-float v1, v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_week:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountWeek:F

    .line 643
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$8;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 657
    .end local v0    # "xCount":I
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 650
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    .line 651
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    goto :goto_0
.end method

.method private updateUI(Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;)V
    .locals 8
    .param p1, "ss"    # Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .prologue
    .line 283
    if-eqz p1, :cond_5

    .line 284
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit:I

    sget v6, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v6, :cond_2

    .line 285
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_step:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_dis:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    div-int/lit8 v5, v5, 0x50

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v4, v5, 0x3c

    .line 291
    .local v4, "walktime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkstep:I

    if-nez v5, :cond_0

    .line 292
    const/4 v4, 0x0

    .line 294
    :cond_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_min:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v3, v5, 0x3c

    .line 300
    .local v3, "runtime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runstep:I

    if-nez v5, :cond_1

    .line 301
    const/4 v3, 0x0

    .line 303
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_min:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicsdistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_min:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicscalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runtime:I

    sub-int/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walktime:I

    sub-int v2, v5, v6

    .line 310
    .local v2, "restTime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->rundistance:I

    sub-int/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkdistance:I

    sub-int v0, v5, v6

    .line 311
    .local v0, "restDis":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->runcalorie:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->walkcalorie:F

    sub-float v1, v5, v6

    .line 313
    .local v1, "restKcal":F
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_rest_min:Landroid/widget/TextView;

    add-int v6, v4, v3

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->aerobicstime:I

    add-int/2addr v6, v7

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_dis:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .end local v0    # "restDis":I
    .end local v1    # "restKcal":F
    .end local v2    # "restTime":I
    .end local v3    # "runtime":I
    .end local v4    # "walktime":I
    :goto_0
    return-void

    .line 321
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_step:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgstep:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_dis:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgdistance:I

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgcalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkdistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkstep:I

    div-int/lit8 v5, v5, 0x50

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v4, v5, 0x3c

    .line 328
    .restart local v4    # "walktime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkstep:I

    if-nez v5, :cond_3

    .line 329
    const/4 v4, 0x0

    .line 331
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_min:Landroid/widget/TextView;

    invoke-static {p0, v4}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkcalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrundistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrunstep:I

    div-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v3, v5, 0x3c

    .line 337
    .restart local v3    # "runtime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrunstep:I

    if-nez v5, :cond_4

    .line 338
    const/4 v3, 0x0

    .line 340
    :cond_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_min:Landroid/widget/TextView;

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgruncalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_dis:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicsdistance:I

    invoke-static {v7}, Lcom/meizu/smart/wristband/meizuUI/setting/UnitUtil;->getMeter(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_min:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicstime:I

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgaerobicscalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgtime:I

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgruntime:I

    sub-int/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalktime:I

    sub-int v2, v5, v6

    .line 347
    .restart local v2    # "restTime":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgdistance:I

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgrundistance:I

    sub-int/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkdistance:I

    sub-int v0, v5, v6

    .line 348
    .restart local v0    # "restDis":I
    iget v5, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgcalorie:F

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgruncalorie:F

    sub-float/2addr v5, v6

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgwalkcalorie:F

    sub-float v1, v5, v6

    .line 349
    .restart local v1    # "restKcal":F
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_rest_min:Landroid/widget/TextView;

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_dis:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgdistance:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-float v6, v6

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_rest_heat:Landroid/widget/TextView;

    iget v6, p1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->avgcalorie:F

    invoke-static {p0, v6}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "restDis":I
    .end local v1    # "restKcal":F
    .end local v2    # "restTime":I
    .end local v3    # "runtime":I
    .end local v4    # "walktime":I
    :cond_5
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_step:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_dis:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_heat:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_dis:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_min:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_walk_heat:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_dis:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_min:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_run_heat:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_dis:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_min:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_sport_o2_heat:Landroid/widget/TextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initView()V

    .line 95
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initUnit()V

    .line 96
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initData()V

    .line 98
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->setListener()V

    .line 99
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 100
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mWeekChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 101
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mMonthChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 105
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mDayChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->initChartData(Lcom/github/mikephil/charting/charts/BarChart;Z)I

    move-result v0

    .line 106
    .local v0, "xCountDay":I
    int-to-float v1, v0

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->sCountDay:F

    .line 107
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->right_count_day:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showDetail(I)V

    .line 108
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectedDate:Ljava/util/Date;

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    .line 110
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 737
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 3
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 685
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->setColors(I)V

    .line 686
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->tv_time:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->mHours:Ljava/util/List;

    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->selectIndex:I

    .line 688
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->showDetail(I)V

    .line 689
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f040043

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/sporthistory/SportHistoryActivity;->setContentView(I)V

    .line 88
    return-void
.end method
