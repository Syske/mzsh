.class public abstract Lcom/litesuits/bluetooth/scan/MacScanCallback;
.super Ljava/lang/Object;
.source "MacScanCallback.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private mac:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/litesuits/bluetooth/scan/MacScanCallback;->mac:Ljava/lang/String;

    .line 15
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start scan, mac can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 22
    iget-object v0, p0, Lcom/litesuits/bluetooth/scan/MacScanCallback;->mac:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/litesuits/bluetooth/scan/MacScanCallback;->onMacScaned(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 25
    :cond_0
    return-void
.end method

.method public abstract onMacScaned(Landroid/bluetooth/BluetoothDevice;I[B)V
.end method
