.class final synthetic Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;->arg$1:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;-><init>(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41$$Lambda$2;->arg$1:Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;->access$lambda$1(Lcom/meizu/smart/wristband/models/bluetooth/FBBleApi1$41;Ljava/lang/Integer;)V

    return-void
.end method
