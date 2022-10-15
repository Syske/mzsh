.class Lcom/litesuits/bluetooth/LiteBluetooth$1;
.super Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;
.source "LiteBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/LiteBluetooth;->scanAndConnect(Ljava/lang/String;ZLcom/litesuits/bluetooth/LiteBleGattCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

.field final synthetic val$autoConnect:Z

.field final synthetic val$callback:Lcom/litesuits/bluetooth/LiteBleGattCallback;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;Ljava/lang/String;JLcom/litesuits/bluetooth/LiteBleGattCallback;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/LiteBluetooth;
    .param p2, "mac"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J

    .prologue
    .line 201
    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    iput-object p5, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$callback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    iput-boolean p6, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$autoConnect:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/litesuits/bluetooth/scan/PeriodMacScanCallback;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onDeviceFound(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 212
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    new-instance v1, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;

    invoke-direct {v1, p0, p1}, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;-><init>(Lcom/litesuits/bluetooth/LiteBluetooth$1;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 218
    return-void
.end method

.method public onScanTimeout()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$callback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$callback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    sget-object v1, Lcom/litesuits/bluetooth/exception/BleException;->TIMEOUT_EXCEPTION:Lcom/litesuits/bluetooth/exception/TimeoutException;

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBleGattCallback;->onConnectFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    .line 208
    :cond_0
    return-void
.end method
