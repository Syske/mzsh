.class final synthetic Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;

.field private final arg$2:Landroid/view/animation/ScaleAnimation;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;->arg$2:Landroid/view/animation/ScaleAnimation;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1$$Lambda$1;->arg$2:Landroid/view/animation/ScaleAnimation;

    invoke-static {v0, v1}, Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;->access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/sport/RunPreActivity$1;Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method
