.class public final Lrx/joins/ActivePlan8;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan8.java"


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
        ">",
        "Lrx/joins/ActivePlan0;"
    }
.end annotation


# instance fields
.field private final jo1:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT1;>;"
        }
    .end annotation
.end field

.field private final jo2:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT2;>;"
        }
    .end annotation
.end field

.field private final jo3:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT3;>;"
        }
    .end annotation
.end field

.field private final jo4:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT4;>;"
        }
    .end annotation
.end field

.field private final jo5:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT5;>;"
        }
    .end annotation
.end field

.field private final jo6:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT6;>;"
        }
    .end annotation
.end field

.field private final jo7:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT7;>;"
        }
    .end annotation
.end field

.field private final jo8:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT8;>;"
        }
    .end annotation
.end field

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action8;Lrx/functions/Action0;)V
    .locals 0
    .param p10, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/JoinObserver1",
            "<TT1;>;",
            "Lrx/joins/JoinObserver1",
            "<TT2;>;",
            "Lrx/joins/JoinObserver1",
            "<TT3;>;",
            "Lrx/joins/JoinObserver1",
            "<TT4;>;",
            "Lrx/joins/JoinObserver1",
            "<TT5;>;",
            "Lrx/joins/JoinObserver1",
            "<TT6;>;",
            "Lrx/joins/JoinObserver1",
            "<TT7;>;",
            "Lrx/joins/JoinObserver1",
            "<TT8;>;",
            "Lrx/functions/Action8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/joins/ActivePlan8;, "Lrx/joins/ActivePlan8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    .local p5, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    .local p6, "jo6":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT6;>;"
    .local p7, "jo7":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT7;>;"
    .local p8, "jo8":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT8;>;"
    .local p9, "onNext":Lrx/functions/Action8;, "Lrx/functions/Action8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 48
    iput-object p9, p0, Lrx/joins/ActivePlan8;->onNext:Lrx/functions/Action8;

    .line 49
    iput-object p10, p0, Lrx/joins/ActivePlan8;->onCompleted:Lrx/functions/Action0;

    .line 50
    iput-object p1, p0, Lrx/joins/ActivePlan8;->jo1:Lrx/joins/JoinObserver1;

    .line 51
    iput-object p2, p0, Lrx/joins/ActivePlan8;->jo2:Lrx/joins/JoinObserver1;

    .line 52
    iput-object p3, p0, Lrx/joins/ActivePlan8;->jo3:Lrx/joins/JoinObserver1;

    .line 53
    iput-object p4, p0, Lrx/joins/ActivePlan8;->jo4:Lrx/joins/JoinObserver1;

    .line 54
    iput-object p5, p0, Lrx/joins/ActivePlan8;->jo5:Lrx/joins/JoinObserver1;

    .line 55
    iput-object p6, p0, Lrx/joins/ActivePlan8;->jo6:Lrx/joins/JoinObserver1;

    .line 56
    iput-object p7, p0, Lrx/joins/ActivePlan8;->jo7:Lrx/joins/JoinObserver1;

    .line 57
    iput-object p8, p0, Lrx/joins/ActivePlan8;->jo8:Lrx/joins/JoinObserver1;

    .line 58
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 59
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 60
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 61
    invoke-virtual {p0, p4}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 62
    invoke-virtual {p0, p5}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 63
    invoke-virtual {p0, p6}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 64
    invoke-virtual {p0, p7}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 65
    invoke-virtual {p0, p8}, Lrx/joins/ActivePlan8;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 18

    .prologue
    .line 70
    .local p0, "this":Lrx/joins/ActivePlan8;, "Lrx/joins/ActivePlan8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo2:Lrx/joins/JoinObserver1;

    .line 71
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo3:Lrx/joins/JoinObserver1;

    .line 72
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo4:Lrx/joins/JoinObserver1;

    .line 73
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo5:Lrx/joins/JoinObserver1;

    .line 74
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo6:Lrx/joins/JoinObserver1;

    .line 75
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo7:Lrx/joins/JoinObserver1;

    .line 76
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo8:Lrx/joins/JoinObserver1;

    .line 77
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/Notification;

    .line 80
    .local v10, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Notification;

    .line 81
    .local v11, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo3:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrx/Notification;

    .line 82
    .local v12, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo4:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrx/Notification;

    .line 83
    .local v13, "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo5:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lrx/Notification;

    .line 84
    .local v14, "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo6:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lrx/Notification;

    .line 85
    .local v15, "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo7:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lrx/Notification;

    .line 86
    .local v16, "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->jo8:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lrx/Notification;

    .line 88
    .local v17, "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    invoke-virtual {v10}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    invoke-virtual {v11}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {v12}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v13}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    invoke-virtual {v14}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v15}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    invoke-virtual/range {v16 .. v16}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual/range {v17 .. v17}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    .line 112
    .end local v10    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v11    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v12    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .end local v13    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .end local v14    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .end local v15    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    .end local v16    # "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    .end local v17    # "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    :cond_1
    :goto_0
    return-void

    .line 99
    .restart local v10    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v11    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v12    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .restart local v13    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .restart local v14    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .restart local v15    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    .restart local v16    # "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    .restart local v17    # "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lrx/joins/ActivePlan8;->dequeue()V

    .line 100
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan8;->onNext:Lrx/functions/Action8;

    .line 101
    invoke-virtual {v10}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 102
    invoke-virtual {v11}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 103
    invoke-virtual {v12}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 104
    invoke-virtual {v13}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 105
    invoke-virtual {v14}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 106
    invoke-virtual {v15}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 107
    invoke-virtual/range {v16 .. v16}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 108
    invoke-virtual/range {v17 .. v17}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 100
    invoke-interface/range {v1 .. v9}, Lrx/functions/Action8;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
