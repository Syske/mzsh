.class public abstract Lcom/mob/tools/gui/PullToRequestGridAdapter;
.super Lcom/mob/tools/gui/PullToRequestBaseListAdapter;


# instance fields
.field private adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

.field private fling:Z

.field private gridView:Lcom/mob/tools/gui/ScrollableGridView;

.field private osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

.field private pullUpReady:Z


# direct methods
.method public constructor <init>(Lcom/mob/tools/gui/PullToRequestView;)V
    .locals 2
    .param p1, "view"    # Lcom/mob/tools/gui/PullToRequestView;

    .prologue
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/PullToRequestBaseListAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V

    invoke-virtual {p0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    new-instance v1, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;

    invoke-direct {v1, p0}, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;-><init>(Lcom/mob/tools/gui/PullToRequestGridAdapter;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-direct {v0, p0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestBaseListAdapter;)V

    iput-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-virtual {v0, v1}, Lcom/mob/tools/gui/ScrollableGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic access$002(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->osListener:Lcom/mob/tools/gui/OnListStopScrollListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1
    .param p0, "x0"    # Lcom/mob/tools/gui/PullToRequestGridAdapter;

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method


# virtual methods
.method public getBodyView()Lcom/mob/tools/gui/Scrollable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public getGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    return-object v0
.end method

.method public isFling()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->fling:Z

    return v0
.end method

.method public isPullDownReady()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0}, Lcom/mob/tools/gui/ScrollableGridView;->isReadyToPull()Z

    move-result v0

    return v0
.end method

.method public isPullUpReady()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->pullUpReady:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/mob/tools/gui/PullToRequestBaseListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->adapter:Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onNewGridView(Landroid/content/Context;)Lcom/mob/tools/gui/ScrollableGridView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/mob/tools/gui/ScrollableGridView;

    invoke-direct {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onScroll(Lcom/mob/tools/gui/Scrollable;III)V
    .locals 0
    .param p1, "scrollable"    # Lcom/mob/tools/gui/Scrollable;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1
    .param p1, "columnWidth"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setColumnWidth(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setNumColumns(I)V

    return-void
.end method

.method public setStretchMode(I)V
    .locals 1
    .param p1, "stretchMode"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setStretchMode(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter;->gridView:Lcom/mob/tools/gui/ScrollableGridView;

    invoke-virtual {v0, p1}, Lcom/mob/tools/gui/ScrollableGridView;->setVerticalSpacing(I)V

    return-void
.end method
