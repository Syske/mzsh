.class public Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;
.super Landroid/view/View;
.source "DashedLine.java"


# instance fields
.field private final DASH_CIRCLE_RADIUS:I

.field private dashPath:Landroid/graphics/Path;

.field private endX:F

.field private endY:F

.field private mRect:Landroid/graphics/Rect;

.field private startX:F

.field private startY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x2

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;->DASH_CIRCLE_RADIUS:I

    .line 30
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 35
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 36
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 37
    .local v1, "paint":Landroid/graphics/Paint;
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    const-string v3, "#FF999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 42
    .local v2, "path":Landroid/graphics/Path;
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;->dashPath:Landroid/graphics/Path;

    .line 48
    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;->dashPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v6, v6, v5, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 49
    new-instance v0, Landroid/graphics/PathDashPathEffect;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/widget/DashedLine;->dashPath:Landroid/graphics/Path;

    const/high16 v4, 0x41a00000    # 20.0f

    sget-object v5, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v0, v3, v4, v6, v5}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    .line 51
    .local v0, "effects1":Landroid/graphics/PathDashPathEffect;
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 52
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 53
    return-void
.end method
