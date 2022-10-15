.class public Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;
.super Landroid/view/View;
.source "HeartrateScaleView.java"


# instance fields
.field private LineColor:[I

.field private LineTip:[Ljava/lang/String;

.field private LineValue:[I

.field private context:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mLineHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private final mLineWidth:I

.field private mPerLineCount:I

.field private mPerLineWidth:I

.field private mStartX:I

.field private mTipPaint:Landroid/graphics/Paint;

.field private mValue:I

.field private mValuePaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private final mlineSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x4

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0xd

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mlineSpace:I

    .line 22
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineWidth:I

    .line 23
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineColor:[I

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    .line 30
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u672a\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8f7b\u5fae\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e2d\u5ea6\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6fc0\u70c8\u8fd0\u52a8"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    .line 38
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->context:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->init()V

    .line 40
    return-void

    .line 28
    :array_0
    .array-data 4
        -0x2595
        -0x4fa5
        -0x7ea1
        -0xa7a8
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x0
        0x61
        0x87
        0xa4
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x4

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/16 v0, 0xd

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mlineSpace:I

    .line 22
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineWidth:I

    .line 23
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineColor:[I

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    .line 30
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u672a\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8f7b\u5fae\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e2d\u5ea6\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6fc0\u70c8\u8fd0\u52a8"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    .line 45
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->context:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->init()V

    .line 47
    return-void

    .line 28
    :array_0
    .array-data 4
        -0x2595
        -0x4fa5
        -0x7ea1
        -0xa7a8
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x0
        0x61
        0x87
        0xa4
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/16 v0, 0xd

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mlineSpace:I

    .line 22
    const/16 v0, 0x9

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineWidth:I

    .line 23
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->sp2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineColor:[I

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    .line 30
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u672a\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u8f7b\u5fae\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e2d\u5ea6\u8fd0\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6fc0\u70c8\u8fd0\u52a8"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    .line 51
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->init()V

    .line 53
    return-void

    .line 28
    :array_0
    .array-data 4
        -0x2595
        -0x4fa5
        -0x7ea1
        -0xa7a8
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x0
        0x61
        0x87
        0xa4
        0xff
    .end array-data
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, -0x99999a

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, -0x2595

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 67
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    return-void
.end method

.method private initSize()V
    .locals 4

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 100
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->resetDensity(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mWidth:I

    .line 102
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mWidth:I

    div-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x16

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    .line 103
    const/16 v0, 0x16

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    .line 104
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mWidth:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mStartX:I

    .line 105
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    .line 107
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 109
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 139
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 140
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 141
    move v0, v2

    .line 148
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 143
    .end local v0    # "result":I
    :cond_1
    const/16 v0, 0x64

    .line 144
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 145
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "widthMeasureSpec"    # I

    .prologue
    .line 118
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 119
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 121
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 122
    move v0, v2

    .line 129
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 124
    .end local v0    # "result":I
    :cond_1
    const/16 v0, 0x190

    .line 125
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 126
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 155
    iget v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mStartX:I

    .line 156
    .local v3, "nStartPos":I
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v4

    .line 158
    .local v4, "nStartY":I
    const/4 v2, 0x1

    .local v2, "n":I
    :goto_0
    const/4 v8, 0x4

    if-ge v2, v8, :cond_0

    .line 159
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v9

    mul-int v3, v8, v2

    .line 160
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    int-to-float v9, v3

    int-to-float v10, v4

    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v8

    add-int/2addr v4, v8

    .line 166
    const/4 v2, 0x0

    :goto_1
    const/4 v8, 0x4

    if-ge v2, v8, :cond_2

    .line 167
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mStartX:I

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v9, v10

    mul-int/2addr v9, v2

    add-int v3, v8, v9

    .line 168
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineColor:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    if-ge v0, v8, :cond_1

    .line 171
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 172
    .local v7, "r1":Landroid/graphics/RectF;
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 173
    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 174
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 175
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    add-int/2addr v8, v4

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 176
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40a00000    # 5.0f

    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    .end local v7    # "r1":Landroid/graphics/RectF;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->getHeight()I

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v9

    sub-int v4, v8, v9

    .line 185
    const/4 v2, 0x0

    :goto_3
    const/4 v8, 0x4

    if-ge v2, v8, :cond_4

    .line 186
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v9

    mul-int v3, v8, v2

    .line 187
    const/4 v8, 0x3

    if-ne v2, v8, :cond_3

    .line 188
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 189
    .local v5, "nTextWidth":F
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-static {v10}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    int-to-float v10, v4

    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    .end local v5    # "nTextWidth":F
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 191
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineTip:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v9

    add-int/2addr v9, v3

    int-to-float v9, v9

    int-to-float v10, v4

    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 197
    :cond_4
    const/4 v2, 0x0

    :goto_5
    const/4 v8, 0x4

    if-ge v2, v8, :cond_5

    .line 198
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    aget v9, v9, v2

    if-lt v8, v9, :cond_6

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    add-int/lit8 v10, v2, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_6

    .line 199
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineColor:[I

    aget v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 201
    iget-object v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    aget v9, v9, v2

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    div-int v6, v8, v9

    .line 202
    .local v6, "perValue":I
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    iget-object v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->LineValue:[I

    aget v9, v9, v2

    sub-int/2addr v8, v9

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    div-int v1, v8, v6

    .line 203
    .local v1, "mPerCount":I
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mStartX:I

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineCount:I

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v9, v10

    mul-int/2addr v9, v2

    add-int v3, v8, v9

    .line 204
    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v8}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v4

    .line 207
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 208
    .restart local v7    # "r1":Landroid/graphics/RectF;
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 209
    int-to-float v8, v4

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 210
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 211
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    add-int/2addr v8, v4

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v9}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 212
    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x40a00000    # 5.0f

    iget-object v10, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 214
    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mPerLineWidth:I

    mul-int/2addr v8, v1

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLineHeight:I

    add-int/2addr v9, v4

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {v10}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-static {v10}, Lcom/meizu/smart/wristband/meizuUI/widget/scaleview/utils/DrawUtil;->dip2px(F)I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 218
    .end local v1    # "mPerCount":I
    .end local v6    # "perValue":I
    .end local v7    # "r1":Landroid/graphics/RectF;
    :cond_5
    return-void

    .line 197
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 87
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 88
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 89
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 91
    .local v2, "heightSize":I
    move v3, v5

    .line 92
    .local v3, "width":I
    move v0, v2

    .line 93
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->setMeasuredDimension(II)V

    .line 94
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->initSize()V

    .line 96
    return-void
.end method

.method public setHearRateValue(I)V
    .locals 0
    .param p1, "mValue"    # I

    .prologue
    .line 222
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->mValue:I

    .line 223
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/HeartrateScaleView;->invalidate()V

    .line 224
    return-void
.end method
