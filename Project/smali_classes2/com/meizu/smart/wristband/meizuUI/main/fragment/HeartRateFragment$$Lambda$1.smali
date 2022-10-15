.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

.field private final arg$2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;->arg$2:Landroid/view/View;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment$$Lambda$1;->arg$2:Landroid/view/View;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;->access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/fragment/HeartRateFragment;Landroid/view/View;Ljava/lang/Void;)V

    return-void
.end method
