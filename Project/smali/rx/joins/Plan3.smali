.class public final Lrx/joins/Plan3;
.super Lrx/joins/Plan0;
.source "Plan3.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern3",
            "<TT1;TT2;TT3;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func3",
            "<TT1;TT2;TT3;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern3;Lrx/functions/Func3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern3",
            "<TT1;TT2;TT3;>;",
            "Lrx/functions/Func3",
            "<TT1;TT2;TT3;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Plan3;, "Lrx/joins/Plan3<TT1;TT2;TT3;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    .local p2, "selector":Lrx/functions/Func3;, "Lrx/functions/Func3<TT1;TT2;TT3;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/joins/Plan3;->expression:Lrx/joins/Pattern3;

    .line 36
    iput-object p2, p0, Lrx/joins/Plan3;->selector:Lrx/functions/Func3;

    .line 37
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 15
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
    .local p0, "this":Lrx/joins/Plan3;, "Lrx/joins/Plan3<TT1;TT2;TT3;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static/range {p2 .. p2}, Lrx/joins/Plan3;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v14

    .line 44
    .local v14, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    iget-object v1, p0, Lrx/joins/Plan3;->expression:Lrx/joins/Pattern3;

    invoke-virtual {v1}, Lrx/joins/Pattern3;->o1()Lrx/Observable;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lrx/joins/Plan3;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v4

    .line 45
    .local v4, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    iget-object v1, p0, Lrx/joins/Plan3;->expression:Lrx/joins/Pattern3;

    invoke-virtual {v1}, Lrx/joins/Pattern3;->o2()Lrx/Observable;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lrx/joins/Plan3;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v5

    .line 46
    .local v5, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    iget-object v1, p0, Lrx/joins/Plan3;->expression:Lrx/joins/Pattern3;

    invoke-virtual {v1}, Lrx/joins/Pattern3;->o3()Lrx/Observable;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v14}, Lrx/joins/Plan3;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v6

    .line 48
    .local v6, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 50
    .local v3, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan3<TT1;TT2;TT3;>;>;"
    new-instance v13, Lrx/joins/ActivePlan3;

    new-instance v11, Lrx/joins/Plan3$1;

    move-object/from16 v0, p2

    invoke-direct {v11, p0, v0}, Lrx/joins/Plan3$1;-><init>(Lrx/joins/Plan3;Lrx/Observer;)V

    new-instance v1, Lrx/joins/Plan3$2;

    move-object v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lrx/joins/Plan3$2;-><init>(Lrx/joins/Plan3;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    move-object v7, v13

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v12, v1

    invoke-direct/range {v7 .. v12}, Lrx/joins/ActivePlan3;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action3;Lrx/functions/Action0;)V

    .line 76
    .local v13, "activePlan":Lrx/joins/ActivePlan3;, "Lrx/joins/ActivePlan3<TT1;TT2;TT3;>;"
    invoke-virtual {v3, v13}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v4, v13}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 79
    invoke-virtual {v5, v13}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 80
    invoke-virtual {v6, v13}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 82
    return-object v13
.end method
