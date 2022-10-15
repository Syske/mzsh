.class Lcom/meizu/smart/wristband/bluetooth/BleService$18;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->noScanNewDivice(JLjava/lang/String;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field final synthetic val$mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 599
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/meizu/smart/wristband/bluetooth/BleDevice;>;"
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->isInScanning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 604
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v2, v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 607
    :cond_0
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v2

    invoke-virtual {v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$18;->val$mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 609
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_1

    .line 610
    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;-><init>()V

    .line 611
    .local v1, "newDevice":Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 612
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setName(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 616
    .end local v1    # "newDevice":Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    :cond_1
    return-void
.end method
