.class Ldolphin/tools/ble/BleServer$1;
.super Ljava/lang/Object;
.source "BleServer.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldolphin/tools/ble/BleServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldolphin/tools/ble/BleServer;


# direct methods
.method constructor <init>(Ldolphin/tools/ble/BleServer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ldolphin/tools/ble/BleServer$1;)Ldolphin/tools/ble/BleServer;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    return-object v0
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    iget-object v0, v0, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v0, v0, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    iget-object v1, v1, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v1, v1, Ldolphin/tools/ble/BtDevice;->mac:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    iget-object v1, v1, Ldolphin/tools/ble/BleServer;->btDevice:Ldolphin/tools/ble/BtDevice;

    iget-object v1, v1, Ldolphin/tools/ble/BtDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    invoke-virtual {v0, v2}, Ldolphin/tools/ble/BleServer;->scanLeDevice(Z)Z

    .line 38
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    invoke-static {v0, v2}, Ldolphin/tools/ble/BleServer;->access$0(Ldolphin/tools/ble/BleServer;Z)V

    .line 39
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1;->this$0:Ldolphin/tools/ble/BleServer;

    invoke-static {v0}, Ldolphin/tools/ble/BleServer;->access$1(Ldolphin/tools/ble/BleServer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ldolphin/tools/ble/BleServer$1$1;

    invoke-direct {v1, p0, p1}, Ldolphin/tools/ble/BleServer$1$1;-><init>(Ldolphin/tools/ble/BleServer$1;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_2
    return-void
.end method
