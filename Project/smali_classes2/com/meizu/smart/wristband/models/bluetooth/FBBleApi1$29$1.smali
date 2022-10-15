.class Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<[B",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([B)Ljava/lang/Boolean;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 388
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 389
    .local v0, "res":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendByteData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ldolphin/tools/util/LogUtil;->i(Ljava/lang/String;)V

    .line 390
    invoke-static {}, Lcom/meizu/smart/wristband/bluetooth/BleOrderQueue;->deleteCurrent()V

    .line 391
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;->val$subscriber:Lrx/Subscriber;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 393
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 385
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;->call([B)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
