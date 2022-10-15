.class Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;
.super Landroid/os/AsyncTask;
.source "RefreshableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;
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
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 459
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 461
    .local v0, "topMargin":I
    :goto_0
    add-int/lit8 v0, v0, -0x14

    .line 462
    if-gtz v0, :cond_1

    .line 463
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$402(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;I)I

    .line 470
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->publishProgress([Ljava/lang/Object;)V

    .line 471
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$500(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$PullToRefreshListener;->onRefresh()V

    .line 474
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 466
    :cond_1
    new-array v1, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->publishProgress([Ljava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;I)V

    goto :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "topMargin"    # [Ljava/lang/Integer;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$600(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)V

    .line 480
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 481
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$700(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/RefreshableView$RefreshingTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
