.class final Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;
.super Ljava/lang/Object;
.source "BleTools.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendTextMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;I)Lrx/Observable;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field sb:Ljava/lang/StringBuilder;

.field final synthetic val$characteristicUuid:Ljava/util/UUID;

.field final synthetic val$characteristicUuidRead:Ljava/util/UUID;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$serverUuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 260
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$serverUuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$characteristicUuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$characteristicUuidRead:Ljava/util/UUID;

    iput-object p4, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 260
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$serverUuid:Ljava/util/UUID;

    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$characteristicUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$characteristicUuidRead:Ljava/util/UUID;

    iget-object v3, p0, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;->val$cmd:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools;->sendMessage(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$5;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$4;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V

    .line 274
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$3;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V

    .line 279
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$2;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;)V

    .line 284
    invoke-virtual {v0, v1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3$1;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$3;Lrx/Subscriber;)V

    .line 296
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 314
    return-void
.end method
