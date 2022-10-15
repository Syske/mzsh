.class public Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$IXListViewListener;,
        Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;,
        Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private context:Landroid/content/Context;

.field private mDrawFlag:Z

.field private mEnablePullLoad:Z

.field private mHeaderView:Landroid/view/View;

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListViewListener:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$IXListViewListener;

.field private mMeasuredHeight:I

.field private mMeasuredWidth:I

.field private mPinnedHeaderAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

.field private mPullLoading:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mLastY:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mIsFooterReady:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    .line 80
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->initWithContext(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mLastY:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mIsFooterReady:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    .line 85
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->initWithContext(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mLastY:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mIsFooterReady:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    .line 90
    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->initWithContext(Landroid/content/Context;)V

    .line 91
    return-void
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->context:Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScroller:Landroid/widget/Scroller;

    .line 99
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 102
    return-void
.end method

.method private invokeOnScrolling()V
    .locals 2

    .prologue
    .line 260
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;

    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;

    .line 262
    .local v0, "l":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;
    invoke-interface {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    .line 264
    .end local v0    # "l":Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$OnXScrollListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public controlPinnedHeader(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 163
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mPinnedHeaderAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

    invoke-interface {v5, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v2

    .line 168
    .local v2, "pinnedHeaderState":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 170
    :pswitch_0
    iput-boolean v8, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    goto :goto_0

    .line 174
    :pswitch_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mPinnedHeaderAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v5, v6, p1, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 175
    iput-boolean v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    .line 176
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredWidth:I

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredHeight:I

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mPinnedHeaderAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

    iget-object v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-interface {v5, v6, p1, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 181
    iput-boolean v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    .line 184
    invoke-virtual {p0, v8}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 186
    .local v3, "topItem":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 188
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 191
    .local v1, "height":I
    if-ge v0, v1, :cond_2

    .line 192
    sub-int v4, v0, v1

    .line 197
    .local v4, "y":I
    :goto_1
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 198
    iget-object v5, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    iget v6, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredWidth:I

    iget v7, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredHeight:I

    add-int/2addr v7, v4

    invoke-virtual {v5, v8, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 194
    .end local v4    # "y":I
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "y":I
    goto :goto_1

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mDrawFlag:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 150
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 137
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredWidth:I

    iget v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 139
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->controlPinnedHeader(I)V

    .line 141
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 126
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->measureChild(Landroid/view/View;II)V

    .line 128
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredWidth:I

    .line 129
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mMeasuredHeight:I

    .line 131
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 358
    iput p4, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mTotalItemCount:I

    .line 359
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 363
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 352
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    check-cast p1, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mPinnedHeaderAdapter:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$PinnedHeaderAdapter;

    .line 215
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 368
    return-void
.end method

.method public setPinnedHeader(Landroid/view/View;)V
    .locals 0
    .param p1, "pHeader"    # Landroid/view/View;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mHeaderView:Landroid/view/View;

    .line 112
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->requestLayout()V

    .line 113
    return-void
.end method

.method public setXListViewListener(Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$IXListViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$IXListViewListener;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView;->mListViewListener:Lcom/meizu/smart/wristband/meizuUI/sport/l1/runhistory_l1/XListView$IXListViewListener;

    .line 372
    return-void
.end method
