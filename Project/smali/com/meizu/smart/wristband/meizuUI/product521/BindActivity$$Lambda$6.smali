.class final synthetic Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;->arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;-><init>(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity$$Lambda$6;->arg$1:Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;->access$lambda$5(Lcom/meizu/smart/wristband/meizuUI/product521/BindActivity;Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
