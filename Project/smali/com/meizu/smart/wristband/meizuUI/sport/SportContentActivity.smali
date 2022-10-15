.class public Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SportContentActivity.java"

# interfaces
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;,
        Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;,
        Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;
    }
.end annotation


# static fields
.field private static COLOR_STEP:Ljava/lang/String; = null

.field private static COLOR_STEP_PRESS:Ljava/lang/String; = null

.field private static final DATE_MAX_LENGTH:I = 0x16d

.field public static final ITEM_TIME_SPORT:I = 0x2


# instance fields
.field private HOURS:[Ljava/lang/String;

.field private adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

.field private bottomListView:Landroid/widget/ListView;

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

.field private mBurnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private mChart:Lcom/github/mikephil/charting/charts/BarChart;

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

.field private mDistanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

.field private mListSport:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mStepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sport_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 204
    const-string v0, "#fface3e9"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP:Ljava/lang/String;

    .line 205
    const-string v0, "#ff59c8d3"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatelist:Ljava/util/ArrayList;

    .line 73
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

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

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->HOURS:[Ljava/lang/String;

    .line 477
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->updateSportList(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setChartData(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Lcom/github/mikephil/charting/charts/BarChart;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->lambda$setListener$199(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->lambda$setListener$200(Ljava/lang/Void;)V

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
    .line 208
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 210
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 211
    if-eqz p1, :cond_1

    .line 212
    if-ne v0, v1, :cond_0

    .line 213
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_1
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_2
    return-object v2
.end method

.method private gotoSportHistory()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method private initChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 7
    .param p1, "mChart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    const/high16 v6, 0x41200000    # 10.0f

    const/4 v5, 0x0

    .line 308
    const-string v3, ""

    invoke-virtual {p1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 310
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 311
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 312
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 313
    invoke-virtual {p1, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 314
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 315
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 318
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v1

    .line 319
    .local v1, "xLabels":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v3, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 320
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0059

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 321
    const-string v3, "#ace3e9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 322
    const/4 v3, 0x0

    invoke-virtual {v1, v6, v6, v3}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 323
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 324
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/XAxis;->setLabelsToSkip(I)V

    .line 327
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 328
    .local v2, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    const/high16 v3, 0x44960000    # 1200.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 330
    const/high16 v3, 0x40400000    # 3.0f

    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceBottom(F)V

    .line 331
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 333
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;

    const v3, 0x7f0400bf

    invoke-direct {v0, p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;-><init>(Landroid/content/Context;I)V

    .line 334
    .local v0, "mv":Lcom/meizu/smart/wristband/meizuUI/sport/MyMarkerView_sport;
    invoke-virtual {p1, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 336
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 337
    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 338
    return-void
.end method

.method private initChartData()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 237
    const/16 v5, 0x3e8

    .line 238
    .local v5, "nMax":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v8, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_0

    .line 240
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v10, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v4, 0x0

    :goto_1
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 246
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;

    iget v11, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->step:I

    int-to-float v7, v11

    .line 248
    .local v7, "val1":F
    new-instance v11, Lcom/github/mikephil/charting/data/BarEntry;

    invoke-direct {v11, v7, v4}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FI)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 250
    .end local v7    # "val1":F
    :cond_1
    new-instance v6, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v11, "Statistics Vienna 2014"

    invoke-direct {v6, v10, v11}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 251
    .local v6, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-direct {p0, v14}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->getColors(Z)Ljava/util/List;

    move-result-object v11

    iput-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->colors:Ljava/util/List;

    .line 252
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->colors:Ljava/util/List;

    invoke-virtual {v6, v11}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 253
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 254
    invoke-virtual {v6, v13}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 255
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v2, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v1, v8, v2}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 260
    .local v1, "data":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getYMax()F

    move-result v11

    float-to-int v11, v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 261
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v9

    .line 262
    .local v9, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    int-to-float v11, v5

    invoke-virtual {v9, v11}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 263
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v11, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 265
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/BarData;->getYMax()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    .line 267
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 276
    :goto_2
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 277
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 281
    const/4 v0, -0x1

    .line 282
    .local v0, "HighlightIndex":I
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v4, v11, -0x1

    :goto_3
    if-ltz v4, :cond_2

    .line 283
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;

    iget v11, v11, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->step:I

    if-lez v11, :cond_5

    .line 284
    move v0, v4

    .line 290
    :cond_2
    const/4 v11, -0x1

    if-eq v0, v11, :cond_3

    .line 291
    new-instance v3, Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-direct {v3, v0, v13}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 292
    .local v3, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    new-array v12, v14, [Lcom/github/mikephil/charting/highlight/Highlight;

    aput-object v3, v12, v13

    invoke-virtual {v11, v12}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 296
    .end local v3    # "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    :cond_3
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setColor(I)V

    .line 298
    return-void

    .line 272
    .end local v0    # "HighlightIndex":I
    :cond_4
    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v11, v13}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto :goto_2

    .line 282
    .restart local v0    # "HighlightIndex":I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3
.end method

.method private initDatePicker()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    .line 348
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x16d

    if-ge v0, v6, :cond_0

    .line 349
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatelist:Ljava/util/ArrayList;

    rsub-int v7, v0, 0x16d

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v1, "listDate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    :goto_1
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatelist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 357
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatelist:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 359
    .local v2, "nDateOffset":I
    if-nez v2, :cond_1

    .line 360
    const-string/jumbo v4, "\u4eca\u5929"

    .line 368
    .local v4, "strDate":Ljava/lang/String;
    :goto_2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 361
    .end local v4    # "strDate":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    .line 362
    const-string/jumbo v4, "\u6628\u5929"

    .restart local v4    # "strDate":Ljava/lang/String;
    goto :goto_2

    .line 364
    .end local v4    # "strDate":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 365
    .local v5, "today":Ljava/util/Date;
    mul-int/lit8 v6, v2, -0x1

    invoke-static {v5, v8, v6}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v3

    .line 366
    .local v3, "showDate":Ljava/util/Date;
    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat4:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "strDate":Ljava/lang/String;
    goto :goto_2

    .line 371
    .end local v2    # "nDateOffset":I
    .end local v3    # "showDate":Ljava/util/Date;
    .end local v4    # "strDate":Ljava/lang/String;
    .end local v5    # "today":Ljava/util/Date;
    :cond_3
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setValues([Ljava/lang/CharSequence;)V

    .line 373
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setOverScrollMode(I)V

    .line 375
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setSelectedItem(I)V

    .line 376
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)V

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;->setOnItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker$OnItemSelected;)V

    .line 390
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 391
    .restart local v5    # "today":Ljava/util/Date;
    const/4 v6, 0x0

    invoke-static {v5, v8, v6}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateForOffset(Ljava/util/Date;II)Ljava/util/Date;

    move-result-object v3

    .line 392
    .restart local v3    # "showDate":Ljava/util/Date;
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->updateSportList(Ljava/util/Date;)V

    .line 393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "view heartrate showdate = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setChartData(Ljava/util/Date;)V

    .line 395
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 398
    return-void
.end method

.method private initShowLabel(Ljava/util/Date;)V
    .locals 13
    .param p1, "today"    # Ljava/util/Date;

    .prologue
    .line 168
    const/4 v6, 0x0

    .line 169
    .local v6, "stepCountSum":I
    const/4 v3, 0x0

    .line 170
    .local v3, "distanceCountSum":F
    const/4 v0, 0x0

    .line 172
    .local v0, "burnSountSum":F
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByHour(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 174
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    .line 175
    .local v4, "hour":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    iget v11, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    add-int/2addr v6, v11

    .line 176
    iget v11, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v11, v11

    add-float/2addr v3, v11

    .line 177
    iget v11, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    add-float/2addr v0, v11

    .line 178
    goto :goto_0

    .line 180
    .end local v4    # "hour":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_0
    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mStepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v9

    .line 190
    .local v9, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    int-to-long v10, v6

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/User;->getHeight()Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v10, v11, v12}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getDistanceByStep(JI)F

    move-result v2

    .line 191
    .local v2, "distance":F
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/User;->getWeight()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v10, v11, v2}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getCalorie(DF)F

    move-result v1

    .line 195
    .local v1, "calorie":F
    invoke-static {p0, v2}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, "strDis":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "strCalorie":Ljava/lang/String;
    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDistanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v10, v8}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mBurnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v10, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 98
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 99
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDatePicker:Lcom/meizu/smart/wristband/meizuUI/widget/HorizontalPicker;

    .line 100
    const v0, 0x7f0e02b9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mBurnCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 101
    const v0, 0x7f0e02b6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mStepCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 102
    const v0, 0x7f0e02b7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mDistanceCount:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 103
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->bottomListView:Landroid/widget/ListView;

    .line 104
    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 106
    return-void
.end method

.method private synthetic lambda$setListener$199(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$200(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->gotoSportHistory()V

    return-void
.end method

.method private setChartData(Ljava/util/Date;)V
    .locals 9
    .param p1, "today"    # Ljava/util/Date;

    .prologue
    const/4 v8, 0x0

    .line 124
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    .line 125
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    .line 127
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "cl":Ljava/util/Calendar;
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getCurDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/DBSportApi;->statSportByHour(Landroid/content/Context;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    .line 132
    .local v5, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    const/16 v6, 0x18

    if-gt v2, v6, :cond_5

    .line 133
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 135
    .local v4, "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :goto_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)V

    .line 136
    .local v1, "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;
    iput v8, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->step:I

    .line 137
    iput v8, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->dur:I

    .line 138
    const/4 v6, 0x0

    iput v6, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->calorie:F

    .line 140
    if-nez v4, :cond_2

    .line 141
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->HOURS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v1    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;
    .end local v4    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;

    move-object v4, v6

    goto :goto_1

    .line 146
    .restart local v1    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;
    .restart local v4    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_2
    iget-object v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->startTime:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v6, v2, :cond_3

    .line 148
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->HOURS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 152
    :cond_3
    iget v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_4

    .line 153
    iget v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->allstep:I

    iput v6, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->step:I

    .line 154
    iget v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->time:I

    iput v6, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->dur:I

    .line 155
    iget v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->distance:I

    int-to-float v6, v6

    iput v6, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->dis:F

    .line 157
    iget v6, v4, Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;->calorie:F

    iput v6, v1, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;->calorie:F

    .line 159
    :cond_4
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->sport_data_list:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->HOURS:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 163
    .end local v1    # "hour":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$Hour;
    .end local v4    # "sp":Lcom/meizu/smart/wristband/models/database/statobjects/SportStat1;
    :cond_5
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initChartData()V

    .line 164
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initShowLabel(Ljava/util/Date;)V

    .line 165
    return-void
.end method

.method private setColor(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mHours:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 226
    if-ne v0, p1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->colors:Ljava/util/List;

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP_PRESS:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->colors:Ljava/util/List;

    sget-object v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->COLOR_STEP:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 232
    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 114
    const v0, 0x7f0e02b4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 115
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 116
    return-void
.end method

.method private updateSportList(Ljava/util/Date;)V
    .locals 9
    .param p1, "updateDate"    # Ljava/util/Date;

    .prologue
    .line 420
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mListSport:Ljava/util/List;

    .line 422
    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    invoke-static {p1}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateEnd(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/meizu/smart/wristband/servers/DBSportApi;->getSportList(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v4

    .line 423
    .local v4, "sportList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sport;>;"
    invoke-static {p0, v4}, Lcom/meizu/smart/wristband/servers/DBSportApi;->sliptSport(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 424
    .local v3, "sportItemsList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;>;"
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v5

    .line 426
    .local v5, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 427
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;

    .line 428
    .local v1, "item":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;-><init>()V

    .line 429
    .local v2, "s":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    iget-object v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->startTime:Ljava/util/Date;

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->startTime:Ljava/util/Date;

    .line 430
    iget-object v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->endTime:Ljava/util/Date;

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->endTime:Ljava/util/Date;

    .line 434
    iget v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->duration:I

    div-int/lit8 v0, v7, 0x3c

    .line 436
    .local v0, "dura":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f080190

    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0, v0}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatTimeToString7(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->duration:Ljava/lang/String;

    .line 438
    iget v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->step:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->step:Ljava/lang/String;

    .line 441
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "list distance  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 442
    iget v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->calorie:F

    invoke-static {p0, v7}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatCalorieToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->heat:Ljava/lang/String;

    .line 443
    iget v7, v1, Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;->distance:F

    invoke-static {p0, v7}, Lcom/meizu/smart/wristband/utils/StringFormatUtil;->formatDistanceToString(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->dis:Ljava/lang/String;

    .line 444
    const/4 v7, 0x2

    iput v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->type:I

    .line 445
    const/4 v7, 0x0

    iput v7, v2, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;->mode:I

    .line 446
    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mListSport:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 450
    .end local v0    # "dura":I
    .end local v1    # "item":Lcom/meizu/smart/wristband/servers/DBSportApi$SportItem;
    .end local v2    # "s":Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$S;
    :cond_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mListSport:Ljava/util/List;

    new-instance v7, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$2;

    invoke-direct {v7, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 459
    new-instance v6, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mListSport:Ljava/util/List;

    invoke-direct {v6, p0, v7}, Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

    .line 460
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->bottomListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->adapter:Lcom/meizu/smart/wristband/meizuUI/main/adapter/SportAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 461
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initView()V

    .line 92
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->mChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 93
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->initDatePicker()V

    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setListener()V

    .line 95
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 402
    move-object v0, p1

    check-cast v0, Lcom/github/mikephil/charting/data/BarEntry;

    .line 403
    .local v0, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setColor(I)V

    .line 411
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportContentActivity;->setContentView(I)V

    .line 86
    return-void
.end method
