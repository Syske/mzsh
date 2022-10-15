.class public Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;
.super Landroid/view/View;
.source "ProgressWheel.java"


# instance fields
.field bShowText:Z

.field private barColor:I

.field private barLength:I

.field private barPaint:Landroid/graphics/Paint;

.field private barWidth:I

.field private circleBounds:Landroid/graphics/RectF;

.field private circleColor:I

.field private circleInnerContour:Landroid/graphics/RectF;

.field private circlePaint:Landroid/graphics/Paint;

.field private circleRadius:I

.field private circleWidth:I

.field private delayMillis:I

.field private fullRadius:I

.field isSpinning:Z

.field private layout_height:I

.field private layout_width:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field progress:I

.field private rectBounds:Landroid/graphics/RectF;

.field private rimBounds:Landroid/graphics/RectF;

.field private rimColor:I

.field private rimPaint:Landroid/graphics/Paint;

.field private rimWidth:I

.field private spinSpeed:I

.field private splitText:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_height:I

    .line 29
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_width:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->fullRadius:I

    .line 31
    const/16 v0, 0x50

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleRadius:I

    .line 32
    const/16 v0, 0x3c

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    .line 33
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    .line 34
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    .line 35
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    .line 36
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    .line 39
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    .line 40
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    .line 41
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    .line 42
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    .line 45
    const/high16 v0, -0x56000000

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    .line 46
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    .line 47
    const v0, -0x55222223

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    .line 48
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 60
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimBounds:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleInnerContour:Landroid/graphics/RectF;

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    .line 67
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    .line 68
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 69
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    .line 70
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->bShowText:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->text:Ljava/lang/String;

    .line 74
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/meizu/smart/wristband/R$styleable;->ProgressWheel:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 87
    return-void
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v2, 0x0

    .line 232
    const/16 v0, 0xb

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    .line 235
    const/16 v0, 0x9

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    .line 238
    const/4 v0, 0x5

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    .line 241
    const/4 v0, 0x6

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    .line 244
    const/4 v0, 0x7

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    .line 246
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    if-gez v0, :cond_0

    .line 247
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    .line 250
    :cond_0
    const/4 v0, 0x3

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    .line 252
    const/16 v0, 0xc

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    .line 255
    const/4 v0, 0x2

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    .line 258
    const/4 v0, 0x1

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    .line 262
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 266
    :cond_1
    const/4 v0, 0x4

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    .line 269
    const/16 v0, 0x8

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    .line 273
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    return-void
.end method

.method private scheduleRedraw()V
    .locals 2

    .prologue
    .line 314
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 315
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 318
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->postInvalidateDelayed(J)V

    .line 319
    return-void
.end method

.method private setupBounds()V
    .locals 11

    .prologue
    .line 196
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_width:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_height:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 199
    .local v1, "minValue":I
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_width:I

    sub-int v3, v5, v1

    .line 200
    .local v3, "xOffset":I
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_height:I

    sub-int v4, v5, v1

    .line 203
    .local v4, "yOffset":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingTop()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    .line 204
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingBottom()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    .line 205
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingLeft()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    .line 206
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingRight()I

    move-result v5

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    .line 208
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getWidth()I

    move-result v2

    .line 209
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getHeight()I

    move-result v0

    .line 211
    .local v0, "height":I
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    sub-int v8, v2, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rectBounds:Landroid/graphics/RectF;

    .line 214
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    sub-int v8, v2, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    .line 218
    new-instance v5, Landroid/graphics/RectF;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    sub-int v8, v2, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    sub-int v9, v0, v9

    iget v10, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimBounds:Landroid/graphics/RectF;

    .line 222
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->fullRadius:I

    .line 223
    iget v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->fullRadius:I

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleRadius:I

    .line 224
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 170
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 175
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 177
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 189
    return-void
.end method


# virtual methods
.method public getBarColor()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    return v0
.end method

.method public getBarLength()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    return v0
.end method

.method public getBarWidth()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    return v0
.end method

.method public getCircleColor()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    return v0
.end method

.method public getCircleRadius()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleRadius:I

    return v0
.end method

.method public getDelayMillis()I
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    return v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    return v0
.end method

.method public getRimColor()I
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    return v0
.end method

.method public getRimShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    return-object v0
.end method

.method public getRimWidth()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    return v0
.end method

.method public getSpinSpeed()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    return v0
.end method

.method public incrementProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iput-boolean v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    .line 364
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 365
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_0

    .line 366
    iput v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->postInvalidate()V

    .line 369
    return-void
.end method

