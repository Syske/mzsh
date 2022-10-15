.class public final Lrx/joins/Plan9;
.super Lrx/joins/Plan0;
.source "Plan9.java"


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
        "T7:",
        "Ljava/lang/Object;",
        "T8:",
        "Ljava/lang/Object;",
        "T9:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/Plan0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected final expression:Lrx/joins/Pattern9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/Pattern9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation
.end field

.field protected final selector:Lrx/functions/Func9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/joins/Pattern9;Lrx/functions/Func9;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/Pattern9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;",
            "Lrx/functions/Func9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Plan9;, "Lrx/joins/Plan9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "expression":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p2, "selector":Lrx/functions/Func9;, "Lrx/functions/Func9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    invoke-direct {p0}, Lrx/joins/Plan0;-><init>()V

    .line 35
    iput-object p1, p0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    .line 36
    iput-object p2, p0, Lrx/joins/Plan9;->selector:Lrx/functions/Func9;

    .line 37
    return-void
.end method


# virtual methods
.method public activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .locals 29
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
    .local p0, "this":Lrx/joins/Plan9;, "Lrx/joins/Plan9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    .local p1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<TR;>;"
    .local p3, "deactivate":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/joins/ActivePlan0;>;"
    invoke-static/range {p2 .. p2}, Lrx/joins/Plan9;->onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;

    move-result-object v28

    .line 44
    .local v28, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o1()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v6

    .line 45
    .local v6, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o2()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v7

    .line 46
    .local v7, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o3()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v8

    .line 47
    .local v8, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o4()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v9

    .line 48
    .local v9, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o5()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v10

    .line 49
    .local v10, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o6()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v11

    .line 50
    .local v11, "jo6":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT6;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o7()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v12

    .line 51
    .local v12, "jo7":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT7;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o8()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v13

    .line 52
    .local v13, "jo8":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT8;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lrx/joins/Plan9;->expression:Lrx/joins/Pattern9;

    invoke-virtual {v3}, Lrx/joins/Pattern9;->o9()Lrx/Observable;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v3, v1}, Lrx/joins/Plan9;->createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;

    move-result-object v14

    .line 54
    .local v14, "jo9":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT9;>;"
    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 56
    .local v5, "self":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/joins/ActivePlan0;>;"
    new-instance v27, Lrx/joins/ActivePlan9;

    new-instance v25, Lrx/joins/Plan9$1;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lrx/joins/Plan9$1;-><init>(Lrx/joins/Plan9;Lrx/Observer;)V

    new-instance v3, Lrx/joins/Plan9$2;

    move-object/from16 v4, p0

    move-object/from16 v15, p3

    invoke-direct/range {v3 .. v15}, Lrx/joins/Plan9$2;-><init>(Lrx/joins/Plan9;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V

    move-object/from16 v15, v27

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move-object/from16 v26, v3

    invoke-direct/range {v15 .. v26}, Lrx/joins/ActivePlan9;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action9;Lrx/functions/Action0;)V

    .line 88
    .local v27, "activePlan":Lrx/joins/ActivePlan0;
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 91
    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 92
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 93
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 94
    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 95
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 96
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 97
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 98
    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Lrx/joins/JoinObserver1;->addActivePlan(Lrx/joins/ActivePlan0;)V

    .line 100
    return-object v27
.end method
