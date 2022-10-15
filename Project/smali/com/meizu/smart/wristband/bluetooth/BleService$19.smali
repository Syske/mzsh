.class Lcom/meizu/smart/wristband/bluetooth/BleService$19;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->scanNewDivice(JZ)Lrx/Observable;
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

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 621
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-wide p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->val$timeout:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 621
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 6
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
    .line 624
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/meizu/smart/wristband/bluetooth/BleDevice;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->isInScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 626
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 633
    :cond_0
    const-string v0, "begin to scanNewDivice"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    new-instance v2, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;

    iget-wide v4, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19;->val$timeout:J

    invoke-direct {v2, p0, v4, v5, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService$19;JLrx/Subscriber;)V

    iput-object v2, v1, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0, v2}, Lcom/litesuits/bluetooth/LiteBluetooth;->startLeScan(Lcom/litesuits/bluetooth/scan/PeriodScanCallback;)Z

    .line 663
    return-void
.end method
