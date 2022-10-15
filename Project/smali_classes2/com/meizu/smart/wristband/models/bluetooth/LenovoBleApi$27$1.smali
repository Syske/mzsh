.class Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$1;
.super Ljava/lang/Object;
.source "LenovoBleApi.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
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
    .line 375
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$1;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 375
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$1;->call(Ljava/util/List;)V

    return-void
.end method

.method public call(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, "monitorDatas":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 379
    return-void
.end method
