.class final synthetic Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;->arg$2:Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;

    return-void
.end method

.method private static get$Lambda(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;-><init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;-><init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$4;->arg$2:Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->access$lambda$3(Landroid/content/Context;Lcom/meizu/smart/wristband/models/newwork/request/CommitSportData;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
