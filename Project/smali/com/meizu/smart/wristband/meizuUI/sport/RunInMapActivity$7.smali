.class Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;
.super Landroid/os/Handler;
.source "RunInMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 847
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 880
    :goto_0
    return-void

    .line 869
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$900(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$1008(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)I

    .line 871
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$1100(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    .line 872
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$1200(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity$7;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;->access$1300(Lcom/meizu/smart/wristband/meizuUI/sport/RunInMapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 847
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
