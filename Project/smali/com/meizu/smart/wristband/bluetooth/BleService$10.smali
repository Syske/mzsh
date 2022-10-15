.class Lcom/meizu/smart/wristband/bluetooth/BleService$10;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToMac(JLjava/lang/String;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        "Lrx/Observable",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;>;"
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
    .line 492
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->val$mac:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 492
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Lrx/Observable;
    .locals 4
    .param p1, "o"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ")",
            "Lrx/Observable",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 496
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-virtual {v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->stopScan()V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan find this mac :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->val$mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v1

    invoke-virtual {v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->val$mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 501
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$10;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    const-wide/32 v2, 0x186a0

    invoke-static {v1, v2, v3, v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$400(Lcom/meizu/smart/wristband/bluetooth/BleService;JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
