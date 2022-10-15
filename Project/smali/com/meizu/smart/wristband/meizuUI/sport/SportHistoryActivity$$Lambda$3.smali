.class final synthetic Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;-><init>(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity$$Lambda$3;->arg$1:Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;->access$lambda$2(Lcom/meizu/smart/wristband/meizuUI/sport/SportHistoryActivity;)V

    return-void
.end method
