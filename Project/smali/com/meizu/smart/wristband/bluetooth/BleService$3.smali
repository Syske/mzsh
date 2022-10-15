.class Lcom/meizu/smart/wristband/bluetooth/BleService$3;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->connnectToBestDevice(J[Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
        "Lrx/Observable",
        "<+",
        "Landroid/bluetooth/BluetoothDevice;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$3;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 358
    check-cast p1, Lcom/meizu/smart/wristband/bluetooth/BleDevice;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$3;->call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/bluetooth/BleDevice;)Lrx/Observable;
    .locals 4
    .param p1, "o"    # Lcom/meizu/smart/wristband/bluetooth/BleDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/bluetooth/BleDevice;",
            ")",
            "Lrx/Observable",
            "<+",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Lcom/meizu/smart/wristband/bluetooth/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 362
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$3;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3, v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$400(Lcom/meizu/smart/wristband/bluetooth/BleService;JLandroid/bluetooth/BluetoothDevice;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method
