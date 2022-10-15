.class Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;
.super Ljava/lang/Object;
.source "LenovoBleApi.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;->call(Lrx/Subscriber;)V
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
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;->call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;
    .locals 2
    .param p1, "monitorData"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    iget-wide v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;->time_dev:J

    iput-wide v0, p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    .line 360
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$4;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->total:I

    if-nez v0, :cond_0

    .line 363
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    iget-object v1, p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->header:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;

    iget v1, v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$Header;->total:I

    invoke-static {v0, v1}, Lrx/Observable;->range(II)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
