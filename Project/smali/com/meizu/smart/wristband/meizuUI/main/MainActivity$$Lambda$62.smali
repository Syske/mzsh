.class final synthetic Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

.field private final arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;

.field private final arg$3:Ljava/util/Date;

.field private final arg$4:Ljava/util/Date;


# direct methods
.method private constructor <init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iput-object p2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$3:Ljava/util/Date;

    iput-object p4, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$4:Ljava/util/Date;

    return-void
.end method

.method private static get$Lambda(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;-><init>(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$1:Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    iget-object v1, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$2:Lcom/meizu/smart/wristband/models/database/entity/User;

    iget-object v2, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$3:Ljava/util/Date;

    iget-object v3, p0, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity$$Lambda$62;->arg$4:Ljava/util/Date;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;->access$lambda$61(Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
