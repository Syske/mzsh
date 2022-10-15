.class Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;
.super Lcom/litesuits/bluetooth/conn/BleRssiCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleService$26;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$26;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService$26;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/bluetooth/BleService$26;

    .prologue
    .line 802
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;->this$1:Lcom/meizu/smart/wristband/bluetooth/BleService$26;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lcom/litesuits/bluetooth/conn/BleRssiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/litesuits/bluetooth/exception/BleException;)V
    .locals 3
    .param p1, "e"    # Lcom/litesuits/bluetooth/exception/BleException;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;->val$subscriber:Lrx/Subscriber;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "read rssi error"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 812
    return-void
.end method

.method public onSuccess(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 805
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 806
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$26$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 807
    return-void
.end method
