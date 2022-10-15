.class Lcom/meizu/smart/wristband/bluetooth/BleService$7;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connectObservable(J)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
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
    .line 386
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 386
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$7;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$7$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService$7;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/LiteBluetooth;->addGattCallback(Lcom/litesuits/bluetooth/LiteBleGattCallback;)Z

    .line 419
    return-void
.end method
