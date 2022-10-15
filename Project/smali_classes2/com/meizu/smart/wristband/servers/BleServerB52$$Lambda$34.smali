.class final synthetic Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;->arg$1:[Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda([Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$([Ljava/lang/String;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/BleServerB52$$Lambda$34;->arg$1:[Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/servers/BleServerB52;->access$lambda$33([Ljava/lang/String;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
