.class final synthetic Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;-><init>(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity$$Lambda$1;->arg$1:Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;

    invoke-static {v0}, Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;->access$lambda$0(Lcom/meizu/smart/wristband/meizuUI/share/StepShareActivity;)V

    return-void
.end method
