.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;
.super Lrx/Subscriber;
.source "BleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    .prologue
    .line 296
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;

    iget-object v1, v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 301
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 307
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 296
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;->onCompleted()V

    .line 312
    return-void
.end method
