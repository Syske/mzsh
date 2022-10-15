.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lrx/Subscriber;


# direct methods
.method private constructor <init>(Lrx/Subscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;->arg$1:Lrx/Subscriber;

    return-void
.end method

.method private static get$Lambda(Lrx/Subscriber;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lrx/Subscriber;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;-><init>(Lrx/Subscriber;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$1$$Lambda$3;->arg$1:Lrx/Subscriber;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52$1;->access$lambda$2(Lrx/Subscriber;Ljava/lang/Integer;)V

    return-void
.end method
