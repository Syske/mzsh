.class public final Lrx/joins/ActivePlan5;
.super Lrx/joins/ActivePlan0;
.source "ActivePlan5.java"


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

.field private final onCompleted:Lrx/functions/Action0;

.field private final onNext:Lrx/functions/Action5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action5",
            "<TT1;TT2;TT3;TT4;TT5;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action5;Lrx/functions/Action0;)V
    .locals 0
    .param p7, "onCompleted"    # Lrx/functions/Action0;
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
            "Lrx/functions/Action5",
            "<TT1;TT2;TT3;TT4;TT5;>;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/joins/ActivePlan5;, "Lrx/joins/ActivePlan5<TT1;TT2;TT3;TT4;TT5;>;"
    .local p1, "jo1":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT1;>;"
    .local p2, "jo2":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT2;>;"
    .local p3, "jo3":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT3;>;"
    .local p4, "jo4":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT4;>;"
    .local p5, "jo5":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT5;>;"
    .local p6, "onNext":Lrx/functions/Action5;, "Lrx/functions/Action5<TT1;TT2;TT3;TT4;TT5;>;"
    invoke-direct {p0}, Lrx/joins/ActivePlan0;-><init>()V

    .line 42
    iput-object p6, p0, Lrx/joins/ActivePlan5;->onNext:Lrx/functions/Action5;

    .line 43
    iput-object p7, p0, Lrx/joins/ActivePlan5;->onCompleted:Lrx/functions/Action0;

    .line 44
    iput-object p1, p0, Lrx/joins/ActivePlan5;->jo1:Lrx/joins/JoinObserver1;

    .line 45
    iput-object p2, p0, Lrx/joins/ActivePlan5;->jo2:Lrx/joins/JoinObserver1;

    .line 46
    iput-object p3, p0, Lrx/joins/ActivePlan5;->jo3:Lrx/joins/JoinObserver1;

    .line 47
    iput-object p4, p0, Lrx/joins/ActivePlan5;->jo4:Lrx/joins/JoinObserver1;

    .line 48
    iput-object p5, p0, Lrx/joins/ActivePlan5;->jo5:Lrx/joins/JoinObserver1;

    .line 49
    invoke-virtual {p0, p1}, Lrx/joins/ActivePlan5;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 50
    invoke-virtual {p0, p2}, Lrx/joins/ActivePlan5;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 51
    invoke-virtual {p0, p3}, Lrx/joins/ActivePlan5;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 52
    invoke-virtual {p0, p4}, Lrx/joins/ActivePlan5;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 53
    invoke-virtual {p0, p5}, Lrx/joins/ActivePlan5;->addJoinObserver(Lrx/joins/JoinObserver;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected match()V
    .locals 11

    .prologue
    .line 58
    .local p0, "this":Lrx/joins/ActivePlan5;, "Lrx/joins/ActivePlan5<TT1;TT2;TT3;TT4;TT5;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo2:Lrx/joins/JoinObserver1;

    .line 59
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo3:Lrx/joins/JoinObserver1;

    .line 60
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo4:Lrx/joins/JoinObserver1;

    .line 61
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo5:Lrx/joins/JoinObserver1;

    .line 62
    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrx/Notification;

    .line 65
    .local v6, "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lrx/Notification;

    .line 66
    .local v7, "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo3:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lrx/Notification;

    .line 67
    .local v8, "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo4:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lrx/Notification;

    .line 68
    .local v9, "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    iget-object v0, p0, Lrx/joins/ActivePlan5;->jo5:Lrx/joins/JoinObserver1;

    invoke-virtual {v0}, Lrx/joins/JoinObserver1;->queue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/Notification;

    .line 70
    .local v10, "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    invoke-virtual {v6}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {v7}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {v8}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {v9}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {v10}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    :cond_0
    iget-object v0, p0, Lrx/joins/ActivePlan5;->onCompleted:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 88
    .end local v6    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .end local v7    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .end local v8    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .end local v9    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .end local v10    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    :cond_1
    :goto_0
    return-void

    .line 78
    .restart local v6    # "n1":Lrx/Notification;, "Lrx/Notification<TT1;>;"
    .restart local v7    # "n2":Lrx/Notification;, "Lrx/Notification<TT2;>;"
    .restart local v8    # "n3":Lrx/Notification;, "Lrx/Notification<TT3;>;"
    .restart local v9    # "n4":Lrx/Notification;, "Lrx/Notification<TT4;>;"
    .restart local v10    # "n5":Lrx/Notification;, "Lrx/Notification<TT5;>;"
    :cond_2
    invoke-virtual {p0}, Lrx/joins/ActivePlan5;->dequeue()V

    .line 79
    iget-object v0, p0, Lrx/joins/ActivePlan5;->onNext:Lrx/functions/Action5;

    .line 80
    invoke-virtual {v6}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 81
    invoke-virtual {v7}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 82
    invoke-virtual {v8}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 83
    invoke-virtual {v9}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 84
    invoke-virtual {v10}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 79
    invoke-interface/range {v0 .. v5}, Lrx/functions/Action5;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