.method public isSpinning()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_0

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    .line 281
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 283
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 285
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 289
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleBounds:Landroid/graphics/RectF;

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float v8, v0, v1

    .line 297
    .local v8, "textHeight":F
    div-float v0, v8, v10

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float v9, v0, v1

    .line 299
    .local v9, "verticalTextOffset":F
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->bShowText:Z

    if-eqz v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "s":Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float v6, v0, v10

    .line 303
    .local v6, "horizontalTextOffset":F
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 304
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v9

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    .line 303
    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 308
    .end local v6    # "horizontalTextOffset":F
    .end local v7    # "s":Ljava/lang/String;
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->scheduleRedraw()V

    .line 311
    :cond_1
    return-void

    .line 293
    .end local v8    # "textHeight":F
    .end local v9    # "verticalTextOffset":F
    :cond_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimBounds:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 111
    const/4 v2, 0x0

    .line 112
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getMeasuredWidth()I

    move-result v3

    .line 113
    .local v3, "width":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getMeasuredHeight()I

    move-result v0

    .line 114
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 115
    .local v4, "widthWithoutPadding":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingTop()I

    move-result v5

    sub-int v5, v0, v5

    .line 116
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingBottom()I

    move-result v6

    sub-int v1, v5, v6

    .line 128
    .local v1, "heigthWithoutPadding":I
    if-le v4, v1, :cond_0

    .line 129
    move v2, v1

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    .line 144
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingTop()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    .line 143
    invoke-virtual {p0, v5, v6}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setMeasuredDimension(II)V

    .line 145
    return-void

    .line 131
    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 158
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_width:I

    .line 159
    iput p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->layout_height:I

    .line 161
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setupBounds()V

    .line 162
    invoke-direct {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setupPaints()V

    .line 163
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->invalidate()V

    .line 164
    return-void
.end method

.method public resetCount()V
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 338
    const-string v0, "0%"

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->setText(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->invalidate()V

    .line 340
    return-void
.end method

.method public setBarColor(I)V
    .locals 2
    .param p1, "barColor"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    .line 473
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 476
    :cond_0
    return-void
.end method

.method public setBarLength(I)V
    .locals 0
    .param p1, "barLength"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barLength:I

    .line 408
    return-void
.end method

.method public setBarWidth(I)V
    .locals 2
    .param p1, "barWidth"    # I

    .prologue
    .line 415
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    .line 417
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->barWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 420
    :cond_0
    return-void
.end method

.method public setCircleColor(I)V
    .locals 2
    .param p1, "circleColor"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    .line 485
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    :cond_0
    return-void
.end method

.method public setCircleRadius(I)V
    .locals 0
    .param p1, "circleRadius"    # I

    .prologue
    .line 399
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->circleRadius:I

    .line 400
    return-void
.end method

.method public setDelayMillis(I)V
    .locals 0
    .param p1, "delayMillis"    # I

    .prologue
    .line 547
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->delayMillis:I

    .line 548
    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 0
    .param p1, "paddingBottom"    # I

    .prologue
    .line 447
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingBottom:I

    .line 448
    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 0
    .param p1, "paddingLeft"    # I

    .prologue
    .line 455
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingLeft:I

    .line 456
    return-void
.end method

.method public setPaddingRight(I)V
    .locals 0
    .param p1, "paddingRight"    # I

    .prologue
    .line 463
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingRight:I

    .line 464
    return-void
.end method

.method public setPaddingTop(I)V
    .locals 0
    .param p1, "paddingTop"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->paddingTop:I

    .line 440
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    .line 376
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 377
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->postInvalidate()V

    .line 378
    return-void
.end method

.method public setRimColor(I)V
    .locals 2
    .param p1, "rimColor"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    .line 497
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 500
    :cond_0
    return-void
.end method

.method public setRimShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1, "shader"    # Landroid/graphics/Shader;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 508
    return-void
.end method

.method public setRimWidth(I)V
    .locals 2
    .param p1, "rimWidth"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    .line 537
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->rimWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 540
    :cond_0
    return-void
.end method

.method public setSpinSpeed(I)V
    .locals 0
    .param p1, "spinSpeed"    # I

    .prologue
    .line 527
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->spinSpeed:I

    .line 528
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->text:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->text:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->splitText:[Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setTextColor(I)V
    .locals 2
    .param p1, "textColor"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    .line 517
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    .line 429
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 432
    :cond_0
    return-void
.end method

.method public spin()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    .line 356
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->postInvalidate()V

    .line 357
    return-void
.end method

.method public stopSpinning()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->isSpinning:Z

    .line 347
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->progress:I

    .line 348
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/widget/ProgressWheel;->postInvalidate()V

    .line 349
    return-void
.end method
