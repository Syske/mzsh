.class public final Lrx/joins/Plan2;
.super Lrx/joins/Plan0;
.source "Plan2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern2",
            "<TT1;TT2;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT1;TT2;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern2;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern2",
            "<TT1;TT2;>;",
            "Lrx/functions/Func2",
            "<TT1;TT2;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Plan2;, "Lrx/joins/Plan2<TT1;TT2;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    .local p2, "selector":Lrx/functions/Func2;, "Lrx/functions/Func2<TT1;TT2;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/joins/Plan2;->expression:Lrx/joins/Pattern2;

    .line 36
    iput-object p2, p0, Lrx/joins/Plan2;->selector:Lrx/functions/Func2;

    .line 37
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 9
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
    .line 42
    .local p0, "this":Lrx/joins/Plan2;, "Lrx/joins/Plan2<TT1;TT2;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static {p2}, Lrx/joins/Plan2;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v7

    .line 44
    .local v7, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lrx/joins/Plan2;->expression:Lrx/joins/Pattern2;

    invoke-virtual {v0}, Lrx/joins/Pattern2;->o1()Lrx/Observable;

    move-result-object v0

    invoke-static {p1, v0, v7}, Lrx/joins/Plan2;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v3

    .line 45
    .local v3, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    iget-object v0, p0, Lrx/joins/Plan2;->expression:Lrx/joins/Pattern2;

    invoke-virtual {v0}, Lrx/joins/Pattern2;->o2()Lrx/Observable;

    move-result-object v0

    invoke-static {p1, v0, v7}, Lrx/joins/Plan2;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v4

    .line 47
    .local v4, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    .local v2, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan2<TT1;TT2;>;>;"
    new-instance v6, Lrx/joins/ActivePlan2;

    new-instance v8, Lrx/joins/Plan2$1;

    invoke-direct {v8, p0, p2}, Lrx/joins/Plan2$1;-><init>(Lrx/joins/Plan2;Lrx/Observer;)V

    new-instance v0, Lrx/joins/Plan2$2;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lrx/joins/Plan2$2;-><init>(Lrx/joins/Plan2;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    invoke-direct {v6, v3, v4, v8, v0}, Lrx/joins/ActivePlan2;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action2;Lrx/functions/Action0;)V

    .line 72
    .local v6, "activePlan":Lrx/joins/ActivePlan2;, "Lrx/joins/ActivePlan2<TT1;TT2;>;"
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v3, v6}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 75
    invoke-virtual {v4, v6}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 77
    return-object v6
.end method
