.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field private static final instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;->instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/functions/Func1;
    .locals 1

    sget-object v0, Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;->instance:Lcom/meizu/smart/wristband/servers/BleServerB10$$Lambda$28;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB10;->access$lambda$27(Lcom/meizu/smart/wristband/models/bluetooth/BleTools$MonitorData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
