.class public Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
    }
.end annotation


# static fields
.field private static COLOR_STEP:Ljava/lang/String;

.field private static COLOR_STEP_PRESS:Ljava/lang/String;

.field private static stat_data_unit_day:I

.field private static stat_data_unit_month:I

.field private static stat_data_unit_week:I


# instance fields
.field private MONTH:[Ljava/lang/String;

.field private RIGHT_COUNT_DAY:I

.field private RIGHT_COUNT_MONTH:I

.field private RIGHT_COUNT_WEEK:I

.field private burnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private burnTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

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

.field private dateInfo:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private date_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private distanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private distanceTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

.field private mChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mDayCount:I

.field private mHandler:Landroid/os/Handler;

.field private mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

.field private selectIndex:I

.field private sportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;",
            ">;"
        }
    .end annotation
.end field

.field private sport_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;",
            ">;"
        }
    .end annotation
.end field

.field private sporttimeCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sporttimeTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private stat_data_unit:I

.field private stepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private stepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private x_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    .line 59
    const/4 v0, 0x2

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_month:I

    .line 520
    const-string v0, "#ace3e9"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP:Ljava/lang/String;

    .line 521
    const-string v0, "#59c8d3"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 60
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    .line 61
    const/16 v0, 0x16c

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_DAY:I

    .line 62
    const/16 v0, 0x35

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_WEEK:I

    .line 63
    const/16 v0, 0xb

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_MONTH:I

    .line 719
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->lambda$setListener$352(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->lambda$setListener$353(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->lambda$initChartData$354()V

    return-void
.end method

.method private getColors(Z)Ljava/util/List;
    .locals 4
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
    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 532
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 533
    if-eqz p1, :cond_1

    .line 534
    if-ne v0, v1, :cond_0

    .line 535
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 532
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 537
    :cond_0
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 540
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 543
    :cond_2
    return-object v2
.end method

.method private gotoSportShare()V
    .locals 6

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 123
    const-string/jumbo v2, "\u65e0\u8fd0\u52a8\u6570\u636e\uff0c\u65e0\u6cd5\u5206\u4eab"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    iget-object v1, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 130
    .local v1, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    if-eqz v2, :cond_1

    .line 131
    const-string v3, "SPORT_DATE_INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u603b\u6b65\u6570"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "SPORT_STEP"

    iget v3, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v2, "SPORT_TIME"

    iget v3, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v2, "SPORT_DISTANCE"

    iget v3, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v2, "SPORT_CALORIE"

    iget v3, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    :cond_1
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 7
    .param p1, "mChart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 599
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 601
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 602
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 603
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 604
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 605
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 606
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 609
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 610
    .local v1, "xLabels":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 611
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 612
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 613
    const-string v3, "#ace3e9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 614
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v6, v3}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 615
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setSpaceBetweenLabels(I)V

    .line 617
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 618
    .local v2, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    const v3, 0x461c4000    # 10000.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 619
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceBottom(F)V

    .line 620
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 622
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;

    const v3, 0x7f0400bf

    invoke-direct {v0, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;-><init>(Landroid/content/Context;I)V

    .line 623
    .local v0, "mv":Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 625
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 626
    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 627
    return-void
.end method

.method private initChartData(Z)I
    .locals 14
    .param p1, "hasColor"    # Z

    .prologue
    const/4 v11, 0x0

    .line 372
    const/16 v4, 0x1f40

    .line 373
    .local v4, "nMax":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v8, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 375
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    iget-object v9, v9, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 376
    .local v6, "val1":F
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-direct {v9, v6, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    .end local v6    # "val1":F
    :cond_0
    new-instance v5, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v9, " "

    invoke-direct {v5, v8, v9}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 380
    .local v5, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->getColors(Z)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->colors:Ljava/util/List;

    .line 381
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->colors:Ljava/util/List;

    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 382
    invoke-virtual {v5, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 383
    const/high16 v9, 0x42700000    # 60.0f

    invoke-virtual {v5, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setBarSpacePercent(F)V

    .line 384
    invoke-virtual {v5, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-direct {v0, v9, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 391
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYMax()F

    move-result v9

    float-to-int v9, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 392
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v7

    .line 393
    .local v7, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    add-int/lit16 v9, v4, 0x3e8

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 414
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    .line 415
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x64

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 446
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 447
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 448
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v10, 0x7d0

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 451
    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v2, v9, v11}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 452
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 455
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    return v9
.end method

.method private initData()V
    .locals 34

    .prologue
    .line 144
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    .line 145
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    .line 146
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    .line 148
    const/16 v23, 0x0

    .line 149
    .local v23, "time_field":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 150
    const/16 v23, 0x6

    .line 156
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 157
    .local v6, "clStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 158
    .local v5, "clEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 161
    .local v7, "clitem":Ljava/util/Calendar;
    new-instance v27, Ljava/util/Date;

    invoke-direct/range {v27 .. v27}, Ljava/util/Date;-><init>()V

    .line 164
    .local v27, "today":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 166
    invoke-static/range {v27 .. v27}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 167
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_DAY:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 169
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 187
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 188
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    .line 196
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-lez v28, :cond_1a

    .line 197
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sportList list size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 200
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1a

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ne v13, v0, :cond_9

    :cond_2
    const/16 v19, 0x0

    .line 202
    .local v19, "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 204
    .local v4, "cToday":Ljava/util/Calendar;
    const-string/jumbo v14, "xxx"

    .line 205
    .local v14, "lable":Ljava/lang/String;
    const/16 v17, 0x1

    .line 207
    .local v17, "nDayCount":I
    new-instance v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V

    .line 208
    .local v11, "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    .line 209
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    .line 210
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->dur:Ljava/lang/String;

    .line 211
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step_o2:Ljava/lang/String;

    .line 212
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->dis:Ljava/lang/String;

    .line 213
    const-string v28, "0"

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->dis_o2:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 217
    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v15

    .line 218
    .local v15, "maxDay":I
    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 219
    const-string/jumbo v14, "\u4eca\u5929"

    .line 226
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    sget-object v29, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v15    # "maxDay":I
    :goto_6
    if-nez v19, :cond_17

    .line 287
    new-instance v18, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 288
    .local v18, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 289
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v18    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_7
    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 151
    .end local v4    # "cToday":Ljava/util/Calendar;
    .end local v5    # "clEnd":Ljava/util/Calendar;
    .end local v6    # "clStart":Ljava/util/Calendar;
    .end local v7    # "clitem":Ljava/util/Calendar;
    .end local v11    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
    .end local v13    # "j":I
    .end local v14    # "lable":Ljava/lang/String;
    .end local v17    # "nDayCount":I
    .end local v19    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    .end local v27    # "today":Ljava/util/Date;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 152
    const/16 v23, 0x3

    goto/16 :goto_0

    .line 154
    :cond_4
    const/16 v23, 0x2

    goto/16 :goto_0

    .line 171
    .restart local v5    # "clEnd":Ljava/util/Calendar;
    .restart local v6    # "clStart":Ljava/util/Calendar;
    .restart local v7    # "clitem":Ljava/util/Calendar;
    .restart local v27    # "today":Ljava/util/Date;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 174
    invoke-static/range {v27 .. v27}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 175
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_WEEK:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 178
    invoke-static/range {v27 .. v27}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 179
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_month:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static/range {v27 .. v27}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 182
    invoke-static/range {v27 .. v27}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v28, v28, v29

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->RIGHT_COUNT_MONTH:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 189
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 190
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    goto/16 :goto_2

    .line 191
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_month:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 192
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    goto/16 :goto_2

    .line 201
    .restart local v13    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sportList:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-object/from16 v19, v28

    goto/16 :goto_4

    .line 220
    .restart local v4    # "cToday":Ljava/util/Calendar;
    .restart local v11    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
    .restart local v14    # "lable":Ljava/lang/String;
    .restart local v15    # "maxDay":I
    .restart local v17    # "nDayCount":I
    .restart local v19    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_a
    const/16 v28, 0x6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    const/16 v28, 0x6

    .line 221
    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x6

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int v29, v29, v15

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 222
    :cond_b
    const-string/jumbo v14, "\u6628\u5929"

    goto/16 :goto_5

    .line 224
    :cond_c
    sget-object v28, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13c:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    .line 227
    .end local v15    # "maxDay":I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 231
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 232
    const-string/jumbo v14, "\u672c\u5468"

    .line 249
    :goto_8
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v16, v28, v29

    .line 250
    .local v16, "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v22, v28, v29

    .line 251
    .local v22, "sun":Ljava/util/Date;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v8

    .line 252
    .local v8, "daySportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-eqz v8, :cond_e

    .line 253
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    .line 256
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "-"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 233
    .end local v8    # "daySportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    .end local v16    # "mon":Ljava/util/Date;
    .end local v22    # "sun":Ljava/util/Date;
    :cond_f
    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    const/16 v28, 0x3

    .line 234
    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int/lit8 v29, v29, 0x35

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 235
    :cond_10
    const-string/jumbo v14, "\u4e0a\u5468"

    goto/16 :goto_8

    .line 237
    :cond_11
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v16, v28, v29

    .line 238
    .restart local v16    # "mon":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v22, v28, v29

    .line 239
    .restart local v22    # "sun":Ljava/util/Date;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "-"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_8

    .line 263
    .end local v16    # "mon":Ljava/util/Date;
    .end local v22    # "sun":Ljava/util/Date;
    :cond_12
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 264
    const-string/jumbo v14, "\u672c\u6708"

    .line 275
    :goto_9
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v10, v28, v29

    .line 276
    .local v10, "first":Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v28

    const/16 v29, 0x1

    aget-object v9, v28, v29

    .line 277
    .local v9, "end":Ljava/util/Date;
    move-object/from16 v0, p0

    invoke-static {v0, v10, v9}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v8

    .line 278
    .restart local v8    # "daySportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    if-eqz v8, :cond_13

    .line 279
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v17

    .line 281
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v30

    aget-object v29, v29, v30

    invoke-interface/range {v28 .. v29}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 265
    .end local v8    # "daySportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    .end local v9    # "end":Ljava/util/Date;
    .end local v10    # "first":Ljava/util/Date;
    :cond_14
    const/16 v28, 0x2

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_15

    const/16 v28, 0x2

    .line 266
    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    add-int/lit8 v29, v29, 0xc

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 267
    :cond_15
    const-string/jumbo v14, "\u4e0a\u6708"

    goto :goto_9

    .line 269
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    aget-object v14, v28, v29

    goto/16 :goto_9

    .line 295
    :cond_17
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 297
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_18

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_19

    .line 298
    :cond_18
    new-instance v18, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    invoke-direct/range {v18 .. v18}, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;-><init>()V

    .line 299
    .restart local v18    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    .line 300
    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 306
    .end local v18    # "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_19
    move-object/from16 v0, v19

    iget v0, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    .line 307
    move/from16 v0, v17

    iput v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->dayCount:I

    .line 308
    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 321
    .end local v4    # "cToday":Ljava/util/Calendar;
    .end local v11    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;
    .end local v13    # "j":I
    .end local v14    # "lable":Ljava/lang/String;
    .end local v17    # "nDayCount":I
    .end local v19    # "ss":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_1a
    const/16 v20, 0x0

    .line 322
    .local v20, "startDay":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v12, v0, :cond_1b

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->step:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 324
    .local v21, "step":I
    if-eqz v21, :cond_1d

    .line 326
    move/from16 v20, v12

    .line 333
    .end local v21    # "step":I
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    move/from16 v28, v0

    sget v29, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1e

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x7

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_1c

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v20, v28, -0x7

    .line 343
    :cond_1c
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    if-nez v28, :cond_1f

    .line 344
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    .line 368
    :goto_c
    return-void

    .line 322
    .restart local v21    # "step":I
    :cond_1d
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 338
    .end local v21    # "step":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x5

    move/from16 v0, v20

    move/from16 v1, v28

    if-le v0, v1, :cond_1c

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v20, v28, -0x5

    goto :goto_b

    .line 351
    :cond_1f
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v24, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 356
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v25, "tmp1":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 361
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v26, "tmp2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v29

    move-object/from16 v0, v28

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->clear()V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    goto/16 :goto_c
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 561
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 562
    const v0, 0x7f0e018a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 563
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 565
    const v0, 0x7f0e02ba

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 566
    const v0, 0x7f0e02b6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 568
    const v0, 0x7f0e02bc

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 569
    const v0, 0x7f0e02be

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 571
    const v0, 0x7f0e02bf

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 572
    const v0, 0x7f0e02b7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 574
    const v0, 0x7f0e02c1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 575
    const v0, 0x7f0e02b9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 577
    const v0, 0x7f0e029b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->dateInfo:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 580
    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 581
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    const v0, 0x7f0e0299

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 584
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    const v0, 0x7f0e029a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 587
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    return-void
.end method

.method private synthetic lambda$initChartData$354()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 416
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    if-ne v2, v3, :cond_1

    .line 418
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v6, :cond_0

    .line 419
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 420
    const-string/jumbo v2, "zoom fitScreen "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 444
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getWidth()I

    move-result v1

    .line 424
    .local v1, "mWidth":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v0, v2, v3

    .line 425
    .local v0, "XScale":F
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 426
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v3, v1

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoom  XScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    .end local v0    # "XScale":F
    .end local v1    # "mWidth":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v6, :cond_2

    .line 432
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 433
    const-string/jumbo v2, "zoom fitScreen "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getWidth()I

    move-result v1

    .line 437
    .restart local v1    # "mWidth":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v0, v2, v3

    .line 438
    .restart local v0    # "XScale":F
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 439
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v3, v1

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zoom  XScale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private synthetic lambda$setListener$352(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$353(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->gotoSportShare()V

    return-void
.end method

.method private resetState(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 639
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 640
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 643
    packed-switch p1, :pswitch_data_0

    .line 669
    :goto_0
    return-void

    .line 645
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 646
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 650
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 653
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 654
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 657
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 658
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_week:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 661
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 662
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 666
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_month:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 643
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0298
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setColor(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 549
    if-ne v0, p1, :cond_0

    .line 550
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->colors:Ljava/util/List;

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 548
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 552
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->colors:Ljava/util/List;

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->COLOR_STEP:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 555
    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 110
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 113
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 115
    return-void
.end method

.method private setTable(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 682
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 711
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    iget-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->tag:Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 688
    .local v0, "s":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    if-eqz v1, :cond_3

    .line 689
    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    sget v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    if-eq v1, v2, :cond_2

    .line 690
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;

    iget v1, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$Hour;->dayCount:I

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayCount:I

    .line 691
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayCount:I

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget v2, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayCount:I

    div-int/2addr v2, v3

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayCount:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayCount:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {p0, v3}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->dateInfo:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->date_list:Ljava/util/List;

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\u6570\u636e"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 696
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget v2, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget v2, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v2, v2

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iget v2, v0, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 702
    :cond_3
    if-eqz v0, :cond_1

    .line 703
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v2, "0.0"

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateCharDate(I)V
    .locals 11
    .param p1, "unit"    # I

    .prologue
    const/high16 v10, 0x41200000    # 10.0f

    .line 460
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit:I

    .line 462
    sget v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stat_data_unit_day:I

    if-eq p1, v3, :cond_0

    .line 463
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801f3

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 464
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801f1

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 465
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801bf

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 466
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801b5

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 468
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 469
    .local v2, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/components/YAxis;->removeAllLimitLines()V

    .line 513
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initData()V

    .line 514
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->setTable(I)V

    .line 515
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initChartData(Z)I

    .line 517
    return-void

    .line 473
    .end local v2    # "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    :cond_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->stepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801f4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 474
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->sporttimeTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801f2

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 475
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->distanceTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801d5

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 476
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->burnTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v4, 0x7f0801b6

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 478
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "sportAim":I
    new-instance v0, Lcom/github/mikephil/charting/components/LimitLine;

    int-to-float v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v6, v1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "k"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 483
    .local v0, "ll1":Lcom/github/mikephil/charting/components/LimitLine;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 485
    .restart local v2    # "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 486
    const/4 v3, 0x0

    invoke-virtual {v0, v10, v10, v3}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 487
    sget-object v3, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V

    .line 488
    invoke-virtual {v0, v10}, Lcom/github/mikephil/charting/components/LimitLine;->setTextSize(F)V

    .line 489
    const-string v3, "#BDE9ED"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 490
    const-string v3, "#BDE9ED"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/LimitLine;->setTextColor(I)V

    .line 491
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->resetState(I)V

    .line 633
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->MONTH:[Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initView()V

    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initData()V

    .line 97
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 98
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 99
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 100
    const v0, 0x7f0e0298

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->resetState(I)V

    .line 101
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->setListener()V

    .line 106
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 716
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 1
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 673
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    .line 674
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->setColor(I)V

    .line 675
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 676
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->selectIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->setTable(I)V

    .line 677
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f040096

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->setContentView(I)V

    .line 87
    return-void
.end method
