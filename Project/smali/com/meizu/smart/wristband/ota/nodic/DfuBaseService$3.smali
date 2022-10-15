.class Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;
.super Landroid/content/BroadcastReceiver;
.source "DfuBaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_ACTION"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 676
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 698
    :goto_0
    return-void

    .line 678
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 684
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 685
    :try_start_0
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 686
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 689
    :pswitch_2
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$402(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 690
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$502(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 693
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 694
    :try_start_1
    iget-object v1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$3;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 695
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
