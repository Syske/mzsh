.class Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;
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
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;"
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
    .line 369
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 2
    .param p1, "monitorData"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;->this$0:Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;

    iget-wide v0, v0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27;->time_dev:J

    iput-wide v0, p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->time_dev:J

    .line 373
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 369
    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi$27$3;->call(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V

    return-void
.end method
