.class public final Lrx/joins/Plan1;
.super Lrx/joins/Plan0;
.source "Plan1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern1",
            "<TT1;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<TT1;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern1;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern1",
            "<TT1;>;",
            "Lrx/functions/Func1",
            "<TT1;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lrx/joins/Plan1;, "Lrx/joins/Plan1<TT1;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern1;, "Lrx/joins/Pattern1<TT1;>;"
    .local p2, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT1;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/joins/Plan1;->expression:Lrx/joins/Pattern1;

    .line 35
    iput-object p2, p0, Lrx/joins/Plan1;->selector:Lrx/functions/Func1;

    .line 36
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 6
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
    .line 40
    .local p0, "this":Lrx/joins/Plan1;, "Lrx/joins/Plan1<TT1;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static {p2}, Lrx/joins/Plan1;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v2

    .line 42
    .local v2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    iget-object v4, p0, Lrx/joins/Plan1;->expression:Lrx/joins/Pattern1;

    invoke-virtual {v4}, Lrx/joins/Pattern1;->o1()Lrx/Observable;

    move-result-object v4

    invoke-static {p1, v4, v2}, Lrx/joins/Plan1;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v1

    .line 44
    .local v1, "firstJoinObserver":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    .local v3, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan1<TT1;>;>;"
    new-instance v0, Lrx/joins/ActivePlan1;

    new-instance v4, Lrx/joins/Plan1$1;

    invoke-direct {v4, p0, p2}, Lrx/joins/Plan1$1;-><init>(Lrx/joins/Plan1;Lrx/Observer;)V

    new-instance v5, Lrx/joins/Plan1$2;

    invoke-direct {v5, p0, v3, v1, p3}, Lrx/joins/Plan1$2;-><init>(Lrx/joins/Plan1;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    invoke-direct {v0, v1, v4, v5}, Lrx/joins/ActivePlan1;-><init>(Lrx/joins/JoinObserver1;Lrx/functions/Action1;Lrx/functions/Action0;)V

    .line 68
    .local v0, "activePlan":Lrx/joins/ActivePlan1;, "Lrx/joins/ActivePlan1<TT1;>;"
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v1, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 71
    return-object v0
.end method
