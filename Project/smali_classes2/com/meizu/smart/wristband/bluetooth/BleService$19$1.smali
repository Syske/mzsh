.class Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;
.super Lcom/litesuits/bluetooth/scan/PeriodScanCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$19;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$19;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$19;JLrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$19;
    .param p2, "x0"    # J

    .prologue
    .line 634
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$19;

    iput-object p4, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0, p2, p3}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "i"    # I
    .param p3, "bytes"    # [B

    .prologue
    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLeScan name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MAC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Rssi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "deviceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 648
    const/16 v2, 0x9

    invoke-static {p3, v2}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->analysisBroadcastData([BB)Ljava/lang/String;

    move-result-object v0

    .line 652
    :cond_0
    if-eqz p1, :cond_1

    .line 653
    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-direct {v1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;-><init>()V

    .line 654
    .local v1, "newDevice":Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    invoke-virtual {v1, p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 655
    invoke-virtual {v1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setRssi(I)V

    .line 656
    invoke-virtual {v1, p3}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setRecord([B)V

    .line 657
    invoke-virtual {v1, v0}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->setName(Ljava/lang/String;)V

    .line 658
    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v2, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 661
    .end local v1    # "newDevice":Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    :cond_1
    return-void
.end method

.method public onScanTimeout()V
    .locals 1

    .prologue
    .line 637
    const-string v0, "onScanTimeout"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$19$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 640
    return-void
.end method
