.class public Ldolphin/tools/common/widget/DoughnutProgressBar;
.super Landroid/view/View;
.source "DoughnutProgressBar.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field private final ANIM_INTERVAL:I

.field private barBgBorderColor:Ljava/lang/Integer;

.field private barBgColor:Ljava/lang/Integer;

.field private barHeight:I

.field private barWidth:I

.field private fillColor:Ljava/lang/Integer;

.field private fillShadeColor:Ljava/lang/Integer;

.field private haloRadius:I

.field private handler:Landroid/os/Handler;

.field private maxProgress:I

.field private progress:I

.field private progress1:I

.field private rect:Landroid/graphics/RectF;

.field private trackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress:I

    .line 27
    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress1:I

    .line 29
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    .line 116
    const/16 v1, 0xa

    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->ANIM_INTERVAL:I

    .line 118
    new-instance v1, Landroid/os/Handler;

    new-instance v2, Ldolphin/tools/common/widget/DoughnutProgressBar$1;

    invoke-direct {v2, p0}, Ldolphin/tools/common/widget/DoughnutProgressBar$1;-><init>(Ldolphin/tools/common/widget/DoughnutProgressBar;)V

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->handler:Landroid/os/Handler;

    .line 33
    sget-object v1, Ldolphin/tools/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_trackWidth:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    .line 36
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_haloRadius:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    .line 37
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_maxProgress:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->maxProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void

    .line 38
    :catchall_0
    move-exception v1

    .line 39
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    throw v1
.end method

