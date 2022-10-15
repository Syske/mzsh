.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->sendCharacteristicBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

.field final synthetic val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 216
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$2;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->callback:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;

    invoke-interface {v0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;->onFailed(Ljava/lang/Throwable;)V

    .line 220
    return-void
.end method
