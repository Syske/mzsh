.class public Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;
.super Landroid/view/View;
.source "DrawErrorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;
    }
.end annotation


# instance fields
.field private CIRLE_STEP:I

.field private LINE_STEP:I

.field private line1_x:I

.field private line1_y:I

.field private line2_x:I

.field private line2_y:I

.field private listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    .line 20
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    .line 22
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    .line 24
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    .line 26
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->CIRLE_STEP:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    .line 20
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    .line 22
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    .line 24
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    .line 26
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->CIRLE_STEP:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    .line 20
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    .line 22
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    .line 24
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    .line 26
    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    .line 29
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->CIRLE_STEP:I

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->CIRLE_STEP:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    .line 58
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 60
    .local v7, "paint":Landroid/graphics/Paint;
    const-string v2, "#5ED1DC"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 64
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v2

    div-int/lit8 v14, v2, 0x2

    .line 72
    .local v14, "center":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v17, v2, -0x5

    .line 74
    .local v17, "radius":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int v15, v14, v2

    .line 75
    .local v15, "center1X":I
    move/from16 v16, v15

    .line 78
    .local v16, "center1Y":I
    new-instance v3, Landroid/graphics/RectF;

    sub-int v2, v14, v17

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-int v4, v14, v17

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    add-int v5, v14, v17

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    add-int v6, v14, v17

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    invoke-direct {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 81
    .local v3, "rectF":Landroid/graphics/RectF;
    const/high16 v4, 0x436b0000    # 235.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    mul-int/lit16 v2, v2, -0x168

    div-int/lit8 v2, v2, 0x64

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 89
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->progress:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_3

    .line 90
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v2, v4, :cond_0

    .line 91
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    .line 92
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    .line 98
    :cond_0
    int-to-float v9, v15

    move/from16 v0, v16

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    add-int/2addr v2, v15

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    add-int v2, v2, v16

    int-to-float v12, v2

    move-object/from16 v8, p1

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ne v2, v4, :cond_1

    .line 101
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    .line 102
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    .line 103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    .line 104
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_y:I

    .line 107
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-gt v2, v4, :cond_2

    .line 108
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    .line 109
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->LINE_STEP:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    .line 116
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    add-int/2addr v2, v15

    int-to-float v9, v2

    move/from16 v0, v16

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line1_x:I

    add-int/2addr v2, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    sub-int/2addr v2, v4

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_y:I

    add-int v2, v2, v16

    int-to-float v12, v2

    move-object/from16 v8, p1

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 118
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->line2_x:I

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-lt v2, v4, :cond_3

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;

    if-eqz v2, :cond_3

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;

    invoke-interface {v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;->onDrawComplete()V

    .line 126
    :cond_3
    const-wide/16 v4, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->postInvalidateDelayed(J)V

    .line 128
    return-void
.end method

.method public setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;)V
    .locals 0
    .param p1, "listenter"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawErrorView$onDrawCompleteListenter;

    .line 132
    return-void
.end method
