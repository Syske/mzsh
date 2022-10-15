.class Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;
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
        "Ljava/util/List",
        "<",
        "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
        ">;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
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
    .line 141
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->lambda$call$408(Lrx/Subscriber;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {p0}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->lambda$call$409(Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$call$408(Lrx/Subscriber;Ljava/lang/Integer;)V
    .locals 6
    .param p1, "a"    # Ljava/lang/Integer;

    .prologue
    .line 145
    const-wide v0, 0x4051800000000000L    # 70.0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$call$409(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "a"    # Ljava/util/List;

    .prologue
    .line 146
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 141
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->call(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/util/List;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;",
            ">;)",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;>;"
    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v0, v0, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->this$1:Lcom/meizu/smart/wristband/servers/BleServerB10$5;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB10$5;->this$0:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v1, v1, Lcom/meizu/smart/wristband/servers/BleServerB10;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/DBUserApi;->getLoginUser(Landroid/content/Context;)Lcom/meizu/smart/wristband/models/database/entity/User;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->saveSyncData(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6;->val$subscriber:Lrx/Subscriber;

    invoke-static {v1}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6$$Lambda$1;->lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lcom/meizu/smart/wristband/servers/BleServerB10$5$6$$Lambda$2;->lambdaFactory$()Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
