.class final Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->sendByteData(Ljava/lang/String;[B)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$buffer:[B

.field final synthetic val$cmd:Ljava/lang/String;


# direct methods
.method constructor <init>([BLjava/lang/String;)V
    .locals 0

    .prologue
    .line 381
    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->val$buffer:[B

    iput-object p2, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->val$cmd:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 381
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->val$buffer:[B

    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v1, v2}, Lorg/apache/commons/lang/ArrayUtils;->addAll([B[B)[B

    move-result-object v0

    .line 385
    .local v0, "bytes1":[B
    sget-object v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_SERVER:Ljava/util/UUID;

    sget-object v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_REQUEST:Ljava/util/UUID;

    sget-object v3, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->UUID_RESPONSE:Ljava/util/UUID;

    iget-object v4, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;->val$cmd:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/meizu/smart/wristband/bluetooth/BleApi;->sendMsg(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;[B)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;

    invoke-direct {v2, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29$1;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$29;Lrx/Subscriber;)V

    invoke-virtual {v1, v2}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;

    invoke-direct {v2}, Lcom/meizu/smart/wristband/constant/SubscriberErrorCatch;-><init>()V

    .line 395
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 396
    return-void

    .line 384
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method
