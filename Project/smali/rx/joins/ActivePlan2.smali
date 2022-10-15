.class public final Lrx/joins/ActivePlan2;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
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

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action2",
            "<TT1;TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action2;Lrx/functions/Action0;)V
    .locals 0
    .param p4, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/JoinObserver1",
            "<TT1;>;",
            "Lrx/joins/JoinObserver1",
            "<TT2;>;",
            "Lrx/functions/Action2",
            "<TT1;TT2;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lrx/joins/ActivePlan2;, "Lrx/joins/ActivePlan2<TT1;TT2;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "onNext":Lrx/functions/Action2;, "Lrx/functions/Action2<TT1;TT2;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 32
    iput-object p3, p0, Lrx/joins/ActivePlan2;->onNext:Lrx/functions/Action2;

    .line 33
    iput-object p4, p0, Lrx/joins/ActivePlan2;->onCompleted:Lrx/functions/Action0;

    .line 34
    iput-object p1, p0, Lrx/joins/ActivePlan2;->jo1:Lrx/joins/JoinObserver1;

    .line 35
    iput-object p2, p0, Lrx/joins/ActivePlan2;->jo2:Lrx/joins/JoinObserver1;

    .line 36
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan2;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 37
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan2;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 5

    .prologue
    .line 42
    .local p0, "this":Lrx/joins/ActivePlan2;, "Lrx/joins/ActivePlan2<TT1;TT2;>;"
    iget-object v2, p0, Lrx/joins/ActivePlan2;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lrx/joins/ActivePlan2;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    iget-object v2, p0, Lrx/joins/ActivePlan2;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 44
    .local v0, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    iget-object v2, p0, Lrx/joins/ActivePlan2;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v2}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Notification;

    .line 46
    .local v1, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lrx/Notification;->isOnCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_0
    iget-object v2, p0, Lrx/joins/ActivePlan2;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v2}, Lrx/functions/Action0;->call()V

    .line 53
    .end local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    :cond_1
    :goto_0
    return-void

    .line 49
    .restart local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v1    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    :cond_2
    invoke-virtual {p0}, Lrx/joins/ActivePlan2;->dequeue()V

    .line 50
    iget-object v2, p0, Lrx/joins/ActivePlan2;->onNext:Lrx/functions/Action2;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
