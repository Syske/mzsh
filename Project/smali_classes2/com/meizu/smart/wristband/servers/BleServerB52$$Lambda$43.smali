.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field private static final instance:Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;->instance:Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/functions/Func1;
    .locals 1

    sget-object v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;->instance:Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$43;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->access$lambda$42(Ljava/lang/Integer;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
