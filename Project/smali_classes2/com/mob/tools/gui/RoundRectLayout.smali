.class public Lcom/mob/tools/gui/RoundRectLayout;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private path:Landroid/graphics/Path;

.field private rect:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/mob/tools/gui/RoundRectLayout;->rect:[F

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mob/tools/gui/RoundRectLayout;->path:Landroid/graphics/Path;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/mob/tools/gui/RoundRectLayout;->getWidth()I

    move-result v2

    .local v2, "width":I
    invoke-virtual {p0}, Lcom/mob/tools/gui/RoundRectLayout;->getHeight()I

    move-result v1

    .local v1, "height":I
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/mob/tools/gui/RoundRectLayout;->path:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v3, v2

    int-to-float v4, v1

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v0, "bound":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/mob/tools/gui/RoundRectLayout;->path:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/mob/tools/gui/RoundRectLayout;->rect:[F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v0, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .end local v0    # "bound":Landroid/graphics/RectF;
    .end local v1    # "height":I
    .end local v2    # "width":I
    :cond_0
    iget-object v3, p0, Lcom/mob/tools/gui/RoundRectLayout;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRound(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/mob/tools/gui/RoundRectLayout;->setRound(FFFF)V

    return-void
.end method

.method public setRound(FFFF)V
    .locals 2
    .param p1, "leftTop"    # F
    .param p2, "rightTop"    # F
    .param p3, "rightBottom"    # F
    .param p4, "leftBottom"    # F

    .prologue
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p3, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    aput p4, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    iput-object v0, p0, Lcom/mob/tools/gui/RoundRectLayout;->rect:[F

    return-void
.end method
