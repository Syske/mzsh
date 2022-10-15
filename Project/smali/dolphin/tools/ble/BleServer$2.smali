.class Ldolphin/tools/ble/BleServer$2;
.super Ljava/lang/Object;
.source "BleServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldolphin/tools/ble/BleServer;->scanLeDevice(ZLjava/lang/Long;Ldolphin/tools/ble/PreScanCallback;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
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
    iput-object p1, p0, Ldolphin/tools/ble/BleServer$2;->this$0:Ldolphin/tools/ble/BleServer;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$2;->this$0:Ldolphin/tools/ble/BleServer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldolphin/tools/ble/BleServer;->access$0(Ldolphin/tools/ble/BleServer;Z)V

    .line 131
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$2;->this$0:Ldolphin/tools/ble/BleServer;

    invoke-static {v0}, Ldolphin/tools/ble/BleServer;->access$3(Ldolphin/tools/ble/BleServer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Ldolphin/tools/ble/BleServer$2;->this$0:Ldolphin/tools/ble/BleServer;

    invoke-static {v1}, Ldolphin/tools/ble/BleServer;->access$4(Ldolphin/tools/ble/BleServer;)Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 132
    return-void
.end method
