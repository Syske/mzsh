.class Lcom/litesuits/bluetooth/LiteBluetooth$1$1;
.super Ljava/lang/Object;
.source "LiteBluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/LiteBluetooth$1;->onDeviceFound(Landroid/bluetooth/BluetoothDevice;I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/litesuits/bluetooth/LiteBluetooth$1;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth$1;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .param p1, "this$1"    # Lcom/litesuits/bluetooth/LiteBluetooth$1;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->this$1:Lcom/litesuits/bluetooth/LiteBluetooth$1;

    iput-object p2, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->this$1:Lcom/litesuits/bluetooth/LiteBluetooth$1;

    iget-object v0, v0, Lcom/litesuits/bluetooth/LiteBluetooth$1;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    iget-object v1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->this$1:Lcom/litesuits/bluetooth/LiteBluetooth$1;

    iget-boolean v2, v2, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$autoConnect:Z

    iget-object v3, p0, Lcom/litesuits/bluetooth/LiteBluetooth$1$1;->this$1:Lcom/litesuits/bluetooth/LiteBluetooth$1;

    iget-object v3, v3, Lcom/litesuits/bluetooth/LiteBluetooth$1;->val$callback:Lcom/litesuits/bluetooth/LiteBleGattCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/litesuits/bluetooth/LiteBluetooth;->connect(Landroid/bluetooth/BluetoothDevice;ZLcom/litesuits/bluetooth/LiteBleGattCallback;)Landroid/bluetooth/BluetoothGatt;

    .line 216
    return-void
.end method
