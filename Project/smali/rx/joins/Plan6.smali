.class public final Lrx/joins/Plan6;
.super Lrx/joins/Plan0;
.source "Plan6.java"


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
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern6;Lrx/functions/Func6;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;",
            "Lrx/functions/Func6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Plan6;, "Lrx/joins/Plan6<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p2, "selector":Lrx/functions/Func6;, "Lrx/functions/Func6<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    .line 36
    iput-object p2, p0, Lrx/joins/Plan6;->selector:Lrx/functions/Func6;

    .line 37
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 23
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
    .local p0, "this":Lrx/joins/Plan6;, "Lrx/joins/Plan6<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static/range {p2 .. p2}, Lrx/joins/Plan6;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v22

    .line 44
    .local v22, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o1()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v6

    .line 45
    .local v6, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o2()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v7

    .line 46
    .local v7, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o3()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v8

    .line 47
    .local v8, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o4()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v9

    .line 48
    .local v9, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o5()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v10

    .line 49
    .local v10, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan6;->expression:Lrx/joins/Pattern6;

    invoke-virtual {v3}, Lrx/joins/Pattern6;->o6()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v3, v1}, Lrx/joins/Plan6;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v11

    .line 51
    .local v11, "jo6":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT6;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 53
    .local v5, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan0;>;"
    new-instance v21, Lrx/joins/ActivePlan6;

    new-instance v19, Lrx/joins/Plan6$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lrx/joins/Plan6$1;-><init>(Lrx/joins/Plan6;Lrx/Observer;)V

    new-instance v3, Lrx/joins/Plan6$2;

    move-object/from16 v4, p0

    move-object/from16 v12, p3

    invoke-direct/range {v3 .. v12}, Lrx/joins/Plan6$2;-><init>(Lrx/joins/Plan6;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    move-object/from16 v12, v21

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    move-object/from16 v20, v3

    invoke-direct/range {v12 .. v20}, Lrx/joins/ActivePlan6;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action6;Lrx/functions/Action0;)V

    .line 82
    .local v21, "activePlan":Lrx/joins/ActivePlan0;
    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 85
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 86
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 87
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 88
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 89
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 91
    return-object v21
.end method
