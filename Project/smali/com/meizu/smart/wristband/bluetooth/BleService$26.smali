.class Lcom/meizu/smart/wristband/bluetooth/BleService$26;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService;->readRssi(Ljava/lang/String;)Lrx/Observable;
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
        "Ljava/lang/Integer;",
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
    .line 799
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 799
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$26;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 802
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleService;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/litesuits/bluetooth/LiteBluetooth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/litesuits/bluetooth/LiteBluetooth;->newBleConnector()Lcom/litesuits/bluetooth/conn/LiteBleConnector;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService$26;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lcom/litesuits/bluetooth/conn/LiteBleConnector;->readRemoteRssi(Lcom/litesuits/bluetooth/conn/BleRssiCallback;)Z

    .line 814
    return-void
.end method
