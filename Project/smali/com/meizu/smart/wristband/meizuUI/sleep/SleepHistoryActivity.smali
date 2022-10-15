.class public Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "SleepHistoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    }
.end annotation


# static fields
.field private static COLOR_DEEP:Ljava/lang/String;

.field private static COLOR_DEEP_PRESS:Ljava/lang/String;

.field private static COLOR_LIGHT:Ljava/lang/String;

.field private static COLOR_LIGHT_PRESS:Ljava/lang/String;

.field private static stat_data_unit_day:I

.field private static stat_data_unit_month:I

.field private static stat_data_unit_week:I


# instance fields
.field private MONTH:[Ljava/lang/String;

.field private RIGHT_COUNT_DAY:I

.field private RIGHT_COUNT_MONTH:I

.field private RIGHT_COUNT_WEEK:I

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

.field private deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private deepSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private layoutSleeptime:Landroid/widget/RelativeLayout;

.field private layoutWakeuptime:Landroid/widget/RelativeLayout;

.field private left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

.field private line1:Landroid/widget/ImageView;

.field private line2:Landroid/widget/ImageView;

.field private lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private lowSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private mChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mHandler:Landroid/os/Handler;

.field private mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private mSleepMax:I

.field private mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

.field private msleeps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/database/entity/Sleep;",
            ">;"
        }
    .end annotation
.end field

.field private right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

.field private selectIndex:I

.field private sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private sleep_data_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;",
            ">;"
        }
    .end annotation
.end field

.field private sleeptime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private stat_data_unit:I

