.class public Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;
.super Landroid/view/View;
.source "SuperProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private context:Landroid/content/Context;

.field private displayDrawableResId:I

.field private displayStyle:I

.field public mHandler:Landroid/os/Handler;

.field private mProgressListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

.field private matrix:Landroid/graphics/Matrix;

.field private maxProgress:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private resBitmap:Landroid/graphics/Bitmap;

.field private rotateDegree:I

.field private roundColor:I

.field private roundProgressColor:I

.field private roundWidth:F

.field private startDrawableAnim:Z

.field private textColor:I

.field private textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    .line 84
    const/4 v1, -0x5

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->rotateDegree:I

    .line 97
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->matrix:Landroid/graphics/Matrix;

    .line 98
    iput-boolean v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->startDrawableAnim:Z

    .line 286
    new-instance v1, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;)V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->context:Landroid/content/Context;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    .line 114
    sget-object v1, Lcom/meizu/smart/wristband/R$styleable;->SuperProgressWheel:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 116
    .local v0, "mTypedArray":Landroid/content/res/TypedArray;
    const v1, -0xffff01

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundColor:I

    .line 117
    const/4 v1, 0x1

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundProgressColor:I

    .line 118
    const/4 v1, 0x3

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textColor:I

    .line 119
    const/4 v1, 0x4

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textSize:F

    .line 120
    const/4 v1, 0x2

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundWidth:F

    .line 121
    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    .line 122
    const/4 v1, 0x6

    const v2, 0x7f0200ee

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayDrawableResId:I

    .line 123
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayStyle:I

    .line 125
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;)Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->mProgressListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

    return-object v0
.end method


# virtual methods
.method public getDisplayDrawableResId()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayDrawableResId:I

    return v0
.end method

.method public getDisplayStyle()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayStyle:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    return v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoundColor()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundColor:I

    return v0
.end method

.method public getRoundProgressColor()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundProgressColor:I

    return v0
.end method

.method public getRoundWidth()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundWidth:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textSize:F

    return v0
.end method

.method public isStartDrawableAnim()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->startDrawableAnim:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 131
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->getWidth()I

    move-result v1

    div-int/lit8 v13, v1, 0x2

    .line 137
    .local v13, "centre":I
    int-to-float v1, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v16, v0

    .line 138
    .local v16, "radius":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 142
    new-instance v2, Landroid/graphics/RectF;

    sub-int v1, v13, v16

    int-to-float v1, v1

    sub-int v3, v13, v16

    int-to-float v3, v3

    add-int v5, v13, v16

    int-to-float v5, v5

    add-int v6, v13, v16

    int-to-float v6, v6

    invoke-direct {v2, v1, v3, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 145
    .local v2, "oval":Landroid/graphics/RectF;
    const v4, 0x3f124925

    .line 146
    .local v4, "sweepAngle":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    const/16 v1, 0x8c

    if-gt v14, v1, :cond_0

    .line 147
    mul-int/lit8 v1, v14, 0x2

    add-int/lit16 v1, v1, 0x82

    int-to-float v0, v1

    move/from16 v17, v0

    .line 148
    .local v17, "startAngle":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    sub-float v3, v17, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 154
    .end local v17    # "startAngle":F
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundProgressColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    if-eqz v1, :cond_1

    .line 157
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    mul-int/lit16 v1, v1, 0x8c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    div-int/2addr v1, v3

    if-gt v14, v1, :cond_1

    .line 158
    mul-int/lit8 v1, v14, 0x2

    add-int/lit16 v1, v1, 0x82

    int-to-float v12, v1

    .line 159
    .local v12, "ProgressStartAngle":F
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, v4, v1

    sub-float v3, v12, v1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 157
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 166
    .end local v12    # "ProgressStartAngle":F
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayStyle:I

    packed-switch v1, :pswitch_data_0

    .line 188
    :cond_2
    :goto_2
    :pswitch_0
    return-void

    .line 170
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textSize:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 174
    move-object/from16 v0, p0

    iget v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v1, v3

    float-to-int v15, v1

    .line 175
    .local v15, "percent":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 176
    .local v18, "textWidth":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v3, v13

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v18, v5

    sub-float/2addr v3, v5

    int-to-float v5, v13

    move-object/from16 v0, p0

    iget v6, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textSize:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 179
    .end local v15    # "percent":I
    .end local v18    # "textWidth":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayDrawableResId:I

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->bitmap:Landroid/graphics/Bitmap;

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->matrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->rotateDegree:I

    int-to-float v3, v3

    int-to-float v5, v13

    int-to-float v6, v13

    invoke-virtual {v1, v3, v5, v6}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->bitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->matrix:Landroid/graphics/Matrix;

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->resBitmap:Landroid/graphics/Bitmap;

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->resBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->resBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v13, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->resBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v13, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->startDrawableAnim:Z

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->invalidate()V

    goto/16 :goto_2

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setDisplayDrawableResId(I)V
    .locals 0
    .param p1, "displayDrawableResId"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayDrawableResId:I

    .line 260
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 0
    .param p1, "displayStyle"    # I

    .prologue
    .line 267
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->displayStyle:I

    .line 268
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    .line 252
    return-void
.end method

.method public setOnProgressListener(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;)V
    .locals 0
    .param p1, "mProgressListener"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->mProgressListener:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

    .line 272
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    if-ge p1, v0, :cond_0

    .line 196
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    .line 197
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->maxProgress:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->progress:I

    .line 201
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->postInvalidate()V

    .line 202
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRoundColor(I)V
    .locals 0
    .param p1, "roundColor"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundColor:I

    .line 212
    return-void
.end method

.method public setRoundProgressColor(I)V
    .locals 0
    .param p1, "roundProgressColor"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundProgressColor:I

    .line 220
    return-void
.end method

.method public setRoundWidth(F)V
    .locals 0
    .param p1, "roundWidth"    # F

    .prologue
    .line 243
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->roundWidth:F

    .line 244
    return-void
.end method

.method public setStartDrawableAnim(Z)V
    .locals 0
    .param p1, "startDrawableAnim"    # Z

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->startDrawableAnim:Z

    .line 284
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 227
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textColor:I

    .line 228
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 235
    iput p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->textSize:F

    .line 236
    return-void
.end method
