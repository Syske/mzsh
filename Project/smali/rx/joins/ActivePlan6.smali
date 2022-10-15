.class public final Lrx/joins/ActivePlan6;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan6.java"


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

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action6;Lrx/functions/Action0;)V
    .locals 0
    .param p8, "onCompleted"    # Lrx/functions/Action0;
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
            "Lrx/functions/Action6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/joins/ActivePlan6;, "Lrx/joins/ActivePlan6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    .local p5, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    .local p6, "jo6":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT6;>;"
    .local p7, "onNext":Lrx/functions/Action6;, "Lrx/functions/Action6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 44
    iput-object p7, p0, Lrx/joins/ActivePlan6;->onNext:Lrx/functions/Action6;

    .line 45
    iput-object p8, p0, Lrx/joins/ActivePlan6;->onCompleted:Lrx/functions/Action0;

    .line 46
    iput-object p1, p0, Lrx/joins/ActivePlan6;->jo1:Lrx/joins/JoinObserver1;

    .line 47
    iput-object p2, p0, Lrx/joins/ActivePlan6;->jo2:Lrx/joins/JoinObserver1;

    .line 48
    iput-object p3, p0, Lrx/joins/ActivePlan6;->jo3:Lrx/joins/JoinObserver1;

    .line 49
    iput-object p4, p0, Lrx/joins/ActivePlan6;->jo4:Lrx/joins/JoinObserver1;

    .line 50
    iput-object p5, p0, Lrx/joins/ActivePlan6;->jo5:Lrx/joins/JoinObserver1;

    .line 51
    iput-object p6, p0, Lrx/joins/ActivePlan6;->jo6:Lrx/joins/JoinObserver1;

    .line 52
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 53
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 54
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 55
    invoke-virtual {p0, p4}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 56
    invoke-virtual {p0, p5}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 57
    invoke-virtual {p0, p6}, Lrx/joins/ActivePlan6;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 13

    .prologue
    .line 62
    .local p0, "this":Lrx/joins/ActivePlan6;, "Lrx/joins/ActivePlan6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo2:Lrx/joins/JoinObserver1;

    .line 63
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo3:Lrx/joins/JoinObserver1;

    .line 64
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo4:Lrx/joins/JoinObserver1;

    .line 65
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo5:Lrx/joins/JoinObserver1;

    .line 66
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo6:Lrx/joins/JoinObserver1;

    .line 67
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Notification;

    .line 70
    .local v7, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/Notification;

    .line 71
    .local v8, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo3:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/Notification;

    .line 72
    .local v9, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo4:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/Notification;

    .line 73
    .local v10, "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo5:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/Notification;

    .line 74
    .local v11, "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan6;->jo6:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lrx/Notification;

    .line 76
    .local v12, "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    invoke-virtual {v7}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {v8}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {v9}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {v10}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {v11}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {v12}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lrx/joins/ActivePlan6;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 96
    .end local v7    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v8    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v9    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .end local v10    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .end local v11    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .end local v12    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    :cond_1
    :goto_0
    return-void

    .line 85
    .restart local v7    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v8    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v9    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .restart local v10    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .restart local v11    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    .restart local v12    # "n6":Lrx/Notification;, "Lrx/Notification<TT6;>;"
    :cond_2
    invoke-virtual {p0}, Lrx/joins/ActivePlan6;->dequeue()V

    .line 86
    iget-object v0, p0, Lrx/joins/ActivePlan6;->onNext:Lrx/functions/Action6;

    .line 87
    invoke-virtual {v7}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-virtual {v8}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 89
    invoke-virtual {v9}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 90
    invoke-virtual {v10}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 91
    invoke-virtual {v11}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 92
    invoke-virtual {v12}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 86
    invoke-interface/range {v0 .. v6}, Lrx/functions/Action6;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
