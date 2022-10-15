.class Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;
.super Landroid/os/Handler;
.source "NewRunInMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1302
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1338
    :goto_0
    return-void

    .line 1324
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1608(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I

    .line 1326
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1700(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    .line 1327
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1800(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    .line 1328
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1600(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$1900(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)V

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity$12;->this$0:Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;->access$2000(Lcom/meizu/smart/wristband/meizuUI/sport/meizu/NewRunInMapActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1302
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
