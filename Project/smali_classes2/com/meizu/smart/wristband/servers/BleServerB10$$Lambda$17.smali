.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field private static final instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;->instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/functions/Func1;
    .locals 1

    sget-object v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;->instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$17;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->access$lambda$16(Lcom/meizu/smart/wristband/models/database/FBDBTools$BtDevVersion;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
