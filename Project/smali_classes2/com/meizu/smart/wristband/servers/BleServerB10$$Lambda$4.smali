.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/servers/BleServerB10;

.field private final arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;->arg$1:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;-><init>(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;->arg$1:Lcom/meizu/smart/wristband/servers/BleServerB10;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$4;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/BtDev;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->access$lambda$3(Lcom/meizu/smart/wristband/servers/BleServerB10;Lcom/meizu/smart/wristband/models/database/entity/BtDev;Ljava/lang/Boolean;)V

    return-void
.end method
