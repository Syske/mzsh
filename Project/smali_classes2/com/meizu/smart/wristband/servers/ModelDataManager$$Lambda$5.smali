.class final synthetic Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;->arg$1:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;->arg$2:Ljava/util/List;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;-><init>(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;->arg$1:Lcom/meizu/smart/wristband/models/database/servers/SportServer;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$5;->arg$2:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->access$lambda$4(Lcom/meizu/smart/wristband/models/database/servers/SportServer;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
