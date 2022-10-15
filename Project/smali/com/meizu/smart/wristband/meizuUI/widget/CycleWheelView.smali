.class public Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
.super Landroid/widget/ListView;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;,
        Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;,
        Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;
    }
.end annotation


# static fields
.field private static final COLOR_DIVIDER_DEFALUT:I

.field private static final COLOR_SOLID_DEFAULT:I

.field private static final COLOR_SOLID_SELET_DEFAULT:I

.field private static final HEIGHT_DIVIDER_DEFAULT:I = 0x2

.field public static final TAG:Ljava/lang/String;

.field private static final WHEEL_SIZE_DEFAULT:I = 0x3


# instance fields
.field private cylceEnable:Z

.field private dividerColor:I

.field private dividerHeight:I

.field private mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

.field private mAlphaGradual:F

.field private mCurrentPositon:I

.field private mHandler:Landroid/os/Handler;

.field private mItemHeight:I

.field private mItemLabelTvId:I

.field private mItemLayoutId:I

.field private mItemSelectedListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

.field private mLabelColor:I

.field private mLabelSelectColor:I

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWheelSize:I

.field private seletedSolidColor:I

.field private solidColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, "#747474"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    .line 35
    const-string v0, "#3e4043"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    .line 36
    const-string v0, "#323335"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelSelectColor:I

    .line 56
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelColor:I

    .line 61
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAlphaGradual:F

    .line 66
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerColor:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerHeight:I

    .line 76
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->seletedSolidColor:I

    .line 81
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->solidColor:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelSelectColor:I

    .line 56
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelColor:I

    .line 61
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAlphaGradual:F

    .line 66
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerColor:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerHeight:I

    .line 76
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->seletedSolidColor:I

    .line 81
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->solidColor:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    .line 115
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->init()V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelSelectColor:I

    .line 56
    const v0, -0x777778

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelColor:I

    .line 61
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAlphaGradual:F

    .line 66
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerColor:I

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerHeight:I

    .line 76
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->seletedSolidColor:I

    .line 81
    sget v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->solidColor:I

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;F)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getDistance(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->cylceEnable:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLayoutId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLabelTvId:I

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->refreshItems()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$401(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->seletedSolidColor:I

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->solidColor:I

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;

    .prologue
    .line 30
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    return v0
.end method

.method private getDistance(F)I
    .locals 2
    .param p1, "scrollDistance"    # F

    .prologue
    .line 162
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 163
    float-to-int v0, p1

    .line 167
    :goto_0
    return v0

    .line 164
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 165
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 167
    :cond_2
    const/high16 v0, 0x40c00000    # 6.0f

    div-float v0, p1, v0

    float-to-int v0, v0

    goto :goto_0
.end method

.method private getPosition(I)I
    .locals 3
    .param p1, "positon"    # I

    .prologue
    .line 269
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 270
    :cond_0
    const/4 p1, 0x0

    .line 276
    .end local p1    # "positon":I
    :cond_1
    :goto_0
    return p1

    .line 272
    .restart local p1    # "positon":I
    :cond_2
    iget-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->cylceEnable:Z

    if-eqz v1, :cond_1

    .line 273
    const v1, 0x3fffffff    # 1.9999999f

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int v0, v1, v2

    .line 274
    .local v0, "d":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mHandler:Landroid/os/Handler;

    .line 124
    const v0, 0x7f040070

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLayoutId:I

    .line 125
    const v0, 0x7f0e0256

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLabelTvId:I

    .line 126
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    .line 127
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setVerticalScrollBarEnabled(Z)V

    .line 128
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setScrollingCacheEnabled(Z)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setCacheColorHint(I)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setFadingEdgeLength(I)V

    .line 131
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setOverScrollMode(I)V

    .line 132
    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setDividerHeight(I)V

    .line 133
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 159
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->measureHeight()I

    move-result v2

    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemHeight:I

    .line 392
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 393
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemHeight:I

    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 394
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 395
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 396
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V

    .line 431
    .local v0, "backgroud":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    return-void
.end method

.method private measureHeight()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLayoutId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 436
    .local v2, "itemView":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 439
    .local v3, "w":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 440
    .local v0, "h":I
    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 441
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 443
    .local v1, "height":I
    return v1
.end method

.method private refreshItems()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 172
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v3, 0x2

    .line 173
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getFirstVisiblePosition()I

    move-result v0

    .line 174
    .local v0, "firstPosition":I
    const/4 v2, 0x0

    .line 175
    .local v2, "position":I
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0, v4}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_3

    .line 179
    add-int v2, v0, v1

    .line 183
    :goto_1
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    if-eq v2, v3, :cond_0

    .line 186
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    .line 187
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemSelectedListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemSelectedListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelection()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelectLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 190
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->resetItems(III)V

    goto :goto_0

    .line 181
    :cond_3
    add-int v3, v0, v1

    add-int/lit8 v2, v3, 0x1

    goto :goto_1
.end method

.method private resetItems(III)V
    .locals 10
    .param p1, "firstPosition"    # I
    .param p2, "position"    # I
    .param p3, "offset"    # I

    .prologue
    .line 194
    sub-int v6, p2, p3

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    add-int v6, p2, p3

    add-int/lit8 v6, v6, 0x1

    if-ge v3, v6, :cond_2

    .line 195
    sub-int v6, v3, p1

    invoke-virtual {p0, v6}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 196
    .local v4, "itemView":Landroid/view/View;
    if-nez v4, :cond_0

    .line 194
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_0
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLabelTvId:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 200
    .local v5, "labelTv":Landroid/widget/TextView;
    if-ne p2, v3, :cond_1

    .line 201
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelSelectColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 202
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 204
    :cond_1
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelColor:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    sub-int v6, v3, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 206
    .local v2, "delta":I
    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAlphaGradual:F

    float-to-double v6, v6

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 207
    .local v0, "alpha":D
    double-to-float v6, v0

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 210
    .end local v0    # "alpha":D
    .end local v2    # "delta":I
    .end local v4    # "itemView":Landroid/view/View;
    .end local v5    # "labelTv":Landroid/widget/TextView;
    :cond_2
    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    return-object v0
.end method

.method public getSelectLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelection()I

    move-result v1

    .line 298
    .local v1, "position":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 300
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-object v2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public getSelection()I
    .locals 2

    .prologue
    .line 285
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    if-nez v0, :cond_0

    .line 286
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    .line 288
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public setAlphaGradual(F)V
    .locals 3
    .param p1, "alphaGradual"    # F

    .prologue
    .line 347
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAlphaGradual:F

    .line 348
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->resetItems(III)V

    .line 349
    return-void
.end method

.method public setCycleEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->cylceEnable:Z

    if-eq v0, p1, :cond_0

    .line 249
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->cylceEnable:Z

    .line 250
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 251
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setSelection(I)V

    .line 253
    :cond_0
    return-void
.end method

.method public setDivider(II)V
    .locals 0
    .param p1, "dividerColor"    # I
    .param p2, "dividerHeight"    # I

    .prologue
    .line 385
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerColor:I

    .line 386
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->dividerHeight:I

    .line 387
    return-void
.end method

.method public setLabelColor(I)V
    .locals 3
    .param p1, "labelColor"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelColor:I

    .line 328
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->resetItems(III)V

    .line 329
    return-void
.end method

.method public setLabelSelectColor(I)V
    .locals 3
    .param p1, "labelSelectColor"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabelSelectColor:I

    .line 338
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mCurrentPositon:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->resetItems(III)V

    .line 339
    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "labels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    .line 219
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 221
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->initView()V

    .line 222
    return-void
.end method

.method public setOnWheelItemSelectedListener(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;)V
    .locals 0
    .param p1, "mItemSelectedListener"    # Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemSelectedListener:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$WheelItemSelectedListener;

    .line 231
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$2;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public setSolid(II)V
    .locals 0
    .param p1, "unselectedSolidColor"    # I
    .param p2, "selectedSolidColor"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->solidColor:I

    .line 374
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->seletedSolidColor:I

    .line 375
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->initView()V

    .line 376
    return-void
.end method

.method public setWheelItemLayout(II)V
    .locals 2
    .param p1, "itemResId"    # I
    .param p2, "labelTvId"    # I

    .prologue
    .line 313
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLayoutId:I

    .line 314
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mItemLabelTvId:I

    .line 315
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    .line 316
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 317
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mAdapter:Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 318
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->initView()V

    .line 319
    return-void
.end method

.method public setWheelSize(I)V
    .locals 2
    .param p1, "wheelSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;
        }
    .end annotation

    .prologue
    .line 358
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 359
    :cond_0
    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;

    const-string v1, "Wheel Size Error , Must Be 3,5,7,9..."

    invoke-direct {v0, p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView$CycleWheelViewException;-><init>(Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_1
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->mWheelSize:I

    .line 362
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/CycleWheelView;->initView()V

    .line 364
    return-void
.end method
