.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$3;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->downloadAllHistory(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/Date;Ljava/util/Date;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$progressSubject:Lrx/subjects/BehaviorSubject;

.field final synthetic val$user:Lcom/meizu/smart/wristband/models/database/entity/User;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Lrx/subjects/BehaviorSubject;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$user:Lcom/meizu/smart/wristband/models/database/entity/User;

    iput-object p3, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->val$progressSubject:Lrx/subjects/BehaviorSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 146
    check-cast p1, Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$3;->call(Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;)Lrx/Observable;
    .locals 2
    .param p1, "entity"    # Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$3$1;-><init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$3;Lcom/meizu/smart/wristband/models/newwork/response/LoadBizData;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    .line 240
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
