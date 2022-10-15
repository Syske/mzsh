.class public final Lrx/joins/Plan4;
.super Lrx/joins/Plan0;
.source "Plan4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        "T4:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern4",
            "<TT1;TT2;TT3;TT4;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func4",
            "<TT1;TT2;TT3;TT4;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern4;Lrx/functions/Func4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern4",
            "<TT1;TT2;TT3;TT4;>;",
            "Lrx/functions/Func4",
            "<TT1;TT2;TT3;TT4;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Plan4;, "Lrx/joins/Plan4<TT1;TT2;TT3;TT4;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    .local p2, "selector":Lrx/functions/Func4;, "Lrx/functions/Func4<TT1;TT2;TT3;TT4;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/joins/Plan4;->expression:Lrx/joins/Pattern4;

    .line 36
    iput-object p2, p0, Lrx/joins/Plan4;->selector:Lrx/functions/Func4;

    .line 37
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 18
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
    .local p0, "this":Lrx/joins/Plan4;, "Lrx/joins/Plan4<TT1;TT2;TT3;TT4;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static/range {p2 .. p2}, Lrx/joins/Plan4;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v17

    .line 44
    .local v17, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/joins/Plan4;->expression:Lrx/joins/Pattern4;

    invoke-virtual {v2}, Lrx/joins/Pattern4;->o1()Lrx/Observable;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lrx/joins/Plan4;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v5

    .line 45
    .local v5, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/joins/Plan4;->expression:Lrx/joins/Pattern4;

    invoke-virtual {v2}, Lrx/joins/Pattern4;->o2()Lrx/Observable;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lrx/joins/Plan4;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v6

    .line 46
    .local v6, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/joins/Plan4;->expression:Lrx/joins/Pattern4;

    invoke-virtual {v2}, Lrx/joins/Pattern4;->o3()Lrx/Observable;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lrx/joins/Plan4;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v7

    .line 47
    .local v7, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lrx/joins/Plan4;->expression:Lrx/joins/Pattern4;

    invoke-virtual {v2}, Lrx/joins/Pattern4;->o4()Lrx/Observable;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v2, v1}, Lrx/joins/Plan4;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v8

    .line 49
    .local v8, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 51
    .local v4, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan0;>;"
    new-instance v16, Lrx/joins/ActivePlan4;

    new-instance v14, Lrx/joins/Plan4$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v14, v0, v1}, Lrx/joins/Plan4$1;-><init>(Lrx/joins/Plan4;Lrx/Observer;)V

    new-instance v2, Lrx/joins/Plan4$2;

    move-object/from16 v3, p0

    move-object/from16 v9, p3

    invoke-direct/range {v2 .. v9}, Lrx/joins/Plan4$2;-><init>(Lrx/joins/Plan4;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    move-object/from16 v9, v16

    move-object v10, v5

    move-object v11, v6

    move-object v12, v7

    move-object v13, v8

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lrx/joins/ActivePlan4;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action4;Lrx/functions/Action0;)V

    .line 78
    .local v16, "activePlan":Lrx/joins/ActivePlan0;
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 80
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 81
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 82
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 83
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 85
    return-object v16
.end method
