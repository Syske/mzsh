.class Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;
.super Ljava/lang/Object;
.source "BleApi.java"

# interfaces
.implements Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/bluetooth/BleApi$2;

.field final synthetic val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleApi$2;Lrx/Subscriber;Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/bluetooth/BleApi$2;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleApi$2;

    iput-object p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$subscriber:Lrx/Subscriber;

    iput-object p3, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplate()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 58
    return-void
.end method

.method public onFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send command to device failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    iget-object v1, v1, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onReadData([B)V
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 46
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public onWriteData()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->this$0:Lcom/meizu/smart/wristband/bluetooth/BleApi$2;

    iget v0, v0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2;->val$timeout:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 40
    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleApi$2$1;->val$cmd:Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;

    invoke-static {v0}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->deleteBleCmd(Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue$BleCmd;)V

    .line 42
    :cond_0
    return-void
.end method
