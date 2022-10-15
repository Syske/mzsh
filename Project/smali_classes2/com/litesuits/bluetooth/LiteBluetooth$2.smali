.class Lcom/litesuits/bluetooth/LiteBluetooth$2;
.super Ljava/lang/Object;
.source "LiteBluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/litesuits/bluetooth/LiteBluetooth;->checkServiceDiscover(Landroid/bluetooth/BluetoothGatt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/litesuits/bluetooth/LiteBluetooth;Landroid/bluetooth/BluetoothGatt;)V
    .locals 0
    .param p1, "this$0"    # Lcom/litesuits/bluetooth/LiteBluetooth;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/litesuits/bluetooth/LiteBluetooth$2;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    iput-object p2, p0, Lcom/litesuits/bluetooth/LiteBluetooth$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$2;->this$0:Lcom/litesuits/bluetooth/LiteBluetooth;

    invoke-static {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->access$000(Lcom/litesuits/bluetooth/LiteBluetooth;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/litesuits/bluetooth/LiteBluetooth$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 331
    :cond_0
    return-void
.end method
