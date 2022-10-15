.class public final Lrx/joins/ActivePlanN;
.super Lrx/joins/ActivePlan0;
.source "ActivePlanN.java"


# instance fields
.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/joins/JoinObserver1",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/ActionN;


# direct methods
.method constructor <init>(Ljava/util/List;Lrx/functions/ActionN;Lrx/functions/Action0;)V
    .locals 3
    .param p2, "onNext"    # Lrx/functions/ActionN;
    .param p3, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/joins/JoinObserver1",
            "<+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lrx/functions/ActionN;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "observers":Ljava/util/List;, "Ljava/util/List<Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/joins/ActivePlanN;->onNext:Lrx/functions/ActionN;

    .line 37
    iput-object p3, p0, Lrx/joins/ActivePlanN;->onCompleted:Lrx/functions/Action0;

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lrx/joins/ActivePlanN;->observers:Ljava/util/List;

    .line 39
    iget-object v1, p0, Lrx/joins/ActivePlanN;->observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/JoinObserver1;

    .line 40
    .local v0, "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lrx/joins/ActivePlanN;->addJoinObserver(Lrx/joins/JoinObserver;)V

    goto :goto_0

    .line 42
    .end local v0    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 7

    .prologue
    .line 46
    iget-object v5, p0, Lrx/joins/ActivePlanN;->observers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    .line 47
    .local v4, "notifications":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 48
    .local v1, "j":I
    const/4 v0, 0x0

    .line 49
    .local v0, "completedCount":I
    iget-object v5, p0, Lrx/joins/ActivePlanN;->observers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/joins/JoinObserver1;

    .line 50
    .local v2, "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 66
    .end local v2    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 53
    .restart local v2    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Notification;

    .line 54
    .local v3, "n":Lrx/Notification;, "Lrx/Notification<+Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lrx/Notification;->isOnCompleted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 57
    :cond_1
    invoke-virtual {v3}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v1

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    goto :goto_0

    .line 60
    .end local v2    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    .end local v3    # "n":Lrx/Notification;, "Lrx/Notification<+Ljava/lang/Object;>;"
    :cond_2
    if-ne v0, v1, :cond_3

    .line 61
    iget-object v5, p0, Lrx/joins/ActivePlanN;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v5}, Lrx/functions/Action0;->call()V

    goto :goto_1

    .line 63
    :cond_3
    invoke-virtual {p0}, Lrx/joins/ActivePlanN;->dequeue()V

    .line 64
    iget-object v5, p0, Lrx/joins/ActivePlanN;->onNext:Lrx/functions/ActionN;

    invoke-interface {v5, v4}, Lrx/functions/ActionN;->call([Ljava/lang/Object;)V

    goto :goto_1
.end method
