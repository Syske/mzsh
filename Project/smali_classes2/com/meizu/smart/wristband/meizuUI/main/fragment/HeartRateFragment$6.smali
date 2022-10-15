.class Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;
.super Landroid/os/Handler;
.source "HeartRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 511
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 513
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$300(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)Lcom/github/mikephil/charting/charts/LineChart;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/charts/LineChart;->animateX(I)V

    .line 515
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$6;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$400(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;)V

    goto :goto_0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
