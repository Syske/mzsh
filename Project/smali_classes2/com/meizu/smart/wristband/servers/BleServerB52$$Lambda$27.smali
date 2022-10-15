.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Ljava/text/DecimalFormat;

.field private final arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method private constructor <init>(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;->arg$1:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;

    return-void
.end method

.method private static get$Lambda(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;-><init>(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;-><init>(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;->arg$1:Ljava/text/DecimalFormat;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$27;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->access$lambda$26(Ljava/text/DecimalFormat;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
