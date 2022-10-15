.class public final Lrx/joins/ActivePlan9;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan9.java"


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

.field private final jo9:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT9;>;"
        }
    .end annotation
.end field

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action9;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action9;Lrx/functions/Action0;)V
    .locals 0
    .param p11, "onCompleted"    # Lrx/functions/Action0;
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
            "Lrx/joins/JoinObserver1",
            "<TT9;>;",
            "Lrx/functions/Action9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/joins/ActivePlan9;, "Lrx/joins/ActivePlan9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    .local p5, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    .local p6, "jo6":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT6;>;"
    .local p7, "jo7":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT7;>;"
    .local p8, "jo8":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT8;>;"
    .local p9, "jo9":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT9;>;"
    .local p10, "onNext":Lrx/functions/Action9;, "Lrx/functions/Action9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 50
    iput-object p10, p0, Lrx/joins/ActivePlan9;->onNext:Lrx/functions/Action9;

    .line 51
    iput-object p11, p0, Lrx/joins/ActivePlan9;->onCompleted:Lrx/functions/Action0;

    .line 52
    iput-object p1, p0, Lrx/joins/ActivePlan9;->jo1:Lrx/joins/JoinObserver1;

    .line 53
    iput-object p2, p0, Lrx/joins/ActivePlan9;->jo2:Lrx/joins/JoinObserver1;

    .line 54
    iput-object p3, p0, Lrx/joins/ActivePlan9;->jo3:Lrx/joins/JoinObserver1;

    .line 55
    iput-object p4, p0, Lrx/joins/ActivePlan9;->jo4:Lrx/joins/JoinObserver1;

    .line 56
    iput-object p5, p0, Lrx/joins/ActivePlan9;->jo5:Lrx/joins/JoinObserver1;

    .line 57
    iput-object p6, p0, Lrx/joins/ActivePlan9;->jo6:Lrx/joins/JoinObserver1;

    .line 58
    iput-object p7, p0, Lrx/joins/ActivePlan9;->jo7:Lrx/joins/JoinObserver1;

    .line 59
    iput-object p8, p0, Lrx/joins/ActivePlan9;->jo8:Lrx/joins/JoinObserver1;

    .line 60
    iput-object p9, p0, Lrx/joins/ActivePlan9;->jo9:Lrx/joins/JoinObserver1;

    .line 61
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 62
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 63
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 64
    invoke-virtual {p0, p4}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 65
    invoke-virtual {p0, p5}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 66
    invoke-virtual {p0, p6}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 67
    invoke-virtual {p0, p7}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 68
    invoke-virtual {p0, p8}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 69
    invoke-virtual {p0, p9}, Lrx/joins/ActivePlan9;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 20

    .prologue
    .line 74
    .local p0, "this":Lrx/joins/ActivePlan9;, "Lrx/joins/ActivePlan9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo2:Lrx/joins/JoinObserver1;

    .line 75
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo3:Lrx/joins/JoinObserver1;

    .line 76
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo4:Lrx/joins/JoinObserver1;

    .line 77
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo5:Lrx/joins/JoinObserver1;

    .line 78
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo6:Lrx/joins/JoinObserver1;

    .line 79
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo7:Lrx/joins/JoinObserver1;

    .line 80
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo8:Lrx/joins/JoinObserver1;

    .line 81
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo9:Lrx/joins/JoinObserver1;

    .line 82
    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Notification;

    .line 85
    .local v11, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrx/Notification;

    .line 86
    .local v12, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo3:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lrx/Notification;

    .line 87
    .local v13, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo4:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lrx/Notification;

    .line 88
    .local v14, "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo5:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lrx/Notification;

    .line 89
    .local v15, "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo6:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lrx/Notification;

    .line 90
    .local v16, "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo7:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lrx/Notification;

    .line 91
    .local v17, "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo8:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lrx/Notification;

    .line 92
    .local v18, "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->jo9:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lrx/Notification;

    .line 94
    .local v19, "n9":Lrx/Notification;, "Lrx/Notification<TT9;>;"
    invoke-virtual {v11}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {v12}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-virtual {v13}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 97
    invoke-virtual {v14}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {v15}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual/range {v16 .. v16}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    invoke-virtual/range {v17 .. v17}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual/range {v18 .. v18}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual/range {v19 .. v19}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    .line 120
    .end local v11    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v12    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v13    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .end local v14    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .end local v15    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .end local v16    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    .end local v17    # "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    .end local v18    # "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    .end local v19    # "n9":Lrx/Notification;, "Lrx/Notification<TT9;>;"
    :cond_1
    :goto_0
    return-void

    .line 106
    .restart local v11    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v12    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v13    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .restart local v14    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .restart local v15    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .restart local v16    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    .restart local v17    # "n7":Lrx/Notification;, "Lrx/Notification<TT7;>;"
    .restart local v18    # "n8":Lrx/Notification;, "Lrx/Notification<TT8;>;"
    .restart local v19    # "n9":Lrx/Notification;, "Lrx/Notification<TT9;>;"
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lrx/joins/ActivePlan9;->dequeue()V

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lrx/joins/ActivePlan9;->onNext:Lrx/functions/Action9;

    .line 108
    invoke-virtual {v11}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 109
    invoke-virtual {v12}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 110
    invoke-virtual {v13}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 111
    invoke-virtual {v14}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 112
    invoke-virtual {v15}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 113
    invoke-virtual/range {v16 .. v16}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 114
    invoke-virtual/range {v17 .. v17}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 115
    invoke-virtual/range {v18 .. v18}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 116
    invoke-virtual/range {v19 .. v19}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v10

    .line 107
    invoke-interface/range {v1 .. v10}, Lrx/functions/Action9;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
