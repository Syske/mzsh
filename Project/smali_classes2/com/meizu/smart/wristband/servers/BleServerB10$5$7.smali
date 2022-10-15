.class Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;
.super Ljava/lang/Object;
.source "BleServerB10.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/BleServerB10$5;->call(Lrx/Subscriber;)V
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
        "Ljava/lang/Integer;",
        "Lrx/Observable",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10$5;Lrx/Subscriber;)V
    .locals 0
    .param p1, "this$1"    # Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lrx/Subscriber;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;->lambda$call$406(Lrx/Subscriber;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V

    return-void
.end method

.method private static synthetic lambda$call$406(Lrx/Subscriber;Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)V
    .locals 6
    .param p1, "a"    # Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    .prologue
    .line 138
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {p1}, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;->getProgress()J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;->call(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Integer;)Lrx/Observable;
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/meizu/smart/wristband/models/bluetooth/LenovoBleApi;->syncData()Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7;->val$subscriber:Lrx/Subscriber;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$7$$Lambda$1;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
