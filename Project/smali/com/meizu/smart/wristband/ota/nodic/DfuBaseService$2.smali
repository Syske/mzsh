.class Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;
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
    .line 651
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 655
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 656
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$000(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 668
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$100(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Ljava/lang/String;)V

    .line 662
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$202(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;I)I

    .line 665
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 666
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$2;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 667
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
