.class Lcom/meizu/smart/wristband/bluetooth/BleService$2;
.super Lcom/litesuits/bluetooth/LiteBleGattCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/LiteBleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 2
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8fde\u63a5\u65ad\u5f00  \uff01is_OTA_Disconnct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$100(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",AutoConnectState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$200(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$100(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$200(Lcom/meizu/smart/wristband/bluetooth/BleService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "\u8fde\u63a5\u65ad\u5f00!"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$300(Lcom/meizu/smart/wristband/bluetooth/BleService;)V

    .line 107
    :cond_0
    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect to name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionStateChange + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 1
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 94
    const-string v0, "onServicesDiscovered yes"

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 96
    return-void
.end method
