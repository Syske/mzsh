.class final synthetic Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final arg$1:Landroid/content/Context;

.field private final arg$2:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final arg$3:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$1:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$2:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$3:Ljava/util/List;

    return-void
.end method

.method private static get$Lambda(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    return-object v0
.end method

.method public static lambdaFactory$(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lrx/functions/Func1;
    .locals 1

    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$1:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$2:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$$Lambda$2;->arg$3:Ljava/util/List;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager;->access$lambda$1(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
