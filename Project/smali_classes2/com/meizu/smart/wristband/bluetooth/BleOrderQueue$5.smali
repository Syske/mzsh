.class Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;
.super Ljava/lang/Object;
.source "BleOrderQueue.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/Integer;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

.field final synthetic val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

.field final synthetic val$req:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->val$req:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->call(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Integer;)Lrx/Observable;
    .locals 5
    .param p1, "integer"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v2, v3, 0x14

    .line 202
    .local v2, "start":I
    add-int/lit8 v3, v2, 0x14

    iget-object v4, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->val$req:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v4, v4, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->buffer:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 203
    .local v1, "end":I
    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->val$req:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v3, v3, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->buffer:[B

    invoke-static {v3, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 204
    .local v0, "buffer":[B
    iget-object v3, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;

    iget-object v4, p0, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$5;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-static {v3, v4, v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->access$000(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;[B)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method
