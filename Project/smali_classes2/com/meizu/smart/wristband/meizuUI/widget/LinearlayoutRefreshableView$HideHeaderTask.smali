.class Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;
.super Landroid/os/AsyncTask;
.source "LinearlayoutRefreshableView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HideHeaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
    .line 530
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 533
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 535
    .local v0, "topMargin":I
    :goto_0
    add-int/lit8 v0, v0, -0x14

    .line 536
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$800(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)I

    move-result v0

    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 540
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 541
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$300(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "topMargin"    # Ljava/lang/Integer;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 555
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$402(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;I)I

    .line 557
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    const-string v0, "refresh  onFinish "

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$900(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$PullToRefreshFinishListener;->onFinish()V

    .line 561
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "topMargin"    # [Ljava/lang/Integer;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 549
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$700(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;->access$200(Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView;)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 550
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 530
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/meizuUI/widget/LinearlayoutRefreshableView$HideHeaderTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
