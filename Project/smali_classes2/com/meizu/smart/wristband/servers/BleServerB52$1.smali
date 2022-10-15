.class Lcom/meizu/smart/wristband/servers/BleServerB52$1;
.super Ljava/lang/Object;
.source "BleServerB52.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB52;->syncData(Landroid/os/Handler;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB52;)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/smart/wristband/servers/BleServerB52;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB52;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$463(Lrx/Subscriber;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$464(Lrx/Subscriber;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$465(Lrx/Subscriber;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$3(Lrx/Subscriber;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$468(Lrx/Subscriber;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$lambda$4(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$472(Lrx/Subscriber;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$473(Lrx/Subscriber;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$474(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$476(Lrx/Subscriber;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$lambda$8(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->lambda$call$477(Lrx/Subscriber;Ljava/lang/Boolean;)V

    return-void
.end method

.method private static synthetic lambda$call$463(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$464(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 141
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$465(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 146
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$468(Lrx/Subscriber;Ljava/util/List;)V
    .locals 1
    .param p1, "a"    # Ljava/util/List;

    .prologue
    .line 154
    const/16 v0, 0x3c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$472(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 162
    const/16 v0, 0x50

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$473(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 169
    const/16 v0, 0x53

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$474(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p0, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 169
    invoke-static {}, Lcom/meizu/smart/wristband/utils/TimeUtil2;->getTimeDev()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->setTimeZone(J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$call$476(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$477(Lrx/Subscriber;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "a"    # Ljava/lang/Boolean;

    .prologue
    .line 209
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1;->enableStepReport(I)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$13;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$13;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$12;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$12;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    .line 131
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$1;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$11;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$11;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$2;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$10;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$9;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$9;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$4;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$8;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$8;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;Lrx/Subscriber;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$5;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$7;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$7;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$6;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$7;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$6;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$5;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$5;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    .line 183
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$4;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    .line 189
    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$8;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$3;

    invoke-direct {v1, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$3;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->concatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$9;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/meizu/smart/wristband/servers/BleServerB52$1$1;

    invoke-direct {v1, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$1;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;Lrx/Subscriber;)V

    new-instance v2, Lcom/meizu/smart/wristband/servers/BleServerB52$1$2;

    invoke-direct {v2, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$2;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB52$1;Lrx/Subscriber;)V

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 220
    return-void
.end method
