.class final Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;
.super Ljava/lang/Object;
.source "FBBleApi1.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->syncData()Lrx/Observable;
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
.field time_dev:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->time_dev:J

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->lambda$call$372(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->lambda$call$373(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->lambda$call$374(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->lambda$call$375(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$call$372(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 535
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->getTimeZone()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$call$373(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 536
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->time_dev:J

    return-void
.end method

.method private static synthetic lambda$call$374(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 537
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->requestData(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$call$375(Ljava/lang/Integer;)Lrx/Observable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Integer;

    .prologue
    .line 550
    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->requestData(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 529
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
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
    .line 534
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$1;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 535
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;->lambdaFactory$(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)Lrx/functions/Action1;

    move-result-object v1

    .line 536
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$3;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$4;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$4;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V

    .line 538
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$4;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    .line 550
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$3;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V

    .line 551
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$1;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V

    new-instance v2, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;

    invoke-direct {v2, p0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$2;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Lrx/Subscriber;)V

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 568
    return-void
.end method
