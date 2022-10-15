.class final synthetic Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field private final arg$2:J


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/bluetooth/BleService;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iput-wide p2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;->arg$2:J

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/bluetooth/BleService;J)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;J)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/bluetooth/BleService;J)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/bluetooth/BleService;J)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/bluetooth/BleService;

    iget-wide v2, p0, Lcom/meizu/smart/wristband/bluetooth/BleService$$Lambda$1;->arg$2:J

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v2, v3, p1}, Lcom/meizu/smart/wristband/bluetooth/BleService;->access$lambda$0(Lcom/meizu/smart/wristband/bluetooth/BleService;JLjava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
