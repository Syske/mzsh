.class public final Lrx/joins/ActivePlan3;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan3.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/joins/ActivePlan0;"
    }
.end annotation


# instance fields
.field private final first:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT1;>;"
        }
    .end annotation
.end field

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action3",
            "<TT1;TT2;TT3;>;"
        }
    .end annotation
.end field

.field private final second:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT2;>;"
        }
    .end annotation
.end field

.field private final third:Lrx/joins/JoinObserver1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/joins/JoinObserver1",
            "<TT3;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action3;Lrx/functions/Action0;)V
    .locals 0
    .param p5, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/JoinObserver1",
            "<TT1;>;",
            "Lrx/joins/JoinObserver1",
            "<TT2;>;",
            "Lrx/joins/JoinObserver1",
            "<TT3;>;",
            "Lrx/functions/Action3",
            "<TT1;TT2;TT3;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lrx/joins/ActivePlan3;, "Lrx/joins/ActivePlan3<TT1;TT2;TT3;>;"
    .local p1, "first":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "second":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "third":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "onNext":Lrx/functions/Action3;, "Lrx/functions/Action3<TT1;TT2;TT3;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 37
    iput-object p4, p0, Lrx/joins/ActivePlan3;->onNext:Lrx/functions/Action3;

    .line 38
    iput-object p5, p0, Lrx/joins/ActivePlan3;->onCompleted:Lrx/functions/Action0;

    .line 39
    iput-object p1, p0, Lrx/joins/ActivePlan3;->first:Lrx/joins/JoinObserver1;

    .line 40
    iput-object p2, p0, Lrx/joins/ActivePlan3;->second:Lrx/joins/JoinObserver1;

    .line 41
    iput-object p3, p0, Lrx/joins/ActivePlan3;->third:Lrx/joins/JoinObserver1;

    .line 42
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan3;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 43
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan3;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 44
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan3;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 7

    .prologue
    .line 49
    .local p0, "this":Lrx/joins/ActivePlan3;, "Lrx/joins/ActivePlan3<TT1;TT2;TT3;>;"
    iget-object v3, p0, Lrx/joins/ActivePlan3;->first:Lrx/joins/JoinObserver1;

    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lrx/joins/ActivePlan3;->second:Lrx/joins/JoinObserver1;

    .line 50
    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lrx/joins/ActivePlan3;->third:Lrx/joins/JoinObserver1;

    .line 51
    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 52
    iget-object v3, p0, Lrx/joins/ActivePlan3;->first:Lrx/joins/JoinObserver1;

    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 53
    .local v0, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    iget-object v3, p0, Lrx/joins/ActivePlan3;->second:Lrx/joins/JoinObserver1;

    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 54
    .local v1, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    iget-object v3, p0, Lrx/joins/ActivePlan3;->third:Lrx/joins/JoinObserver1;

    invoke-virtual {v3}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/Notification;

    .line 56
    .local v2, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lrx/Notification;->isOnCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 57
    :cond_0
    iget-object v3, p0, Lrx/joins/ActivePlan3;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v3}, Lrx/functions/Action0;->call()V

    .line 63
    .end local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v2    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    :cond_1
    :goto_0
    return-void

    .line 59
    .restart local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v2    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    :cond_2
    invoke-virtual {p0}, Lrx/joins/ActivePlan3;->dequeue()V

    .line 60
    iget-object v3, p0, Lrx/joins/ActivePlan3;->onNext:Lrx/functions/Action3;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lrx/functions/Action3;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
