.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/servers/BleServer;

.field private final arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;->arg$1:Lcom/meizu/smart/wristband/servers/BleServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;-><init>(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;-><init>(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;->arg$1:Lcom/meizu/smart/wristband/servers/BleServer;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$71;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$lambda$70(Lcom/meizu/smart/wristband/servers/BleServer;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
