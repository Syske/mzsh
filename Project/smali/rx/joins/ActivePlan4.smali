.class public final Lrx/joins/ActivePlan4;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan4.java"


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

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action4",
            "<TT1;TT2;TT3;TT4;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action4;Lrx/functions/Action0;)V
    .locals 0
    .param p6, "onCompleted"    # Lrx/functions/Action0;
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
            "Lrx/functions/Action4",
            "<TT1;TT2;TT3;TT4;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/joins/ActivePlan4;, "Lrx/joins/ActivePlan4<TT1;TT2;TT3;TT4;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    .local p5, "onNext":Lrx/functions/Action4;, "Lrx/functions/Action4<TT1;TT2;TT3;TT4;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 40
    iput-object p5, p0, Lrx/joins/ActivePlan4;->onNext:Lrx/functions/Action4;

    .line 41
    iput-object p6, p0, Lrx/joins/ActivePlan4;->onCompleted:Lrx/functions/Action0;

    .line 42
    iput-object p1, p0, Lrx/joins/ActivePlan4;->jo1:Lrx/joins/JoinObserver1;

    .line 43
    iput-object p2, p0, Lrx/joins/ActivePlan4;->jo2:Lrx/joins/JoinObserver1;

    .line 44
    iput-object p3, p0, Lrx/joins/ActivePlan4;->jo3:Lrx/joins/JoinObserver1;

    .line 45
    iput-object p4, p0, Lrx/joins/ActivePlan4;->jo4:Lrx/joins/JoinObserver1;

    .line 46
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan4;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 47
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan4;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 48
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan4;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 49
    invoke-virtual {p0, p4}, Lrx/joins/ActivePlan4;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 9

    .prologue
    .line 54
    .local p0, "this":Lrx/joins/ActivePlan4;, "Lrx/joins/ActivePlan4<TT1;TT2;TT3;TT4;>;"
    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo2:Lrx/joins/JoinObserver1;

    .line 55
    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo3:Lrx/joins/JoinObserver1;

    .line 56
    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo4:Lrx/joins/JoinObserver1;

    .line 57
    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 58
    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 59
    .local v0, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 60
    .local v1, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo3:Lrx/joins/JoinObserver1;

    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Notification;

    .line 61
    .local v2, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    iget-object v4, p0, Lrx/joins/ActivePlan4;->jo4:Lrx/joins/JoinObserver1;

    invoke-virtual {v4}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Notification;

    .line 63
    .local v3, "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    invoke-virtual {v3}, Lrx/Notification;->isOnCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    :cond_0
    iget-object v4, p0, Lrx/joins/ActivePlan4;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v4}, Lrx/functions/Action0;->call()V

    .line 73
    .end local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v2    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .end local v3    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    :cond_1
    :goto_0
    return-void

    .line 69
    .restart local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v2    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .restart local v3    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    :cond_2
    invoke-virtual {p0}, Lrx/joins/ActivePlan4;->dequeue()V

    .line 70
    iget-object v4, p0, Lrx/joins/ActivePlan4;->onNext:Lrx/functions/Action4;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v5, v6, v7, v8}, Lrx/functions/Action4;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
