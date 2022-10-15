.class final synthetic Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# static fields
.field private static final instance:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;

    invoke-direct {v0}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;-><init>()V

    sput-object v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;->instance:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/functions/Func1;
    .locals 1

    sget-object v0, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;->instance:Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;

    invoke-static {p1}, Lcom/meizu/smart/wristband/meizuUI/product521/NewBindActivity;->access$lambda$2(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEvent;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
