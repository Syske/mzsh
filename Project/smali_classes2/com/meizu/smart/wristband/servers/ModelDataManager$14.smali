.class final Lcom/meizu/smart/wristband/servers/ModelDataManager$14;
.super Ljava/lang/Object;
.source "ModelDataManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/smart/wristband/servers/ModelDataManager;->uploadHeart(Landroid/content/Context;Lcom/meizu/smart/wristband/models/database/entity/User;Ljava/util/List;)Lrx/Observable;
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
        "Ljava/lang/Boolean;",
        "Lrx/Observable",
        "<+",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$heartRateList:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->val$heartRateList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/smart/wristband/servers/ModelDataManager$14;->call(Ljava/lang/Boolean;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Boolean;)Lrx/Observable;
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    new-instance v0, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/servers/ModelDataManager$14$1;-><init>(Lcom/meizu/smart/wristband/servers/ModelDataManager$14;)V

    invoke-static {v0}, Lrx/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lrx/Observable;

    move-result-object v0

    .line 645
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
