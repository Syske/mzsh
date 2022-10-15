.class Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "LiteBleConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/conn/LiteBleConnector;->handleDescriptorReadCallback(Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field msgRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

.field final synthetic val$bleCallback:Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/conn/LiteBleConnector;Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    iput-object p2, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    .line 415
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->msgRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "descriptor"    # Landroid/bluetooth/BluetoothGattDescriptor;
    .param p3, "status"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->msgRemoved:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->this$0:Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    invoke-static {v0}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->access$200(Lcom/litesuits/bluetooth/conn/LiteBleConnector;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 423
    :cond_0
    if-nez p3, :cond_1

    .line 424
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    invoke-virtual {v0, p2}, Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;->onSuccess(Landroid/bluetooth/BluetoothGattDescriptor;)V

    .line 428
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/litesuits/bluetooth/conn/LiteBleConnector$4;->val$bleCallback:Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;

    new-instance v1, Lcom/litesuits/bluetooth/exception/GattException;

    invoke-direct {v1, p3}, Lcom/litesuits/bluetooth/exception/GattException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/conn/BleDescriptorCallback;->onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V

    goto :goto_0
.end method
