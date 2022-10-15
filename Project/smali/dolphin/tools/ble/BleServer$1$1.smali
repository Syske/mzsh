.class Ldolphin/tools/ble/BleServer$1$1;
.super Ljava/lang/Object;
.source "BleServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldolphin/tools/ble/BleServer$1;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldolphin/tools/ble/BleServer$1;

.field private final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Ldolphin/tools/ble/BleServer$1;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ldolphin/tools/ble/BleServer$1$1;->this$1:Ldolphin/tools/ble/BleServer$1;

    iput-object p2, p0, Ldolphin/tools/ble/BleServer$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Ldolphin/tools/ble/BleServer$1$1;->this$1:Ldolphin/tools/ble/BleServer$1;

    invoke-static {v0}, Ldolphin/tools/ble/BleServer$1;->access$0(Ldolphin/tools/ble/BleServer$1;)Ldolphin/tools/ble/BleServer;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/ble/BleServer;->access$2(Ldolphin/tools/ble/BleServer;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldolphin/tools/ble/BleServer$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldolphin/tools/ble/BleUtil;->connect(Landroid/content/Context;Ljava/lang/String;)Z

    .line 43
    return-void
.end method
