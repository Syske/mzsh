.class Lcom/meizu/smart/wristband/bluetooth/BleService$24;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToDevice(JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 741
    const-string v1, "connectToDevice come"

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 743
    .local v0, "time":Ljava/lang/Long;
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->val$device:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    new-instance v5, Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;

    invoke-direct {v5, p0, v0}, Lcom/meizu/smart/wristband/bluetooth/BleService$24$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService$24;Ljava/lang/Long;)V

    iput-object v5, v4, Lcom/meizu/smart/wristband/bluetooth/BleService;->connectCallback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    invoke-virtual {v1, v2, v3, v5}, Lcom/litesuits/bluetooth/LiteBluetooth;->connect(Landroid/bluetooth/BluetoothDevice;ZLcom/litesuits/bluetooth/LiteBleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 773
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/bluetooth/BleService$24;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
