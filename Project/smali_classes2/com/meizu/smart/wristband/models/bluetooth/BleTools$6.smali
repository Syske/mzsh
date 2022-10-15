.class final Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->requestData(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;"
    }
.end annotation


# instance fields
.field monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

.field final synthetic val$characteristicUuid:Ljava/util/UUID;

.field final synthetic val$characteristicUuidRead:Ljava/util/UUID;

.field final synthetic val$common_requestData:Ljava/lang/String;

.field final synthetic val$serverUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 332
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$serverUuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$characteristicUuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$characteristicUuidRead:Ljava/util/UUID;

    iput-object p4, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$common_requestData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->monitorData:Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 332
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$serverUuid:Ljava/util/UUID;

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$characteristicUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$characteristicUuidRead:Ljava/util/UUID;

    iget-object v3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;->val$common_requestData:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$4;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$3;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;)V

    .line 342
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$2;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;)V

    .line 347
    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6$1;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$6;Lrx/Subscriber;)V

    .line 352
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 370
    return-void
.end method
