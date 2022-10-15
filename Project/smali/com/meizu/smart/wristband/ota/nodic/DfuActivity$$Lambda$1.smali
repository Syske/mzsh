.class final synthetic Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;->access$lambda$0(Lcom/meizu/smart/wristband/ota/nodic/DfuActivity;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
