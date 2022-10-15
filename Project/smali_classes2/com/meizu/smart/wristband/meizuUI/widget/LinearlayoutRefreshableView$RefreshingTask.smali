.class Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;
.super Landroid/os/AsyncTask;
.source "LinearlayoutRefreshableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 496
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 499
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 501
    .local v0, "topMargin":I
    :goto_0
    add-int/lit8 v0, v0, -0x14

    .line 502
    if-gtz v0, :cond_1

    .line 503
    const/4 v0, 0x0

    .line 509
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$402(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)I

    .line 510
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->publishProgress([Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$500(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$500(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshListener;->onRefresh()V

    .line 514
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 506
    :cond_1
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->publishProgress([Ljava/lang/Object;)V

    .line 507
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$300(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "topMargin"    # [Ljava/lang/Integer;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$600(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)V

    .line 520
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 521
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 496
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$RefreshingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
