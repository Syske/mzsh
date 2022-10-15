.class Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;
.super Landroid/os/Handler;
.source "SuperProgressWheel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;)Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;->access$000(Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;)Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel;

    invoke-interface {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/main/widget/SuperProgressWheel$onProgressListener;->onCompleted(Landroid/view/View;)V

    goto :goto_0

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
