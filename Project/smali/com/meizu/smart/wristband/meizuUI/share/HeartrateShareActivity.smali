.class public Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;
.super Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;
.source "HeartrateShareActivity.java"


# static fields
.field public static final HEARTRATE_DATA:Ljava/lang/String; = "HEARTRATE_DATA"

.field public static final HEARTRATE_DATE_INFO:Ljava/lang/String; = "HEARTRATE_DATE_INFO"


# instance fields
.field private final BASE_HEART_LINE_WIDTH:I

.field private heartChart:Lcom/github/mikephil/charting/charts/LineChart;

.field private heartrate_data:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private heartrate_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private iconPathString:Ljava/lang/String;

.field private llShareAppInfo:Landroid/widget/LinearLayout;

.field private llShareButton:Landroid/widget/LinearLayout;

.field private rlShareBitmap:Landroid/widget/LinearLayout;

.field private rlShateTitle:Landroid/widget/RelativeLayout;

.field private username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

.field private userphoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;-><init>()V

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->BASE_HEART_LINE_WIDTH:I

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->iconPathString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->showShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->lambda$onCreate$291()V

    return-void
.end method

.method private getCutScreen()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;-><init>()V

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/share/CutScreen;->getBitmappath(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->iconPathString:Ljava/lang/String;

    .line 100
    return-void
.end method

.method private initChart()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 126
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/charts/LineChart;->setDescription(Ljava/lang/String;)V

    .line 127
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setTouchEnabled(Z)V

    .line 128
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDragEnabled(Z)V

    .line 129
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setScaleEnabled(Z)V

    .line 130
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setPinchZoom(Z)V

    .line 131
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/charts/LineChart;->setDrawGridBackground(Z)V

    .line 132
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v0

    .line 133
    .local v0, "x":Lcom/github/mikephil/charting/components/XAxis;
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setEnabled(Z)V

    .line 134
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 135
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setDrawAxisLine(Z)V

    .line 136
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    .line 137
    .local v1, "y":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v1, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 138
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v2

    .line 139
    .local v2, "yr":Lcom/github/mikephil/charting/components/YAxis;
    invoke-virtual {v2, v5}, Lcom/github/mikephil/charting/components/YAxis;->setEnabled(Z)V

    .line 140
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->setData()V

    .line 141
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/Legend;->setEnabled(Z)V

    .line 142
    return-void
.end method

.method private initDate()V
    .locals 6

    .prologue
    .line 73
    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v2

    .line 74
    .local v2, "loginUser":Lcom/meizu/smart/wristband/models/database/entity/User;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->userphoto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getPortrait()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->dncodeBase64(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/smart/wristband/utils/BitmapUtil;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 78
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/models/database/entity/User;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "HEARTRATE_DATE_INFO"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "dateInfo":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartrate_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    invoke-virtual {v3, v0}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "HEARTRATE_DATA"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "heartrate":I
    if-nez v1, :cond_2

    .line 87
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartrate_data:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartrate_data:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 103
    const v0, 0x7f0e02e1

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->rlShareBitmap:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f0e02e7

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->llShareAppInfo:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0e02c9

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->llShareButton:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0e02e8

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->rlShateTitle:Landroid/widget/RelativeLayout;

    .line 108
    const v0, 0x7f0e02e2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->userphoto:Landroid/widget/ImageView;

    .line 109
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->username:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 111
    const v0, 0x7f0e02e3

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartrate_date:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 112
    const v0, 0x7f0e02e5

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartrate_data:Lcom/meizu/smart/wristband/meizuUI/font/BaseTextView;

    .line 114
    const v0, 0x7f0e02e6

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/charts/LineChart;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    .line 115
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->initChart()V

    .line 116
    return-void
.end method

.method private synthetic lambda$onCreate$291()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->getCutScreen()V

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

    .line 152
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v7, "xVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v6, "vals1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/github/mikephil/charting/data/Entry;>;"
    const/4 v4, 0x0

    .local v4, "n":I
    :goto_0
    const/4 v8, 0x4

    if-ge v4, v8, :cond_3

    .line 158
    mul-int/lit8 v0, v4, 0x64

    .line 159
    .local v0, "base":I
    move v2, v0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v8, v4, 0x1

    mul-int/lit8 v8, v8, 0x64

    if-ge v2, v8, :cond_0

    .line 160
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

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    :cond_0
    add-int/lit8 v2, v0, 0x0

    move v3, v2

    .line 163
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v8, v0, 0x14

    if-ge v3, v8, :cond_1

    .line 164
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

    .line 166
    :cond_1
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41400000    # 12.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v10, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v10, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3fc00000    # -3.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v11, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v14, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41100000    # 9.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41400000    # 12.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41800000    # 16.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41a00000    # 20.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41c80000    # 25.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41f00000    # 30.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42040000    # 33.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42180000    # 38.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42200000    # 40.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42280000    # 42.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x42280000    # 42.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x421c0000    # 39.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x420c0000    # 35.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41f00000    # 30.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41c80000    # 25.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41a00000    # 20.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41700000    # 15.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x41200000    # 10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x40a00000    # 5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v10, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3f600000    # -5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ee00000    # -10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ea00000    # -14.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e700000    # -18.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e500000    # -22.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v13, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v13, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v13, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e500000    # -22.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3e700000    # -18.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ea00000    # -14.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3ee00000    # -10.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, -0x3f600000    # -5.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v11, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v12, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x40000000    # 2.0f

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-direct {v8, v9, v2}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v8, Lcom/github/mikephil/charting/data/Entry;

    const/high16 v9, 0x3f800000    # 1.0f

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-direct {v8, v9, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FI)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    .line 219
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_3
    add-int/lit8 v8, v0, 0x64

    if-ge v3, v8, :cond_2

    .line 220
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

    .line 157
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 225
    .end local v0    # "base":I
    .end local v3    # "i":I
    :cond_3
    new-instance v5, Lcom/github/mikephil/charting/data/LineDataSet;

    const-string v8, "DataSet 1"

    invoke-direct {v5, v6, v8}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 226
    .local v5, "set1":Lcom/github/mikephil/charting/data/LineDataSet;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCubic(Z)V

    .line 227
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawCircles(Z)V

    .line 228
    const/16 v8, 0xf4

    const/16 v9, 0x75

    const/16 v10, 0x75

    invoke-static {v8, v9, v10}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighLightColor(I)V

    .line 229
    const-string v8, "#FF7F6B"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 230
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 231
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawHorizontalHighlightIndicator(Z)V

    .line 232
    new-instance v1, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v1, v7, v5}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 233
    .local v1, "data":Lcom/github/mikephil/charting/data/LineData;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/github/mikephil/charting/data/LineData;->setDrawValues(Z)V

    .line 234
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->heartChart:Lcom/github/mikephil/charting/charts/LineChart;

    invoke-virtual {v8, v1}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    .line 236
    return-void
.end method

.method private setListener()V
    .locals 3

    .prologue
    .line 240
    const v1, 0x7f0e0070

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 241
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    const v1, 0x7f0e0162

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$2;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v1, 0x7f0e0163

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$3;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v1, 0x7f0e02ca

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$4;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$4;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v1, 0x7f0e02cb

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$5;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$5;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v1, 0x7f0e0166

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$6;

    invoke-direct {v2, p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method private showShare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "iconPathString"    # Ljava/lang/String;
    .param p2, "platform"    # Ljava/lang/String;

    .prologue
    .line 290
    new-instance v0, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 291
    .local v0, "oks":Lcn/sharesdk/onekeyshare/OnekeyShare;
    const-string v1, "Have a look now!"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setComment(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setDialogMode()V

    .line 293
    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->ExistSDCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/meizu/smart/wristband/utils/SdCardUtil;->getSDFreeSize()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImagePath(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 297
    :cond_0
    invoke-virtual {v0, p1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setFilePath(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->disableSSOWhenAuthorize()V

    .line 299
    if-eqz p2, :cond_1

    .line 300
    invoke-virtual {v0, p2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 302
    :cond_1
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/meizuUI/share/ShareContentCustomizeDemo;-><init>()V

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setShareContentCustomizeCallback(Lcn/sharesdk/onekeyshare/ShareContentCustomizeCallback;)V

    .line 303
    invoke-virtual {v0, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    .line 304
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->initView()V

    .line 66
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->initDate()V

    .line 67
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->setListener()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 69
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {p0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity$$Lambda$1;->lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    return-void
.end method

.method public setView()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f04009c

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/share/HeartrateShareActivity;->setContentView(I)V

    .line 60
    return-void
.end method
