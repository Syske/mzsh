.class Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;
.super Landroid/os/Handler;
.source "RunDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x64

    .line 319
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 321
    :pswitch_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->getProgress()I

    move-result v1

    .line 322
    .local v1, "progress":I
    if-ge v1, v3, :cond_1

    .line 323
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setProgress(I)V

    .line 324
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$400(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    goto :goto_0

    .line 325
    :cond_1
    if-ne v1, v3, :cond_0

    .line 326
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$500(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    goto :goto_0

    .line 330
    .end local v1    # "progress":I
    :pswitch_1
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->getProgress()I

    move-result v0

    .line 331
    .local v0, "p":I
    if-lez v0, :cond_2

    if-ge v0, v3, :cond_2

    .line 332
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setProgress(I)V

    .line 333
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$600(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    goto :goto_0

    .line 334
    :cond_2
    if-nez v0, :cond_3

    .line 335
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 336
    :cond_3
    if-ne v0, v3, :cond_0

    .line 337
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setProgress(I)V

    goto :goto_0

    .line 341
    .end local v0    # "p":I
    :pswitch_2
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$700(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    .line 342
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$800(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)V

    .line 343
    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity$3;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/RunDetailActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
