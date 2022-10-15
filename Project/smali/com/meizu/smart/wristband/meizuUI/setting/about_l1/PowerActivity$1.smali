.class Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;
.super Landroid/os/Handler;
.source "PowerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->getProgress()I

    move-result v0

    .line 42
    .local v0, "progress":I
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->access$100(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/meizuUI/sport/widget/RoundProgressBar;->setProgress(I)V

    .line 44
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->access$200(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity$1;->this$0:Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;

    invoke-static {v1}, Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;->access$300(Lcom/meizu/smart/wristband/meizuUI/setting/about_l1/PowerActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v4, 0x1e

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
