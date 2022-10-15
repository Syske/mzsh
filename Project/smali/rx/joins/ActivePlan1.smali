.class public final Lrx/joins/ActivePlan1;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
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

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<TT1;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .locals 0
    .param p3, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/joins/JoinObserver1",
            "<TT1;>;",
            "Lrx/functions/Action1",
            "<TT1;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/joins/ActivePlan1;, "Lrx/joins/ActivePlan1<TT1;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<TT1;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 31
    iput-object p2, p0, Lrx/joins/ActivePlan1;->onNext:Lrx/functions/Action1;

    .line 32
    iput-object p3, p0, Lrx/joins/ActivePlan1;->onCompleted:Lrx/functions/Action0;

    .line 33
    iput-object p1, p0, Lrx/joins/ActivePlan1;->jo1:Lrx/joins/JoinObserver1;

    .line 34
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan1;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 3

    .prologue
    .line 39
    .local p0, "this":Lrx/joins/ActivePlan1;, "Lrx/joins/ActivePlan1<TT1;>;"
    iget-object v1, p0, Lrx/joins/ActivePlan1;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lrx/joins/ActivePlan1;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Notification;

    .line 41
    .local v0, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    invoke-virtual {v0}, Lrx/Notification;->isOnCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lrx/joins/ActivePlan1;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    .line 48
    .end local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    :cond_0
    :goto_0
    return-void

    .line 44
    .restart local v0    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    :cond_1
    invoke-virtual {p0}, Lrx/joins/ActivePlan1;->dequeue()V

    .line 45
    iget-object v1, p0, Lrx/joins/ActivePlan1;->onNext:Lrx/functions/Action1;

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    goto :goto_0
.end method
