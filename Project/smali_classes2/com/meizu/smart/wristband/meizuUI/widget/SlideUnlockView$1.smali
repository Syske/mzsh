.class Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;
.super Landroid/os/Handler;
.source "SlideUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->access$000(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)F

    move-result v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-static {v2}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->access$100(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->access$002(Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;F)F

    .line 75
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    invoke-virtual {v0}, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->postInvalidate()V

    .line 77
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    iget-object v0, v0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;

    const/4 v1, 0x1

    iput v1, v0, Lcom/meizu/smart/wristband/meizuUI/widget/SlideUnlockView;->currentState:I

    .line 81
    const-string v0, "SlideUnlockView"

    const-string v1, "state---lock....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
