.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;
.super Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;
.source "SleepFragment.java"


# static fields
.field static final color_deep:Ljava/lang/String; = "#5C70F0"

.field static final color_dream:Ljava/lang/String; = "#90A5FF"

.field static final color_hightlight:Ljava/lang/String; = "#d8c8f1"

.field static final color_light:Ljava/lang/String; = "#8192FF"

.field static final color_line:Ljava/lang/String; = "#dbdeff"

.field static final color_weke:Ljava/lang/String; = "#EFEFFF"


# instance fields
.field private aimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private colors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

.field private noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field public rootView:Landroid/view/View;

.field private sleepAim:I

.field private sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/SleepState;",
            ">;"
        }
    .end annotation
.end field

.field private tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private wakeupHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private wakeupMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->saveAim()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initData()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lambda$initListenter$191(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lambda$initListenter$192(Ljava/lang/Void;)V

    return-void
.end method

.method private gotoSleepContent()V
    .locals 3

    .prologue
    .line 113
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method private initBarChart(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 4
    .param p1, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    const/4 v3, 0x0

    .line 183
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 186
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 187
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 188
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 189
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 190
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 191
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 192
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/charts/BarChart;->setTouchEnabled(Z)V

    .line 193
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 194
    .local v0, "xLabels":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 195
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 196
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 198
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initChartData(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 199
    return-void
.end method

.method private initChartData(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 20
    .param p1, "sleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    .line 203
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v13, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v14, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    .line 207
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 208
    .local v4, "clStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 209
    .local v3, "clEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 210
    .local v6, "clitemStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 211
    .local v5, "clitemEnd":Ljava/util/Calendar;
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 213
    const/4 v2, 0x0

    .line 215
    .local v2, "bShow":Z
    const/4 v9, 0x0

    .local v9, "i":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-gtz v15, :cond_a

    .line 217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepStates:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepStates:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ne v10, v15, :cond_2

    :cond_0
    const/4 v12, 0x0

    .line 218
    .local v12, "ss":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    :goto_1
    if-nez v12, :cond_3

    .line 219
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#5C70F0"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_1
    :goto_2
    const/16 v15, 0xc

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 217
    .end local v12    # "ss":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepStates:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/meizu/smart/wristband/models/database/entity/SleepState;

    move-object v12, v15

    goto :goto_1

    .line 225
    .restart local v12    # "ss":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    :cond_3
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getStartTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 226
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getEndTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 229
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v6}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-ltz v15, :cond_8

    .line 230
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v15, v16, v18

    if-gtz v15, :cond_8

    .line 231
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v15

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->deep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 233
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#5C70F0"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 235
    :cond_4
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v15

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->dream:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 236
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#90A5FF"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 238
    :cond_5
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v15

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->insleep:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 239
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#EFEFFF"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 241
    :cond_6
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v15

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->wake:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 242
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#EFEFFF"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 244
    :cond_7
    invoke-virtual {v12}, Lcom/meizu/smart/wristband/models/database/entity/SleepState;->getState()Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-result-object v15

    sget-object v16, Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;->shallow:Lcom/meizu/smart/wristband/models/database/entity/SleepState$State;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 245
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/high16 v16, 0x42c80000    # 100.0f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#8192FF"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 248
    :cond_8
    invoke-virtual {v4, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 249
    add-int/lit8 v9, v9, -0x1

    .line 250
    const/16 v15, 0xc

    const/16 v16, -0xa

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/util/Calendar;->add(II)V

    .line 251
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 253
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    new-instance v15, Lcom/github/mikephil/charting/data/BarEntry;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v0, v9, v1}, Lcom/github/mikephil/charting/data/BarEntry;-><init>(FILjava/lang/Object;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    const-string v16, "#5C70F0"

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 260
    .end local v12    # "ss":Lcom/meizu/smart/wristband/models/database/entity/SleepState;
    :cond_a
    new-instance v11, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v15, "Statistics Vienna 2014"

    invoke-direct {v11, v14, v15}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 261
    .local v11, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/github/mikephil/charting/data/BarDataSet;->setBarSpacePercent(F)V

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->colors:Ljava/util/ArrayList;

    invoke-virtual {v11, v15}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 264
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 266
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v8, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v7, Lcom/github/mikephil/charting/data/BarData;

    invoke-direct {v7, v13, v8}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 271
    .local v7, "data":Lcom/github/mikephil/charting/data/BarData;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v15, v7}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v15}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 274
    return-void
.end method

.method private initData()V
    .locals 6

    .prologue
    .line 389
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSleepAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    .line 391
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    div-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v3, v3, 0x3c

    if-nez v3, :cond_1

    .line 393
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v4, "00"

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 399
    .local v2, "today":Ljava/util/Date;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v3, v2}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getMainSleep(Landroid/content/Context;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-result-object v0

    .line 400
    .local v0, "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 403
    .local v1, "nTotalDuration":I
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    if-lt v1, v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 410
    .end local v1    # "nTotalDuration":I
    :cond_0
    :goto_1
    return-void

    .line 395
    .end local v0    # "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v2    # "today":Ljava/util/Date;
    :cond_1
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v5, v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    .restart local v0    # "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .restart local v1    # "nTotalDuration":I
    .restart local v2    # "today":Ljava/util/Date;
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initListenter(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 94
    const v0, 0x7f0e031e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 99
    const v0, 0x7f0e0322

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)Lrx/functions/Action1;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 104
    return-void
.end method

.method private synthetic lambda$initListenter$191(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->gotoSleepContent()V

    .line 97
    return-void
.end method

.method private synthetic lambda$initListenter$192(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->showSetAimDialog()V

    .line 102
    return-void
.end method

.method private resetViewInfo()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 167
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method private saveAim()V
    .locals 6

    .prologue
    .line 499
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    .line 500
    .local v1, "user":Lcom/meizu/smart/wristband/models/database/entity/User;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSportAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "sportAim":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/User;->getId()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v0, v4}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->commitAim(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V

    .line 502
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;

    invoke-direct {v3, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;)V

    .line 510
    invoke-virtual {v2, v3}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v3}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 517
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 518
    return-void
.end method

.method private showSetAimDialog()V
    .locals 12

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->isBand()Z

    move-result v10

    if-nez v10, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-direct {v3, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 437
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x0

    .line 438
    .local v5, "layout":Landroid/view/View;
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 439
    .local v1, "ad":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v10

    if-nez v10, :cond_0

    .line 440
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 441
    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 442
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f0400a0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 443
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 445
    const v10, 0x7f0e02f2

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 446
    .local v2, "btn_done":Landroid/widget/ImageButton;
    const v10, 0x7f0e02f3

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 447
    .local v8, "sleepHour":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    const v10, 0x7f0e02f4

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 448
    .local v9, "sleepMinu":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    const v10, 0x7f0e02f5

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;

    .line 450
    .local v0, "SleepScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    div-int/lit8 v11, v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v10, v10, 0x3c

    if-nez v10, :cond_2

    .line 452
    const-string v10, "00"

    invoke-virtual {v9, v10}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    :goto_1
    const/high16 v6, 0x41400000    # 12.0f

    .line 458
    .local v6, "mMaxSleepAim":F
    const/high16 v7, 0x40800000    # 4.0f

    .line 459
    .local v7, "mMinSleepAim":F
    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    int-to-float v10, v10

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v7, v6, v11}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->initViewParam(FFFI)V

    .line 460
    new-instance v10, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;

    invoke-direct {v10, p0, v8, v9}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;)V

    invoke-virtual {v0, v10}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;->setValueChangeListener(Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView$OnValueChangeListener;)V

    .line 478
    new-instance v10, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;

    invoke-direct {v10, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 487
    .end local v0    # "SleepScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;
    .end local v1    # "ad":Landroid/app/AlertDialog;
    .end local v2    # "btn_done":Landroid/widget/ImageButton;
    .end local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "layout":Landroid/view/View;
    .end local v6    # "mMaxSleepAim":F
    .end local v7    # "mMinSleepAim":F
    .end local v8    # "sleepHour":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .end local v9    # "sleepMinu":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    :catch_0
    move-exception v10

    goto/16 :goto_0

    .line 454
    .restart local v0    # "SleepScale":Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/DecimalScaleRulerView;
    .restart local v1    # "ad":Landroid/app/AlertDialog;
    .restart local v2    # "btn_done":Landroid/widget/ImageButton;
    .restart local v3    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "layout":Landroid/view/View;
    .restart local v8    # "sleepHour":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    .restart local v9    # "sleepMinu":Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v11, v11, 0x3c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private updateViewInfo(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V
    .locals 10
    .param p1, "mainSleep"    # Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .prologue
    const/16 v9, 0xa

    const/4 v5, 0x0

    .line 284
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 285
    .local v1, "nTotalDuration":I
    if-gez v1, :cond_0

    move v1, v5

    .line 286
    :cond_0
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    rem-int/lit8 v6, v1, 0x3c

    if-ge v6, v9, :cond_4

    .line 288
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :goto_0
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    if-lt v1, v6, :cond_5

    .line 294
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 300
    :goto_1
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 301
    .local v0, "nDeepDuration":I
    if-gez v0, :cond_1

    move v0, v5

    .line 302
    :cond_1
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v0, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    rem-int/lit8 v6, v0, 0x3c

    if-ge v6, v9, :cond_6

    .line 304
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v0, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_2
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 311
    .local v2, "shallowDuration":I
    if-gez v2, :cond_2

    move v2, v5

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    rem-int/lit8 v6, v2, 0x3c

    if-ge v6, v9, :cond_7

    .line 314
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    :goto_3
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 321
    .local v4, "wakeDuration":I
    if-gez v4, :cond_3

    move v4, v5

    .line 322
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v7, v4, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    rem-int/lit8 v5, v4, 0x3c

    if-ge v5, v9, :cond_8

    .line 324
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-int/lit8 v7, v4, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :goto_4
    new-instance v5, Lcom/meizu/smart/wristband/constant/SystemContant;

    invoke-direct {v5}, Lcom/meizu/smart/wristband/constant/SystemContant;-><init>()V

    sget-object v3, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    .line 330
    .local v3, "timeFormat0":Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 290
    .end local v0    # "nDeepDuration":I
    .end local v2    # "shallowDuration":I
    .end local v3    # "timeFormat0":Ljava/text/SimpleDateFormat;
    .end local v4    # "wakeDuration":I
    :cond_4
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v1, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 296
    :cond_5
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 306
    .restart local v0    # "nDeepDuration":I
    :cond_6
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v0, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 316
    .restart local v2    # "shallowDuration":I
    :cond_7
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v2, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 326
    .restart local v4    # "wakeDuration":I
    :cond_8
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v7, v4, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 353
    const v0, 0x7f0e031f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 354
    const v0, 0x7f0e0320

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 356
    const v0, 0x7f0e0323

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 357
    const v0, 0x7f0e0324

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 359
    const v0, 0x7f0e02a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 360
    const v0, 0x7f0e02a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 362
    const v0, 0x7f0e02a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 363
    const v0, 0x7f0e02a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 365
    const v0, 0x7f0e0326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 366
    const v0, 0x7f0e0327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->wakeupMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 368
    const v0, 0x7f0e017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    .line 369
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 371
    const v0, 0x7f0e017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 372
    const v0, 0x7f0e017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 374
    const v0, 0x7f0e0325

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->goalAim:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 376
    const v0, 0x7f0e0289

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 379
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initData()V

    .line 380
    return-void
.end method

.method public isBand()Z
    .locals 2

    .prologue
    .line 419
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBDeviceApi;->getMainDevice(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    move-result-object v0

    .line 420
    .local v0, "device":Lcom/meizu/smart/wristband/models/database/entity/BtDev;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    const v0, 0x7f0400ba

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->rootView:Landroid/view/View;

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    .line 86
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initView(Landroid/view/View;)V

    .line 87
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initListenter(Landroid/view/View;)V

    .line 88
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->update(Landroid/content/Context;I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 338
    invoke-super {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/MainBaseFragment;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->update(Landroid/content/Context;I)V

    .line 340
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSleepAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    .line 342
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    div-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v0, v0, 0x3c

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->aimMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepAim:I

    rem-int/lit8 v2, v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public update(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 121
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 124
    .local v2, "today":Ljava/util/Date;
    invoke-static {p1, v2}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getMainSleep(Landroid/content/Context;Ljava/util/Date;)Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-result-object v0

    .line 125
    .local v0, "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-nez v0, :cond_1

    .line 126
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 130
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->resetViewInfo()V

    .line 157
    .end local v0    # "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v2    # "today":Ljava/util/Date;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local v0    # "mainSleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .restart local v2    # "today":Ljava/util/Date;
    :cond_1
    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->updateViewInfo(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    .line 136
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->act:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getSleepByID(Landroid/content/Context;I)Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-result-object v1

    .line 137
    .local v1, "sleep":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-eqz v1, :cond_3

    .line 138
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getSleepStates()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getSleepStates()Lcom/j256/ormlite/dao/ForeignCollection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->sleepStates:Ljava/util/List;

    .line 141
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 144
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 145
    invoke-direct {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->initBarChart(Lcom/meizu/smart/wristband/models/database/entity/Sleep;)V

    goto :goto_0

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->noData:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 149
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepStart:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->tvSleepEnd:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setVisibility(I)V

    .line 151
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->mBarChart:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 152
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SleepFragment;->resetViewInfo()V

    goto :goto_0
.end method
