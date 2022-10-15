.class final synthetic Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private final arg$2:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;->arg$1:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;->arg$2:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;-><init>(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;-><init>(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;->arg$1:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelUserManager$$Lambda$10;->arg$2:Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/meizu/smart/wristband/servers/ModelUserManager;->access$lambda$9(Lcom/meizu/smart/wristband/models/database/entity/User;Lcom/meizu/smart/wristband/models/database/servers/UserInfoServer;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
