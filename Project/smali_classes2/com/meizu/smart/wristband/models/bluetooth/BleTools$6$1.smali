.class Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;
.super Lrx/Subscriber;
.source "BleTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;

    iget-object v1, v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 357
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 363
    return-void
.end method

.method public onNext(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 0
    .param p1, "monitorData"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->onCompleted()V

    .line 368
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 352
    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;->onNext(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V

    return-void
.end method
