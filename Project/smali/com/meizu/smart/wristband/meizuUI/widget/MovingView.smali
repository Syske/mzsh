.class public Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;
.super Landroid/widget/RelativeLayout;
.source "MovingView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Scroller"


# instance fields
.field private mScroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->mScroller:Landroid/widget/Scroller;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public ScrollTo(III)V
    .locals 4
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "duration"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getScrollX()I

    move-result v2

    .line 48
    .local v2, "scrollX":I
    sub-int v0, p1, v2

    .line 50
    .local v0, "deltaX":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getScrollY()I

    move-result v3

    .line 51
    .local v3, "scrollY":I
    sub-int v1, p2, v3

    .line 54
    .local v1, "deltaY":I
    invoke-virtual {p0, v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->scrollBy(II)V

    .line 55
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->invalidate()V

    .line 56
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 61
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 64
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->invalidate()V

    .line 67
    :cond_0
    return-void
.end method

.method public smoothScrollTo(III)V
    .locals 6
    .param p1, "destX"    # I
    .param p2, "destY"    # I
    .param p3, "duration"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getScrollX()I

    move-result v1

    .line 36
    .local v1, "scrollX":I
    sub-int v3, p1, v1

    .line 38
    .local v3, "deltaX":I
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->getScrollY()I

    move-result v2

    .line 39
    .local v2, "scrollY":I
    sub-int v4, p2, v2

    .line 42
    .local v4, "deltaY":I
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->mScroller:Landroid/widget/Scroller;

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 43
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MovingView;->invalidate()V

    .line 44
    return-void
.end method
