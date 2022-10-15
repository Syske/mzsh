.class public Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;
.super Landroid/widget/SlidingDrawer;
.source "MySlidingDrawer.java"


# instance fields
.field private mHandleLayout:Landroid/view/ViewGroup;

.field private final mHitRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHitRect:Landroid/graphics/Rect;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHitRect:Landroid/graphics/Rect;

    .line 105
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/SlidingDrawer;->onFinishInflate()V

    .line 115
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "handle":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 118
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "handle":Landroid/view/View;
    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    .line 120
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 124
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    .line 125
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 126
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    .line 127
    .local v2, "handleClickX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 129
    .local v3, "handleClickY":I
    iget-object v4, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHitRect:Landroid/graphics/Rect;

    .line 131
    .local v4, "hitRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_1

    .line 132
    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/widget/MySlidingDrawer;->mHandleLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 135
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 136
    const/4 v6, 0x0

    .line 141
    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "handleClickX":I
    .end local v3    # "handleClickY":I
    .end local v4    # "hitRect":Landroid/graphics/Rect;
    .end local v5    # "i":I
    :goto_1
    return v6

    .line 131
    .restart local v0    # "childCount":I
    .restart local v1    # "childView":Landroid/view/View;
    .restart local v2    # "handleClickX":I
    .restart local v3    # "handleClickY":I
    .restart local v4    # "hitRect":Landroid/graphics/Rect;
    .restart local v5    # "i":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    .end local v0    # "childCount":I
    .end local v1    # "childView":Landroid/view/View;
    .end local v2    # "handleClickX":I
    .end local v3    # "handleClickY":I
    .end local v4    # "hitRect":Landroid/graphics/Rect;
    .end local v5    # "i":I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_1
.end method
