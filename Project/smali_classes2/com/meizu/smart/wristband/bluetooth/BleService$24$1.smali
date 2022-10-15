.class Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;
.super Lcom/litesuits/bluetooth/LiteBleGattCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$24;->call()Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$24;

.field final synthetic val$time:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$24;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$24;

    .prologue
    .line 743
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$24;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;->val$time:Ljava/lang/Long;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/LiteBleGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 2
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect onConnectFailure  fail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/litesuits/bluetooth/exception/BleException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 6
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect use time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;->val$time:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->e(Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect onConnectSuccess  mac = "

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

    .line 748
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .param p1, "bluetoothGatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "i"    # I

    .prologue
    .line 753
    return-void
.end method
