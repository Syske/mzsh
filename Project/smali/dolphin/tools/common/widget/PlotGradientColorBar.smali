.class public Ldolphin/tools/common/widget/PlotGradientColorBar;
.super Landroid/view/View;
.source "PlotGradientColorBar.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# instance fields
.field private barHeight:I

.field private barWidth:I

.field colors:[I

.field private rect:Landroid/graphics/RectF;

.field private trackWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackWidth"    # I

    .prologue
    const/16 v4, 0xf1

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 61
    const/16 v2, 0x88

    const/16 v3, 0xc2

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 62
    const/16 v2, 0x54

    const/16 v3, 0xc4

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 63
    const/16 v2, 0x30

    const/16 v3, 0xdf

    const/16 v4, 0x4a

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->colors:[I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0xf1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    .line 60
    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 61
    const/16 v3, 0x88

    const/16 v4, 0xc2

    invoke-static {v5, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 62
    const/16 v3, 0x54

    const/16 v4, 0xc4

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 63
    const/16 v3, 0x30

    const/16 v4, 0xdf

    const/16 v5, 0x4a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->colors:[I

    .line 33
    sget-object v1, Ldolphin/tools/R$styleable;->ProgressBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, "attributes":Landroid/content/res/TypedArray;
    sget v1, Ldolphin/tools/R$styleable;->ProgressBar_trackWidth:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v2, v3}, Ldolphin/tools/util/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->trackWidth:I

    .line 35
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    return-void
.end method

.method private drawBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 67
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 68
    .local v8, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->colors:[I

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 71
    .local v0, "shader":Landroid/graphics/Shader;
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v9, v1, v2

    .line 75
    .local v9, "radius":F
    invoke-virtual {p1, p2, v9, v9, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->drawBar(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 41
    invoke-virtual {p0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->getWidth()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->barWidth:I

    .line 42
    iget v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->trackWidth:I

    invoke-virtual {p0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    iget v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->trackWidth:I

    iput v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->barHeight:I

    .line 47
    :goto_0
    iget-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 48
    iget-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->getHeight()I

    move-result v1

    iget v2, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->barHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 49
    iget-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    int-to-float v1, p4

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 50
    iget-object v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->barHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 51
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Ldolphin/tools/common/widget/PlotGradientColorBar;->getHeight()I

    move-result v0

    iput v0, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->barHeight:I

    goto :goto_0
.end method

.method public setTrackWidth(I)V
    .locals 0
    .param p1, "trackWidth"    # I

    .prologue
    .line 28
    iput p1, p0, Ldolphin/tools/common/widget/PlotGradientColorBar;->trackWidth:I

    .line 29
    return-void
.end method