.field private wakeupSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private wakeupSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private wakeupSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private wakeupTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    .line 59
    const/4 v0, 0x1

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_month:I

    .line 541
    const-string v0, "#9FACFA"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP:Ljava/lang/String;

    .line 542
    const-string v0, "#E5E9FE"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT:Ljava/lang/String;

    .line 543
    const-string v0, "#7183F7"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP_PRESS:Ljava/lang/String;

    .line 544
    const-string v0, "#D4DAFD"

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT_PRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 61
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    .line 62
    const/16 v0, 0x16c

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_DAY:I

    .line 63
    const/16 v0, 0x34

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_WEEK:I

    .line 64
    const/16 v0, 0xb

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_MONTH:I

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    .line 91
    const/16 v0, 0x320

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    .line 813
    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lambda$setListener$294(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lambda$setListener$295(Ljava/lang/Void;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lambda$initChartData$296()V

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

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 549
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 550
    if-eqz p1, :cond_1

    .line 551
    if-ne v0, v1, :cond_0

    .line 552
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP_PRESS:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 553
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT_PRESS:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 549
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    :cond_0
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 556
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 559
    :cond_1
    mul-int/lit8 v3, v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 560
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 563
    :cond_2
    return-object v2
.end method

.method private gotoSleepShare()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/meizu/smart/wristband/meizuUI/share/SleepShareActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const-string/jumbo v2, "\u65e0\u7761\u7720\u6570\u636e\uff0c\u65e0\u6cd5\u5206\u4eab"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 185
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget-object v1, v2, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->tag:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 150
    .local v1, "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-eqz v1, :cond_1

    .line 151
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v3, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-eq v2, v3, :cond_2

    .line 152
    const-string v3, "SLEEP_DATE_INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u5e73\u5747\u7761\u7720"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v2, "SLEEP_START_TIME"

    const-string v3, "--"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v2, "SLEEP_END_TIME"

    const-string v3, "--"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    :goto_1
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 171
    const-string v2, "SLEEP_DURATION"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    :goto_2
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 177
    const-string v2, "SLEEP_DEEP_DURATION"

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 184
    :cond_1
    :goto_3
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string v3, "SLEEP_DATE_INFO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u7761\u7720"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 158
    const-string v2, "SLEEP_START_TIME"

    sget-object v3, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :goto_4
    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 164
    const-string v2, "SLEEP_END_TIME"

    sget-object v3, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 160
    :cond_3
    const-string v2, "SLEEP_START_TIME"

    const-string v3, "00:00"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 166
    :cond_4
    const-string v2, "SLEEP_END_TIME"

    const-string v3, "00:00"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 173
    :cond_5
    const-string v2, "SLEEP_DURATION"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 179
    :cond_6
    const-string v2, "SLEEP_DEEP_DURATION"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3
.end method

.method private initChart(Lcom/github/mikephil/charting/charts/BarChart;)V
    .locals 13
    .param p1, "mChart"    # Lcom/github/mikephil/charting/charts/BarChart;

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v10, 0x0

    .line 636
    const-string v6, ""

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setDescription(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setPinchZoom(Z)V

    .line 638
    invoke-virtual {p1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawGridBackground(Z)V

    .line 639
    invoke-virtual {p1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawBarShadow(Z)V

    .line 640
    invoke-virtual {p1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setScaleEnabled(Z)V

    .line 641
    invoke-virtual {p1, v10}, Lcom/github/mikephil/charting/charts/BarChart;->setDrawValueAboveBar(Z)V

    .line 642
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 643
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 644
    const v6, 0x7f080260

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/github/mikephil/charting/charts/BarChart;->setNoDataText(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v4

    .line 647
    .local v4, "xLabels":Lcom/github/mikephil/charting/components/XAxis;
    sget-object v6, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 648
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/XAxis;->setTextColor(I)V

    .line 649
    const-string v6, "#C6CDFC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/XAxis;->setAxisLineColor(I)V

    .line 650
    invoke-virtual {v4, v11, v11, v12}, Lcom/github/mikephil/charting/components/XAxis;->enableGridDashedLine(FFF)V

    .line 651
    invoke-virtual {v4, v10}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 652
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/components/XAxis;->setSpaceBetweenLabels(I)V

    .line 654
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v5

    .line 655
    .local v5, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 657
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v5, v6}, Lcom/github/mikephil/charting/components/YAxis;->setSpaceBottom(F)V

    .line 658
    invoke-virtual {v5, v10}, Lcom/github/mikephil/charting/components/YAxis;->setStartAtZero(Z)V

    .line 660
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getSleepAim(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 661
    .local v3, "sleepAim":I
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v6, "0.0"

    invoke-direct {v0, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 663
    .local v0, "df":Ljava/text/DecimalFormat;
    new-instance v1, Lcom/github/mikephil/charting/components/LimitLine;

    int-to-float v6, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v8, v3

    const/high16 v9, 0x42700000    # 60.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "h"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 664
    .local v1, "ll1":Lcom/github/mikephil/charting/components/LimitLine;
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 665
    invoke-virtual {v1, v11, v11, v12}, Lcom/github/mikephil/charting/components/LimitLine;->enableDashedLine(FFF)V

    .line 666
    sget-object v6, Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;->RIGHT_TOP:Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/LimitLine;->setLabelPosition(Lcom/github/mikephil/charting/components/LimitLine$LimitLabelPosition;)V

    .line 667
    invoke-virtual {v1, v11}, Lcom/github/mikephil/charting/components/LimitLine;->setTextSize(F)V

    .line 668
    const-string v6, "#C6CDFC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/LimitLine;->setTextColor(I)V

    .line 669
    const-string v6, "#C6CDFC"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 670
    invoke-virtual {v5, v1}, Lcom/github/mikephil/charting/components/YAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    .line 672
    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;

    const v6, 0x7f0400be

    invoke-direct {v2, p0, v6}, Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;-><init>(Landroid/content/Context;I)V

    .line 673
    .local v2, "mv":Lcom/meizu/smart/wristband/meizuUI/sleep/MyMarkerView_sleep;
    invoke-virtual {p1, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setMarkerView(Lcom/github/mikephil/charting/components/MarkerView;)V

    .line 675
    invoke-virtual {p1}, Lcom/github/mikephil/charting/charts/BarChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 676
    invoke-virtual {p1, p0}, Lcom/github/mikephil/charting/charts/BarChart;->setOnChartValueSelectedListener(Lcom/github/mikephil/charting/listener/OnChartValueSelectedListener;)V

    .line 677
    return-void
.end method

.method private initChartData(Z)I
    .locals 14
    .param p1, "hasColor"    # Z

    .prologue
    .line 409
    const/16 v9, 0x320

    iput v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    .line 410
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 411
    .local v8, "yVals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/BarEntry;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 412
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget v5, v9, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->deep:I

    .line 413
    .local v5, "val1":I
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget v6, v9, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->light:I

    .line 415
    .local v6, "val2":I
    new-instance v9, Lcom/github/mikephil/charting/data/BarEntry;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    int-to-float v12, v5

    aput v12, v10, v11

    const/4 v11, 0x1

    int-to-float v12, v6

    aput v12, v10, v11

    invoke-direct {v9, v10, v3}, Lcom/github/mikephil/charting/data/BarEntry;-><init>([FI)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 418
    .end local v5    # "val1":I
    .end local v6    # "val2":I
    :cond_0
    new-instance v4, Lcom/github/mikephil/charting/data/BarDataSet;

    const-string v9, " "

    invoke-direct {v4, v8, v9}, Lcom/github/mikephil/charting/data/BarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 419
    .local v4, "set1":Lcom/github/mikephil/charting/data/BarDataSet;
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->getColors(Z)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    .line 420
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setColors(Ljava/util/List;)V

    .line 421
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setDrawValues(Z)V

    .line 422
    const/high16 v9, 0x42700000    # 60.0f

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setBarSpacePercent(F)V

    .line 423
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/github/mikephil/charting/data/BarDataSet;->setHighlightEnabled(Z)V

    .line 424
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v1, "dataSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v0, Lcom/github/mikephil/charting/data/BarData;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-direct {v0, v9, v1}, Lcom/github/mikephil/charting/data/BarData;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 430
    .local v0, "data":Lcom/github/mikephil/charting/data/BarData;
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYMax()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    .line 431
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v7

    .line 432
    .local v7, "yLabels":Lcom/github/mikephil/charting/components/YAxis;
    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mSleepMax:I

    add-int/lit8 v9, v9, 0x3c

    int-to-float v9, v9

    invoke-virtual {v7, v9}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMaxValue(F)V

    .line 435
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mHandler:Landroid/os/Handler;

    .line 436
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$$Lambda$3;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v12, 0x64

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 470
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/charts/BarChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 471
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 472
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    const/16 v10, 0x7d0

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->animateY(I)V

    .line 475
    new-instance v2, Lcom/github/mikephil/charting/highlight/Highlight;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x0

    invoke-direct {v2, v9, v10}, Lcom/github/mikephil/charting/highlight/Highlight;-><init>(II)V

    .line 476
    .local v2, "highlight":Lcom/github/mikephil/charting/highlight/Highlight;
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/github/mikephil/charting/highlight/Highlight;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Lcom/github/mikephil/charting/charts/BarChart;->highlightValues([Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 479
    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    return v9
.end method

.method private initData()V
    .locals 36

    .prologue
    .line 189
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    .line 190
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    .line 193
    const/16 v31, 0x0

    .line 194
    .local v31, "time_field":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v7, :cond_3

    .line 195
    const/16 v31, 0x6

    .line 201
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 202
    .local v16, "clStart":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    .line 203
    .local v15, "clEnd":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 206
    .local v17, "clitem":Ljava/util/Calendar;
    new-instance v35, Ljava/util/Date;

    invoke-direct/range {v35 .. v35}, Ljava/util/Date;-><init>()V

    .line 209
    .local v35, "today":Ljava/util/Date;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v7, :cond_5

    .line 211
    invoke-static/range {v35 .. v35}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getDateStart(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 212
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_DAY:I

    neg-int v5, v5

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 214
    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 232
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v7, :cond_7

    .line 233
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getStatSleepByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    .line 241
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1a

    .line 242
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sleepdata list size = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 246
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v23

    if-ne v0, v5, :cond_9

    :cond_2
    const/4 v9, 0x0

    .line 248
    .local v9, "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :goto_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 250
    .local v14, "cToday":Ljava/util/Calendar;
    const-string/jumbo v24, "xxx"

    .line 251
    .local v24, "lable":Ljava/lang/String;
    const/16 v28, 0x1

    .line 253
    .local v28, "nDayCount":I
    const/4 v5, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v26

    .line 255
    .local v26, "maxDay":I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v7, :cond_d

    .line 256
    const/4 v5, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x6

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_a

    .line 257
    const-string/jumbo v24, "\u4eca\u5929"

    .line 264
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    :goto_6
    if-nez v9, :cond_17

    .line 323
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;-><init>()V

    .line 324
    .local v6, "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 325
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;-><init>(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Lcom/meizu/smart/wristband/models/database/entity/Sleep;IIII)V

    .line 326
    .end local v9    # "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .local v4, "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v6    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :goto_7
    const/4 v5, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_3

    .line 196
    .end local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    .end local v14    # "cToday":Ljava/util/Calendar;
    .end local v15    # "clEnd":Ljava/util/Calendar;
    .end local v16    # "clStart":Ljava/util/Calendar;
    .end local v17    # "clitem":Ljava/util/Calendar;
    .end local v23    # "j":I
    .end local v24    # "lable":Ljava/lang/String;
    .end local v26    # "maxDay":I
    .end local v28    # "nDayCount":I
    .end local v35    # "today":Ljava/util/Date;
    :cond_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    if-ne v5, v7, :cond_4

    .line 197
    const/16 v31, 0x3

    goto/16 :goto_0

    .line 199
    :cond_4
    const/16 v31, 0x2

    goto/16 :goto_0

    .line 216
    .restart local v15    # "clEnd":Ljava/util/Calendar;
    .restart local v16    # "clStart":Ljava/util/Calendar;
    .restart local v17    # "clitem":Ljava/util/Calendar;
    .restart local v35    # "today":Ljava/util/Date;
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    if-ne v5, v7, :cond_6

    .line 219
    invoke-static/range {v35 .. v35}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 220
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_WEEK:I

    neg-int v5, v5

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 223
    invoke-static/range {v35 .. v35}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto/16 :goto_1

    .line 224
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_month:I

    if-ne v5, v7, :cond_0

    .line 226
    invoke-static/range {v35 .. v35}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v5, v5, v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 227
    invoke-static/range {v35 .. v35}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v15, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 228
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->RIGHT_COUNT_MONTH:I

    neg-int v5, v5

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    if-ne v5, v7, :cond_8

    .line 235
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getStatSleepByWeek(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    goto/16 :goto_2

    .line 236
    :cond_8
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_month:I

    if-ne v5, v7, :cond_1

    .line 237
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getStatSleepByMonth(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    goto/16 :goto_2

    .line 247
    .restart local v23    # "j":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->msleeps:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    move-object v9, v5

    goto/16 :goto_4

    .line 258
    .restart local v9    # "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .restart local v14    # "cToday":Ljava/util/Calendar;
    .restart local v24    # "lable":Ljava/lang/String;
    .restart local v26    # "maxDay":I
    .restart local v28    # "nDayCount":I
    :cond_a
    const/4 v5, 0x6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x6

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_b

    const/4 v5, 0x6

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x6

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int v7, v7, v26

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_c

    .line 260
    :cond_b
    const-string/jumbo v24, "\u6628\u5929"

    goto/16 :goto_5

    .line 262
    :cond_c
    sget-object v5, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_5

    .line 265
    :cond_d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    if-ne v5, v7, :cond_12

    .line 269
    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_f

    .line 270
    const-string/jumbo v24, "\u672c\u5468"

    .line 287
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v21, v5, v7

    .line 288
    .local v21, "first":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v20, v5, v7

    .line 289
    .local v20, "end":Ljava/util/Date;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getStatSleepByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v18

    .line 290
    .local v18, "daySleepList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-eqz v18, :cond_e

    .line 291
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    .line 294
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 271
    .end local v18    # "daySleepList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v20    # "end":Ljava/util/Date;
    .end local v21    # "first":Ljava/util/Date;
    :cond_f
    const/4 v5, 0x3

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_10

    const/4 v5, 0x3

    .line 272
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x3

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x35

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_11

    .line 273
    :cond_10
    const-string/jumbo v24, "\u4e0a\u5468"

    goto/16 :goto_8

    .line 275
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v27, v5, v7

    .line 276
    .local v27, "mon":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getWeekDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v30, v5, v7

    .line 277
    .local v30, "sun":Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat13b:Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_8

    .line 299
    .end local v27    # "mon":Ljava/util/Date;
    .end local v30    # "sun":Ljava/util/Date;
    :cond_12
    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_14

    .line 300
    const-string/jumbo v24, "\u672c\u6708"

    .line 311
    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v21, v5, v7

    .line 312
    .restart local v21    # "first":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/smart/wristband/utils/TimeUtil1;->getMonthDateRange(Ljava/util/Date;)[Ljava/util/Date;

    move-result-object v5

    const/4 v7, 0x1

    aget-object v20, v5, v7

    .line 313
    .restart local v20    # "end":Ljava/util/Date;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/meizu/smart/wristband/servers/DBSleepApi;->getStatSleepByDay(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/util/List;

    move-result-object v18

    .line 314
    .restart local v18    # "daySleepList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    if-eqz v18, :cond_13

    .line 315
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v28

    .line 318
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->MONTH:[Ljava/lang/String;

    const/4 v8, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 301
    .end local v18    # "daySleepList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/database/entity/Sleep;>;"
    .end local v20    # "end":Ljava/util/Date;
    .end local v21    # "first":Ljava/util/Date;
    :cond_14
    const/4 v5, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_15

    const/4 v5, 0x2

    .line 302
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v14, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0xc

    add-int/lit8 v7, v7, -0x1

    if-ne v5, v7, :cond_16

    .line 303
    :cond_15
    const-string/jumbo v24, "\u4e0a\u6708"

    goto :goto_9

    .line 305
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->MONTH:[Ljava/lang/String;

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v24, v5, v7

    goto :goto_9

    .line 331
    :cond_17
    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 332
    move-object/from16 v0, v17

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object/from16 v0, v16

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_18

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v5, v7, :cond_19

    .line 333
    :cond_18
    new-instance v6, Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    invoke-direct {v6}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;-><init>()V

    .line 334
    .restart local v6    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->setEndTime(Ljava/util/Date;)V

    .line 335
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;-><init>(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Lcom/meizu/smart/wristband/models/database/entity/Sleep;IIII)V

    .line 336
    .end local v9    # "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .restart local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 341
    .end local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    .end local v6    # "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .restart local v9    # "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    :cond_19
    new-instance v4, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDreamDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object v7, v4

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;-><init>(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;Lcom/meizu/smart/wristband/models/database/entity/Sleep;IIII)V

    .line 347
    .restart local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_7

    .line 355
    .end local v4    # "entity":Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;
    .end local v9    # "ss":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    .end local v14    # "cToday":Ljava/util/Calendar;
    .end local v23    # "j":I
    .end local v24    # "lable":Ljava/lang/String;
    .end local v26    # "maxDay":I
    .end local v28    # "nDayCount":I
    :cond_1a
    const/16 v29, 0x0

    .line 356
    .local v29, "startDay":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v22

    if-ge v0, v5, :cond_1c

    .line 357
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget v0, v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->deep:I

    move/from16 v19, v0

    .line 358
    .local v19, "deep":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget v0, v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->light:I

    move/from16 v25, v0

    .line 359
    .local v25, "light":I
    if-nez v19, :cond_1b

    if-eqz v25, :cond_1e

    .line 361
    :cond_1b
    move/from16 v29, v22

    .line 368
    .end local v19    # "deep":I
    .end local v25    # "light":I
    :cond_1c
    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    sget v7, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-ne v5, v7, :cond_1f

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    move/from16 v0, v29

    if-le v0, v5, :cond_1d

    .line 370
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v29, v5, -0x7

    .line 378
    :cond_1d
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_20

    .line 379
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    .line 405
    :goto_c
    return-void

    .line 356
    .restart local v19    # "deep":I
    .restart local v25    # "light":I
    :cond_1e
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 373
    .end local v19    # "deep":I
    .end local v25    # "light":I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    move/from16 v0, v29

    if-le v0, v5, :cond_1d

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v29, v5, -0x5

    goto :goto_b

    .line 384
    :cond_20
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v32, "tmp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v29

    invoke-interface {v5, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 387
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    move-object/from16 v0, v32

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v33, "tmp1":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v29

    invoke-interface {v5, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    move-object/from16 v0, v33

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 394
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v34, "tmp2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move/from16 v0, v29

    invoke-interface {v5, v0, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    move-object/from16 v0, v34

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 404
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    goto/16 :goto_c
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 582
    const v0, 0x7f0e00a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 583
    const v0, 0x7f0e018a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 584
    const v0, 0x7f0e018b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 587
    const v0, 0x7f0e029d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 588
    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 590
    const v0, 0x7f0e02a2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 591
    const v0, 0x7f0e02a4

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 593
    const v0, 0x7f0e02a7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 594
    const v0, 0x7f0e02a9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 596
    const v0, 0x7f0e02ac

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 597
    const v0, 0x7f0e02ae

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 599
    const v0, 0x7f0e02b1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleeptime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 600
    const v0, 0x7f0e02b3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 603
    const v0, 0x7f0e029c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 604
    const v0, 0x7f0e02a1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 605
    const v0, 0x7f0e02a6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 606
    const v0, 0x7f0e02ab

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 608
    const v0, 0x7f0e02b0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutSleeptime:Landroid/widget/RelativeLayout;

    .line 609
    const v0, 0x7f0e02b2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutWakeuptime:Landroid/widget/RelativeLayout;

    .line 612
    const v0, 0x7f0e029b

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->dateInfo:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 614
    const v0, 0x7f0e0160

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line1:Landroid/widget/ImageView;

    .line 615
    const v0, 0x7f0e016d

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line2:Landroid/widget/ImageView;

    .line 617
    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 618
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    const v0, 0x7f0e0299

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 621
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v0, 0x7f0e029a

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    .line 624
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 627
    return-void
.end method

.method private synthetic lambda$initChartData$296()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 438
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    if-ne v2, v3, :cond_1

    .line 440
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v6, :cond_0

    .line 441
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 442
    const-string/jumbo v2, "zoom fitScreen "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 445
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getWidth()I

    move-result v1

    .line 446
    .local v1, "mWidth":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float v0, v2, v3

    .line 447
    .local v0, "XScale":F
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 448
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v3, v1

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 449
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

    .line 453
    .end local v0    # "XScale":F
    .end local v1    # "mWidth":I
    :cond_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v6, :cond_2

    .line 454
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 455
    const-string/jumbo v2, "zoom fitScreen "

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->getWidth()I

    move-result v1

    .line 459
    .restart local v1    # "mWidth":I
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    div-float v0, v2, v3

    .line 460
    .restart local v0    # "XScale":F
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/BarChart;->fitScreen()V

    .line 461
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    int-to-float v3, v1

    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/github/mikephil/charting/charts/BarChart;->zoom(FFFF)V

    .line 462
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

.method private synthetic lambda$setListener$294(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$setListener$295(Ljava/lang/Void;)V
    .locals 0
    .param p1, "Void"    # Ljava/lang/Void;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->gotoSleepShare()V

    return-void
.end method

.method private resetState(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 688
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 689
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 690
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 693
    packed-switch p1, :pswitch_data_0

    .line 719
    :goto_0
    return-void

    .line 695
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->left:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 699
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 700
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 703
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->center:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 707
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 708
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_week:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 711
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/BarChart;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->right:Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;

    invoke-virtual {v0, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/TabButton;->setSelected(Z)V

    .line 715
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    .line 716
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_month:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->updateCharDate(I)V

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0298
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setColor(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 568
    if-ne v0, p1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT_PRESS:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 567
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_DEEP:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->colors:Ljava/util/List;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->COLOR_LIGHT:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 576
    :cond_1
    return-void
.end method

.method private setListener()V
    .locals 2

    .prologue
    .line 129
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 132
    const v0, 0x7f0e0177

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;)Lrx/functions/Action1;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 134
    return-void
.end method

.method private setTable(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v6, 0x0

    .line 733
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 805
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleep_data_list:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;

    iget-object v2, v5, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity$SleepEntity;->tag:Lcom/meizu/smart/wristband/models/database/entity/Sleep;

    .line 738
    .local v2, "s":Lcom/meizu/smart/wristband/models/database/entity/Sleep;
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 742
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getTotalDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 743
    .local v1, "nTotalDuration":I
    if-gez v1, :cond_1

    move v1, v6

    .line 744
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    rem-int/lit8 v5, v1, 0x3c

    if-ge v5, v9, :cond_6

    .line 746
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    :goto_1
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getDeepDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 754
    .local v0, "nDeepDuration":I
    if-gez v0, :cond_2

    move v0, v6

    .line 755
    :cond_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    rem-int/lit8 v5, v0, 0x3c

    if-ge v5, v9, :cond_7

    .line 757
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    :goto_2
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getShallowDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 764
    .local v3, "shallowDuration":I
    if-gez v3, :cond_3

    move v3, v6

    .line 765
    :cond_3
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v8, v3, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    rem-int/lit8 v5, v3, 0x3c

    if-ge v5, v9, :cond_8

    .line 767
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    rem-int/lit8 v8, v3, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    :goto_3
    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getWakeDuration()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 774
    .local v4, "wakeDuration":I
    if-gez v4, :cond_4

    move v4, v6

    .line 775
    :cond_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    .line 776
    rem-int/lit8 v5, v4, 0x3c

    if-ge v5, v9, :cond_9

    .line 777
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    .line 783
    :goto_4
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleeptime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    sget-object v6, Lcom/meizu/smart/wristband/constant/SystemContant;->timeFormat0:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/Sleep;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    .end local v0    # "nDeepDuration":I
    .end local v1    # "nTotalDuration":I
    .end local v3    # "shallowDuration":I
    .end local v4    # "wakeDuration":I
    :cond_5
    :goto_5
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->dateInfo:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->date_list:Ljava/util/List;

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "\u6570\u636e"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 748
    .restart local v1    # "nTotalDuration":I
    :cond_6
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 759
    .restart local v0    # "nDeepDuration":I
    :cond_7
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 769
    .restart local v3    # "shallowDuration":I
    :cond_8
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v8, v3, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 779
    .restart local v4    # "wakeDuration":I
    :cond_9
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

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

    .line 788
    .end local v0    # "nDeepDuration":I
    .end local v1    # "nTotalDuration":I
    .end local v3    # "shallowDuration":I
    .end local v4    # "wakeDuration":I
    :cond_a
    if-eqz v2, :cond_5

    .line 789
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleeptime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupTime:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00:00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepHour:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepMin:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v6, "00"

    invoke-virtual {v5, v6}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private updateCharDate(I)V
    .locals 4
    .param p1, "unit"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 484
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit:I

    .line 486
    sget v0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->stat_data_unit_day:I

    if-eq p1, v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 488
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080084

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 489
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080089

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 490
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f08009b

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 492
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutSleeptime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutWakeuptime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    :goto_0
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initData()V

    .line 532
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initChartData(Z)I

    .line 537
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->x_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->setTable(I)V

    .line 538
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->sleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 498
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->deepSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 499
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->lowSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f08008a

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 500
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->wakeupSleepTitle:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const v1, 0x7f08009c

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(I)V

    .line 502
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutSleeptime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->layoutWakeuptime:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->line2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 682
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->resetState(I)V

    .line 683
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->MONTH:[Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initView()V

    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mDayChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 108
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mWeekChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 109
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mMonthChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->initChart(Lcom/github/mikephil/charting/charts/BarChart;)V

    .line 110
    const v0, 0x7f0e0298

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->resetState(I)V

    .line 111
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->setListener()V

    .line 125
    return-void
.end method

.method public onNothingSelected()V
    .locals 0

    .prologue
    .line 810
    return-void
.end method

.method public onValueSelected(Lcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 2
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "dataSetIndex"    # I
    .param p3, "h"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 723
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dataSetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h.getXIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " h.dataSetIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->setColor(I)V

    .line 727
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->mChar:Lcom/github/mikephil/charting/charts/BarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/BarChart;->invalidate()V

    .line 728
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->selectIndex:I

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->setTable(I)V

    .line 729
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sleep/SleepHistoryActivity;->setContentView(I)V

    .line 97
    return-void
.end method
