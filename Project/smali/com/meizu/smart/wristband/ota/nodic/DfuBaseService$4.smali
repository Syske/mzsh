.class Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;
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
    .line 701
    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 705
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 706
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$000(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 711
    .local v0, "bondState":I
    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$602(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;Z)Z

    .line 717
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 718
    :try_start_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService$4;->this$0:Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;->access$300(Lcom/meizu/smart/wristband/ota/nodic/DfuBaseService;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 719
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
