.class Lcom/meizu/smart/wristband/bluetooth/BleService$5$1;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$5;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$5;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$5;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$5;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$5$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$5;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$5$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V

    .line 375
    if-nez p3, :cond_0

    .line 376
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$5$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$5$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 379
    :cond_0
    return-void
.end method
