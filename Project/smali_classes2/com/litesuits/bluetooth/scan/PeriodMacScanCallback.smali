.class public abstract Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;
.super Lcom/litesuits/bluetooth/scan/PeriodScanCallback;
.source "PeriodMacScanCallback.java"


# instance fields
.field private hasFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mac:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;
    .param p2, "timeoutMillis"    # J

    .prologue
    .line 16
    invoke-direct {p0, p2, p3}, Lcom/litesuits/bluetooth/scan/PeriodScanCallback;-><init>(J)V

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->hasFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    iput-object p1, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->mac:Ljava/lang/String;

    .line 18
    if-nez p1, :cond_0

    .line 19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start scan, mac can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    return-void
.end method


# virtual methods
.method public abstract onDeviceFound(Landroid/bluetooth/BluetoothDevice;I[B)V
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 25
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->hasFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->hasFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->liteBluetooth:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-virtual {v0, p0}, Lcom/litesuits/bluetooth/LiteBluetooth;->stopScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 32
    :cond_0
    return-void
.end method
