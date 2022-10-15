.class public final Lrx/joins/PlanN;
.super Lrx/joins/Plan0;
.source "PlanN.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/PatternN;

.field protected final selector:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/PatternN;Lrx/functions/FuncN;)V
    .locals 0
    .param p1, "expression"    # Lrx/joins/PatternN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/PatternN;",
            "Lrx/functions/FuncN",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/joins/PlanN;, "Lrx/joins/PlanN<TR;>;"
    .local p2, "selector":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 37
    iput-object p1, p0, Lrx/joins/PlanN;->expression:Lrx/joins/PatternN;

    .line 38
    iput-object p2, p0, Lrx/joins/PlanN;->selector:Lrx/functions/FuncN;

    .line 39
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/joins/JoinObserver;",
            ">;",
            "Lrx/Observer",
            "<TR;>;",
            "Lrx/functions/Action1",
            "<",
            "Lrx/joins/ActivePlan0;",
            ">;)",
            "Lrx/joins/ActivePlan0;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lrx/joins/PlanN;, "Lrx/joins/PlanN<TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static {p2}, Lrx/joins/PlanN;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v4

    .line 46
    .local v4, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "observers":Ljava/util/List;, "Ljava/util/List<Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lrx/joins/PlanN;->expression:Lrx/joins/PatternN;

    invoke-virtual {v6}, Lrx/joins/PatternN;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 48
    iget-object v6, p0, Lrx/joins/PlanN;->expression:Lrx/joins/PatternN;

    invoke-virtual {v6, v1}, Lrx/joins/PatternN;->get(I)Lrx/Observable;

    move-result-object v6

    invoke-static {p1, v6, v4}, Lrx/joins/PlanN;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 52
    .local v5, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlanN;>;"
    new-instance v0, Lrx/joins/ActivePlanN;

    new-instance v6, Lrx/joins/PlanN$1;

    invoke-direct {v6, p0, p2}, Lrx/joins/PlanN$1;-><init>(Lrx/joins/PlanN;Lrx/Observer;)V

    new-instance v7, Lrx/joins/PlanN$2;

    invoke-direct {v7, p0, v3, v5, p3}, Lrx/joins/PlanN$2;-><init>(Lrx/joins/PlanN;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V

    invoke-direct {v0, v3, v6, v7}, Lrx/joins/ActivePlanN;-><init>(Ljava/util/List;Lrx/functions/ActionN;Lrx/functions/Action0;)V

    .line 75
    .local v0, "activePlan":Lrx/joins/ActivePlanN;
    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 77
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/joins/JoinObserver1;

    .line 78
    .local v2, "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    invoke-virtual {v2, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    goto :goto_1

    .line 81
    .end local v2    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    :cond_1
    return-object v0
.end method
