.class public Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HeartRateActivity.java"


# static fields
.field private static final DATE_MAX_LENGTH:I = 0x16d


# instance fields
.field private heartRates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAvgHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private mChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

.field private mDatelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeartRate:I

.field private mMaxHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private mMinHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private strCurDate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;Ljava/util/Date;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;
    .param p1, "x1"    # Ljava/util/Date;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->setChartData(Ljava/util/Date;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Lcom/github/mikephil/charting/charts/LineChart;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->lambda$setListener$2(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->lambda$setListener$3(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->lambda$setListener$4(Ljava/lang/Void;)V

    return-void
.end method

.method private calHeartRateInfo(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "avgHeartInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 277
    .local v0, "avgHeartRate":I
    const/4 v2, 0x0

    .line 278
    .local v2, "maxHeartRate":I
    const/4 v3, 0x0

    .line 279
    .local v3, "minHeartRate":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 281
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 284
    const/4 v4, 0x0

    .line 285
    .local v4, "sum":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 286
    .local v1, "m":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v4, v6

    .line 287
    goto :goto_0

    .line 288
    .end local v1    # "m":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    div-int v0, v4, v5

    .line 292
    .end local v4    # "sum":I
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mMaxHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mAvgHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mMinHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mHeartRate:I

    .line 297
    return-void
.end method

.method private getHeartRate(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .param p2, "start"    # Ljava/util/Date;
    .param p3, "end"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/HeartRate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, "rates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 302
    .local v2, "timeMiddle":Ljava/util/Calendar;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;

    .line 303
    .local v0, "rate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 304
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/HeartRate;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 305
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v0    # "rate":Lcom/meizu/smart/wristband/models/database/entity/HeartRate;
    :cond_1
    return-object v1
.end method

.method private gotoHeartrateShare()V
    .locals 4

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "HEARTRATE_DATE_INFO"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->strCurDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5e73\u5747\u5fc3\u7387"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "HEARTRATE_DATA"

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mHeartRate:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method private initChart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 110
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 112
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 114
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 116
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 119
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 120
    .local v1, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 121
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawLabels(Z)V

    .line 123
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setAvoidFirstLastClipping(Z)V

    .line 124
    const-string v4, "#B2B2B2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 125
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 126
    invoke-virtual {v1, v8, v8, v9}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 128
    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 130
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setLabelsToSkip(I)V

    .line 132
    invoke-virtual {v1, v7}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 134
    sget-object v4, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v4}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 136
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    .line 137
    .local v3, "yr":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 139
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 140
    .local v2, "y":Lcom/github/mikephil/charting/components/YAxis;
    const-string v4, "#B2B2B2"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setGridColor(I)V

    .line 141
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v7}, Lcom/github/mikephil/charting/components/YAxis;->setLabelCount(IZ)V

    .line 142
    const v4, -0x777778

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setTextColor(I)V

    .line 144
    invoke-virtual {v2, v8, v8, v9}, Lcom/github/mikephil/charting/components/YAxis;->enableGridDashedLine(FFF)V

    .line 145
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawAxisLine(Z)V

    .line 147
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 148
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;->OUTSIDE_CHART:Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setPosition(Lcom/github/mikephil/charting/components/YAxis$YAxisLabelPosition;)V

    .line 150
    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinValue(F)V

    .line 151
    const/high16 v4, 0x43480000    # 200.0f

    invoke-virtual {v2, v4}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 152
    invoke-virtual {v2, v7}, Lcom/github/mikephil/charting/components/YAxis;->setDrawTopYLabelEntry(Z)V

    .line 155
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/MyMarkerView_heart;

    const v4, 0x7f0400ad

    invoke-direct {v0, p0, v4}, Lcom/meizu/smart/wristband/meizuUI/heartRate/MyMarkerView_heart;-><init>(Landroid/content/Context;I)V

    .line 156
    .local v0, "mv":Lcom/meizu/smart/wristband/meizuUI/heartRate/MyMarkerView_heart;
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 157
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 162
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 383
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 384
    .local v0, "rates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->initChart()V

    .line 386
    return-void
.end method

.method private initDatePicker()V
    .locals 11

    .prologue
    const/16 v10, 0x16d

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_0

    .line 322
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    rsub-int v7, v0, 0x16d

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v10, :cond_1

    .line 327
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    rsub-int v7, v0, 0x16d

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 331
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v1, "listDate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :goto_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 335
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatelist:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 337
    .local v2, "nDateOffset":I
    if-nez v2, :cond_2

    .line 338
    const-string/jumbo v4, "\u4eca\u5929"

    .line 346
    .local v4, "strDate":Ljava/lang/String;
    :goto_3
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 339
    .end local v4    # "strDate":Ljava/lang/String;
    :cond_2
    if-ne v2, v8, :cond_3

    .line 340
    const-string/jumbo v4, "\u6628\u5929"

    .restart local v4    # "strDate":Ljava/lang/String;
    goto :goto_3

    .line 342
    .end local v4    # "strDate":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 343
    .local v5, "today":Ljava/util/Date;
    mul-int/lit8 v6, v2, -0x1

    invoke-static {v5, v9, v6}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v3

    .line 344
    .local v3, "showDate":Ljava/util/Date;
    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strDate":Ljava/lang/String;
    goto :goto_3

    .line 349
    .end local v2    # "nDateOffset":I
    .end local v3    # "showDate":Ljava/util/Date;
    .end local v4    # "strDate":Ljava/lang/String;
    .end local v5    # "today":Ljava/util/Date;
    :cond_4
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setValues([Ljava/lang/CharSequence;)V

    .line 351
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setOverScrollMode(I)V

    .line 353
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setSelectedItem(I)V

    .line 354
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)V

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setOnItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;)V

    .line 373
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 374
    .restart local v5    # "today":Ljava/util/Date;
    const/4 v6, 0x0

    invoke-static {v5, v9, v6}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v3

    .line 375
    .restart local v3    # "showDate":Ljava/util/Date;
    invoke-direct {p0, v3, v8}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->setChartData(Ljava/util/Date;Z)V

    .line 376
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    .line 379
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 389
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 390
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 391
    const v0, 0x7f0e028d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mMaxHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 392
    const v0, 0x7f0e028f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mMinHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 393
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mAvgHeartRate:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 394
    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 396
    return-void
