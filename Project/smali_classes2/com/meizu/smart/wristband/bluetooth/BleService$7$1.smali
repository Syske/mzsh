.class Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;
.super Lcom/litesuits/bluetooth/LiteBleGattCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$7;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$7;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/LiteBleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 4
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 410
    const-string v0, "connectObservable onConnectFailure \u8fde\u63a5\u65ad\u5f00!"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$200(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$600(Lcom/meizu/smart/wristband/bluetooth/BleService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$300(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v2, v2, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v2}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$700(Lcom/meizu/smart/wristband/bluetooth/BleService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0800e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 415
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 416
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleService;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 417
    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 393
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 399
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleService;->handler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 401
    if-nez p2, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/constant/Producter;->isB10Set(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$7;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$500(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 406
    :cond_0
    return-void
.end method
