.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)Lrx/functions/Action1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;->access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/main/fragment/SportFragment;Ljava/lang/Throwable;)V

    return-void
.end method
