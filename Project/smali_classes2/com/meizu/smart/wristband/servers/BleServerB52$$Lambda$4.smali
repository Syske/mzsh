.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lrx/Observable;


# direct methods
.method private constructor <init>(Lrx/Observable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;->arg$1:Lrx/Observable;

    return-void
.end method

.method private static get$Lambda(Lrx/Observable;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;-><init>(Lrx/Observable;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lrx/Observable;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;-><init>(Lrx/Observable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$4;->arg$1:Lrx/Observable;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->access$lambda$3(Lrx/Observable;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
