.class final Lrx/joins/JoinObserver1$InnerObserver;
.super Lrx/Subscriber;
.source "JoinObserver1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/joins/JoinObserver1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InnerObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/JoinObserver1;


# direct methods
.method private constructor <init>(Lrx/joins/JoinObserver1;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    iput-object p1, p0, Lrx/joins/JoinObserver1$InnerObserver;->this$0:Lrx/joins/JoinObserver1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/joins/JoinObserver1;
    .param p2, "x1"    # Lrx/joins/JoinObserver1$1;

    .prologue
    .line 99
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    invoke-direct {p0, p1}, Lrx/joins/JoinObserver1$InnerObserver;-><init>(Lrx/joins/JoinObserver1;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 127
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 99
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/joins/JoinObserver1$InnerObserver;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/joins/JoinObserver1$InnerObserver;, "Lrx/joins/JoinObserver1<TT;>.InnerObserver;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v1, p0, Lrx/joins/JoinObserver1$InnerObserver;->this$0:Lrx/joins/JoinObserver1;

    invoke-static {v1}, Lrx/joins/JoinObserver1;->access$100(Lrx/joins/JoinObserver1;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lrx/joins/JoinObserver1$InnerObserver;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {p1}, Lrx/Notification;->isOnError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lrx/joins/JoinObserver1$InnerObserver;->this$0:Lrx/joins/JoinObserver1;

    invoke-static {v1}, Lrx/joins/JoinObserver1;->access$200(Lrx/joins/JoinObserver1;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-interface {v1, v3}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 107
    monitor-exit v2

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lrx/joins/JoinObserver1$InnerObserver;->this$0:Lrx/joins/JoinObserver1;

    invoke-static {v1}, Lrx/joins/JoinObserver1;->access$300(Lrx/joins/JoinObserver1;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lrx/joins/JoinObserver1$InnerObserver;->this$0:Lrx/joins/JoinObserver1;

    invoke-static {v3}, Lrx/joins/JoinObserver1;->access$400(Lrx/joins/JoinObserver1;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/ActivePlan0;

    .line 113
    .local v0, "a":Lrx/joins/ActivePlan0;
    invoke-virtual {v0}, Lrx/joins/ActivePlan0;->match()V

    goto :goto_1

    .line 116
    .end local v0    # "a":Lrx/joins/ActivePlan0;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