.method static synthetic access$0(Ldolphin/tools/common/widget/DoughnutProgressBar;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress:I

    return v0
.end method

.method static synthetic access$1(Ldolphin/tools/common/widget/DoughnutProgressBar;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress1:I

    return v0
.end method

.method static synthetic access$2(Ldolphin/tools/common/widget/DoughnutProgressBar;I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress:I

    return-void
.end method

.method static synthetic access$3(Ldolphin/tools/common/widget/DoughnutProgressBar;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private drawBarFill(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;
    .param p3, "progress"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/16 v9, 0x8c

    const/4 v4, 0x0

    .line 137
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 138
    .local v5, "paint":Landroid/graphics/Paint;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 140
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 141
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 143
    const/16 v0, 0x64

    if-ne p3, v0, :cond_0

    .line 144
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    int-to-float v0, v0

    const/16 v1, 0xe2

    const/16 v3, 0xff

    const/16 v8, 0x84

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v5, v0, v10, v10, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 145
    const/high16 v3, 0x43b40000    # 360.0f

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 146
    invoke-virtual {v5}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 149
    :cond_0
    const/16 v0, 0x9

    new-array v6, v0, [I

    .line 150
    const/16 v0, 0xd0

    const/16 v1, 0x9a

    invoke-static {v0, v9, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v6, v4

    const/4 v0, 0x1

    .line 151
    const/16 v1, 0xfb

    const/16 v3, 0xa4

    const/16 v8, 0x4c

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x2

    .line 152
    const/16 v1, 0xc0

    const/16 v3, 0x91

    invoke-static {v9, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x3

    .line 153
    const/16 v1, 0x21

    const/16 v3, 0xce

    const/16 v8, 0xea

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x4

    .line 154
    const/16 v1, 0x96

    const/16 v3, 0xae

    const/16 v8, 0xc9

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x5

    .line 155
    const/16 v1, 0xff

    const/16 v3, 0x8b

    const/16 v8, 0xa7

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x6

    .line 156
    const/16 v1, 0xd6

    const/16 v3, 0x7e

    const/16 v8, 0xcb

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/4 v0, 0x7

    .line 157
    const/16 v1, 0x8d

    const/16 v3, 0x77

    const/16 v8, 0xfd

    invoke-static {v1, v3, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    const/16 v0, 0x8

    .line 158
    const/16 v1, 0xd0

    const/16 v3, 0x9a

    invoke-static {v1, v9, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    aput v1, v6, v0

    .line 160
    .local v6, "colors":[I
    new-instance v7, Landroid/graphics/SweepGradient;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v11

    add-float/2addr v0, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v7, v0, v1, v6, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 161
    .local v7, "shader":Landroid/graphics/Shader;
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 162
    mul-int/lit16 v0, p3, 0x168

    iget v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->maxProgress:I

    div-int/2addr v0, v1

    int-to-float v3, v0

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 163
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 96
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 98
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 99
    move v0, v2

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 102
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 103
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 79
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 81
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 82
    move v0, v2

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 85
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 86
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized refreshProgress()V
    .locals 4

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit p0

    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getBarBgBorderColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 227
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 228
    const/16 v0, 0xb4

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    .line 230
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBarBgColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/16 v1, 0x31

    .line 216
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 217
    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgColor:Ljava/lang/Integer;

    .line 219
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFillColor()I
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 189
    const/16 v0, 0xfc

    const/16 v1, 0x2a

    const/16 v2, 0x97

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    .line 191
    :cond_0
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFillColor2()I
    .locals 3

    .prologue
    .line 195
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getFillColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    .line 197
    const/16 v1, -0x32

    .line 199
    .local v1, "offset":I
    iget-object v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2, v1}, Ldolphin/tools/util/ColorUtil;->offset(II)I

    move-result v0

    .line 200
    .local v0, "color2":I
    return v0
.end method

.method public getFillShadeColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 204
    const/16 v0, -0x32

    .line 205
    .local v0, "offset":I
    iget-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillShadeColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 206
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getFillColor2()I

    move-result v1

    invoke-static {v1, v0}, Ldolphin/tools/util/ColorUtil;->offset(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillShadeColor:Ljava/lang/Integer;

    .line 208
    :cond_0
    iget-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillShadeColor:Ljava/lang/Integer;

    return-object v1
.end method

.method public getMaxProgress()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->maxProgress:I

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 113
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    iget v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress:I

    invoke-direct {p0, p1, v0, v1}, Ldolphin/tools/common/widget/DoughnutProgressBar;->drawBarFill(Landroid/graphics/Canvas;Landroid/graphics/RectF;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 47
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getWidth()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barWidth:I

    .line 49
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barWidth:I

    iput v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barHeight:I

    .line 55
    :goto_0
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getWidth()I

    move-result v1

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 56
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getHeight()I

    move-result v1

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    add-int/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 57
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    iget v3, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 58
    iget-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->haloRadius:I

    iget v3, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->trackWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 59
    return-void

    .line 51
    :cond_0
    invoke-virtual {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->getHeight()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barHeight:I

    .line 52
    iget v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barHeight:I

    iput v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barWidth:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ldolphin/tools/common/widget/DoughnutProgressBar;->measureWidth(I)I

    move-result v0

    .line 67
    invoke-direct {p0, p2}, Ldolphin/tools/common/widget/DoughnutProgressBar;->measureHeight(I)I

    move-result v1

    .line 66
    invoke-virtual {p0, v0, v1}, Ldolphin/tools/common/widget/DoughnutProgressBar;->setMeasuredDimension(II)V

    .line 68
    return-void
.end method

.method public setBarBgBorderColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "barBgBorderColor"    # Ljava/lang/Integer;

    .prologue
    .line 234
    iput-object p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgBorderColor:Ljava/lang/Integer;

    .line 235
    return-void
.end method

.method public setBarBgColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "barBgColor"    # Ljava/lang/Integer;

    .prologue
    .line 223
    iput-object p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->barBgColor:Ljava/lang/Integer;

    .line 224
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 184
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillColor:Ljava/lang/Integer;

    .line 185
    return-void
.end method

.method public setFillShadeColor(I)V
    .locals 1
    .param p1, "fillShadeColor"    # I

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->fillShadeColor:Ljava/lang/Integer;

    .line 213
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0
    .param p1, "maxProgress"    # I

    .prologue
    .line 170
    iput p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->maxProgress:I

    .line 171
    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iput p1, p0, Ldolphin/tools/common/widget/DoughnutProgressBar;->progress1:I

    .line 175
    invoke-direct {p0}, Ldolphin/tools/common/widget/DoughnutProgressBar;->refreshProgress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
