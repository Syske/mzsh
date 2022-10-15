.class public Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;
.super Landroid/view/View;
.source "DrawHookView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;
    }
.end annotation


# instance fields
.field private CIRLE_STEP:I

.field private LINE_STEP:I

.field private bSend:Z

.field private line1_x:I

.field private line1_y:I

.field private line2_x:I

.field private line2_y:I

.field private listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;

.field private progress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    .line 22
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 24
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 26
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    .line 28
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->CIRLE_STEP:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    .line 48
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->bSend:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    .line 22
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 24
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 26
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    .line 28
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->CIRLE_STEP:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    .line 48
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->bSend:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    .line 22
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 24
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 26
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    .line 28
    iput v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->CIRLE_STEP:I

    .line 33
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    .line 48
    iput-boolean v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->bSend:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 54
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 56
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->CIRLE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    .line 61
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 63
    .local v5, "paint":Landroid/graphics/Paint;
    const-string v0, "#5ED1DC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->getWidth()I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 73
    .local v12, "center":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    sub-int v13, v12, v0

    .line 75
    .local v13, "center1":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v14, v0, -0x5

    .line 78
    .local v14, "radius":I
    new-instance v1, Landroid/graphics/RectF;

    sub-int v0, v12, v14

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    add-int v3, v12, v14

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int v4, v12, v14

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 81
    .local v1, "rectF":Landroid/graphics/RectF;
    const/high16 v2, 0x436b0000    # 235.0f

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    mul-int/lit16 v0, v0, -0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 87
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->progress:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_4

    .line 88
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    div-int/lit8 v2, v14, 0x3

    if-ge v0, v2, :cond_0

    .line 89
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 90
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 93
    :cond_0
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    div-int/lit8 v2, v14, 0x3

    if-le v0, v2, :cond_1

    .line 94
    div-int/lit8 v0, v14, 0x3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 95
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 99
    :cond_1
    int-to-float v7, v13

    int-to-float v8, v12

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    add-int/2addr v0, v13

    int-to-float v9, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    add-int/2addr v0, v12

    int-to-float v10, v0

    move-object/from16 v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    div-int/lit8 v2, v14, 0x3

    if-ne v0, v2, :cond_2

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    .line 105
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    .line 106
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    .line 109
    :cond_2
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    div-int/lit8 v2, v14, 0x3

    if-le v0, v2, :cond_3

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    div-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x5

    if-gt v0, v2, :cond_3

    .line 110
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    .line 111
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->LINE_STEP:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    .line 119
    :cond_3
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, -0x1

    int-to-float v7, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    add-int/2addr v0, v12

    int-to-float v8, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_x:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    add-int/2addr v0, v2

    int-to-float v9, v0

    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line1_y:I

    add-int/2addr v0, v12

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_y:I

    add-int/2addr v0, v2

    int-to-float v10, v0

    move-object/from16 v6, p1

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    iget v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->line2_x:I

    div-int/lit8 v2, v14, 0x2

    add-int/lit8 v2, v2, 0x5

    if-lt v0, v2, :cond_4

    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->bSend:Z

    if-nez v0, :cond_4

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->bSend:Z

    .line 128
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;

    invoke-interface {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;->onDrawComplete()V

    .line 134
    :cond_4
    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->postInvalidateDelayed(J)V

    .line 135
    return-void
.end method

.method public setOnDrawCompleteListenter(Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;)V
    .locals 0
    .param p1, "listenter"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView;->listenter:Lcom/meizu/smart/wristband/meizuUI/main/widget/DrawHookView$onDrawCompleteListenter;

    .line 139
    return-void
.end method