.end method

.method private synthetic lambda$setListener$2(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$3(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->gotoHeartrateShare()V

    return-void
.end method

.method private synthetic lambda$setListener$4(Ljava/lang/Void;)V
    .locals 4
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 85
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/main/HeartMeasureHelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "index"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private setChartData(Ljava/util/Date;Z)V
    .locals 26
    .param p1, "today"    # Ljava/util/Date;
    .param p2, "isToday"    # Z

    .prologue
    .line 169
    if-eqz p2, :cond_1

    .line 171
    invoke-static/range {p0 .. p1}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAlldayHeartRateByToday(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v14

    .line 176
    .local v14, "rates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    :goto_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v19, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 178
    .local v18, "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v8, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v5, "avgHeartInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v20, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->strCurDate:Ljava/lang/String;

    .line 183
    const/4 v13, -0x1

    .line 185
    .local v13, "mHighlightIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v20, 0x18

    move/from16 v0, v20

    if-gt v11, v0, :cond_2

    .line 186
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateHourStart(Ljava/util/Date;I)Ljava/util/Date;

    move-result-object v17

    .line 188
    .local v17, "start":Ljava/util/Date;
    new-instance v20, Ljava/util/Date;

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    const-wide/32 v24, 0x36ee80

    add-long v22, v22, v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->getHeartRate(Ljava/util/List;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v15

    .line 189
    .local v15, "segment":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    invoke-static {v15}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAvgHeartRate(Ljava/util/List;)I

    move-result v4

    .line 191
    .local v4, "avgHeart":I
    if-lez v4, :cond_0

    .line 192
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v20, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v0, v4

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v1, v11}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move v13, v11

    .line 208
    :cond_0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 173
    .end local v4    # "avgHeart":I
    .end local v5    # "avgHeartInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v13    # "mHighlightIndex":I
    .end local v14    # "rates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v15    # "segment":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    .end local v17    # "start":Ljava/util/Date;
    .end local v18    # "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    .end local v19    # "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static/range {p0 .. p1}, Lcom/meizu/smart/wristband/servers/DBHeartRateApi;->getAlldayHeartRateByDay(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v14

    .restart local v14    # "rates":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/HeartRate;>;"
    goto/16 :goto_0

    .line 212
    .restart local v5    # "avgHeartInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8    # "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "i":I
    .restart local v13    # "mHighlightIndex":I
    .restart local v18    # "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    .restart local v19    # "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->calHeartRateInfo(Ljava/util/ArrayList;)V

    .line 216
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v7, v0, [I

    .line 217
    .local v7, "colorArray":[I
    const/4 v12, 0x0

    .line 218
    .local v12, "isFirst":Z
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_4

    .line 219
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 220
    .local v6, "color":I
    aput v6, v7, v11

    .line 221
    if-nez v12, :cond_3

    .line 222
    if-nez v6, :cond_3

    if-lez v11, :cond_3

    .line 223
    add-int/lit8 v20, v11, -0x1

    const/16 v21, 0x0

    aput v21, v7, v20

    .line 218
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 231
    .end local v6    # "color":I
    :cond_4
    new-instance v16, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v20, "DataSet 1"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 234
    .local v16, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCubic(Z)V

    .line 235
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 237
    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setLineWidth(F)V

    .line 238
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/github/mikephil/charting/data/LineDataSet;->setColors([I)V

    .line 240
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 241
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircleHole(Z)V

    .line 243
    const/high16 v20, 0x40400000    # 3.0f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleSize(F)V

    .line 244
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHighlightIndicators(Z)V

    .line 245
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d005f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0d005f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 249
    new-instance v9, Lcom/github/mikephil/charting/data/LineData;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v9, v0, v1}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 250
    .local v9, "data":Lcom/github/mikephil/charting/data/LineData;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 254
    new-instance v10, Lcom/github/mikephil/charting/highlight/Highlight;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v13, v0}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 255
    .local v10, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Lcom/github/mikephil/charting/highlight/Highlight;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/charts/LineChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 257
    invoke-virtual {v9}, Lcom/github/mikephil/charting/data/LineData;->getYMax()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 267
    :goto_3
    return-void

    .line 262
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->mChart:Lcom/github/mikephil/charting/charts/LineChart;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/charts/LineChart;->clearValues()V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 79
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 83
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 92
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->initView()V

    .line 68
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->initData()V

    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->initDatePicker()V

    .line 70
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->setListener()V

    .line 71
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f04008f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/heartRate/HeartRateActivity;->setContentView(I)V

    .line 62
    return-void
.end method
