.class Lcom/meizu/smart/wristband/bluetooth/BleService$14;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connectToMacWithoutScan(JLjava/lang/String;Z)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$14;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$14;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$14;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleService;->scanCallback:Lcom/litesuits/bluetooth/scan/PeriodScanCallback;

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;->onScanTimeout()V

    .line 579
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 573
    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$14;->call(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
