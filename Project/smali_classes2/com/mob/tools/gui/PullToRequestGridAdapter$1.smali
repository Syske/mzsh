.class Lcom/mob/tools/gui/PullToRequestGridAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/gui/PullToRequestGridAdapter;-><init>(Lcom/mob/tools/gui/PullToRequestView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private firstVisibleItem:I

.field final synthetic this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

.field private visibleItemCount:I


# direct methods
.method constructor <init>(Lcom/mob/tools/gui/PullToRequestGridAdapter;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    iput p2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->firstVisibleItem:I

    iput p3, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->visibleItemCount:I

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    add-int v1, p2, p3

    if-ne v1, p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getBottom()I

    move-result v3

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$302(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z

    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    iget-object v2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {v2}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$400(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/ScrollableGridView;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->onScroll(Lcom/mob/tools/gui/Scrollable;III)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    iget-object v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$002(Lcom/mob/tools/gui/PullToRequestGridAdapter;Z)Z

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$100(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/OnListStopScrollListener;

    move-result-object v0

    iget v1, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->firstVisibleItem:I

    iget v2, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->visibleItemCount:I

    invoke-interface {v0, v1, v2}, Lcom/mob/tools/gui/OnListStopScrollListener;->onListStopScrolling(II)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/gui/PullToRequestGridAdapter$1;->this$0:Lcom/mob/tools/gui/PullToRequestGridAdapter;

    invoke-static {v0}, Lcom/mob/tools/gui/PullToRequestGridAdapter;->access$200(Lcom/mob/tools/gui/PullToRequestGridAdapter;)Lcom/mob/tools/gui/PullToRequestBaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/gui/PullToRequestBaseAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
