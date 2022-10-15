.class Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "LiteBleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleRSSIReadCallback(Lcom/litesuits/bluetooth/conn/BleRssiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

.field final synthetic val$bleCallback:Lcom/litesuits/bluetooth/conn/BleRssiCallback;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleRssiCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    iput-object p2, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleRssiCallback;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "rssi"    # I
    .param p3, "status"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-static {v0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->access$200(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 439
    if-nez p3, :cond_0

    .line 440
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleRssiCallback;

    invoke-virtual {v0, p2}, Lcom/litesuits/bluetooth/conn/BleRssiCallback;->onSuccess(I)V

    .line 444
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$5;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleRssiCallback;

    new-instance v1, Lcom/litesuits/bluetooth/exception/GattException;

    invoke-direct {v1, p3}, Lcom/litesuits/bluetooth/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/conn/BleRssiCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0
.end method
