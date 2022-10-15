.class final Lrx/joins/JoinObserver1;
.super Lrx/Subscriber;
.source "JoinObserver1.java"

# interfaces
.implements Lrx/joins/JoinObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/joins/JoinObserver1$1;,
        Lrx/joins/JoinObserver1$InnerObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<TT;>;>;",
        "Lrx/joins/JoinObserver;"
    }
.end annotation


# instance fields
.field private final activePlans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/joins/ActivePlan0;",
            ">;"
        }
    .end annotation
.end field

.field private gate:Ljava/lang/Object;

.field private final onError:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final safeObserver:Lrx/observers/SafeSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SafeSubscriber",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final source:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    .local p1, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lrx/joins/JoinObserver1;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    iput-object p1, p0, Lrx/joins/JoinObserver1;->source:Lrx/Observable;

    .line 44
    iput-object p2, p0, Lrx/joins/JoinObserver1;->onError:Lrx/functions/Action1;

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lrx/joins/JoinObserver1;->queue:Ljava/util/Queue;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/joins/JoinObserver1;->activePlans:Ljava/util/List;

    .line 47
    new-instance v0, Lrx/observers/SafeSubscriber;

    new-instance v1, Lrx/joins/JoinObserver1$InnerObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lrx/joins/JoinObserver1$InnerObserver;-><init>(Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1$1;)V

    invoke-direct {v0, v1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    iput-object v0, p0, Lrx/joins/JoinObserver1;->safeObserver:Lrx/observers/SafeSubscriber;

    .line 49
    iget-object v0, p0, Lrx/joins/JoinObserver1;->safeObserver:Lrx/observers/SafeSubscriber;

    invoke-virtual {p0, v0}, Lrx/joins/JoinObserver1;->add(Lrx/Subscription;)V

    .line 50
    return-void
.end method

.method static synthetic access$100(Lrx/joins/JoinObserver1;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lrx/joins/JoinObserver1;

    .prologue
    .line 33
    iget-object v0, p0, Lrx/joins/JoinObserver1;->gate:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lrx/joins/JoinObserver1;)Lrx/functions/Action1;
    .locals 1
    .param p0, "x0"    # Lrx/joins/JoinObserver1;

    .prologue
    .line 33
    iget-object v0, p0, Lrx/joins/JoinObserver1;->onError:Lrx/functions/Action1;

    return-object v0
.end method

.method static synthetic access$300(Lrx/joins/JoinObserver1;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lrx/joins/JoinObserver1;

    .prologue
    .line 33
    iget-object v0, p0, Lrx/joins/JoinObserver1;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$400(Lrx/joins/JoinObserver1;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lrx/joins/JoinObserver1;

    .prologue
    .line 33
    iget-object v0, p0, Lrx/joins/JoinObserver1;->activePlans:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addActivePlan(Lrx/joins/ActivePlan0;)V
    .locals 1
    .param p1, "activePlan"    # Lrx/joins/ActivePlan0;

    .prologue
    .line 57
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->activePlans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public dequeue()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 88
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->safeObserver:Lrx/observers/SafeSubscriber;

    invoke-virtual {v0}, Lrx/observers/SafeSubscriber;->onCompleted()V

    .line 89
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->safeObserver:Lrx/observers/SafeSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    check-cast p1, Lrx/Notification;

    invoke-virtual {p0, p1}, Lrx/joins/JoinObserver1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    .local p1, "args":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->safeObserver:Lrx/observers/SafeSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SafeSubscriber;->onNext(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public queue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->queue:Ljava/util/Queue;

    return-object v0
.end method

.method removeActivePlan(Lrx/joins/ActivePlan0;)V
    .locals 1
    .param p1, "activePlan"    # Lrx/joins/ActivePlan0;

    .prologue
    .line 92
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->activePlans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lrx/joins/JoinObserver1;->activePlans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lrx/joins/JoinObserver1;->unsubscribe()V

    .line 96
    :cond_0
    return-void
.end method

.method public subscribe(Ljava/lang/Object;)V
    .locals 3
    .param p1, "gate"    # Ljava/lang/Object;

    .prologue
    .line 62
    .local p0, "this":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    iget-object v0, p0, Lrx/joins/JoinObserver1;->subscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iput-object p1, p0, Lrx/joins/JoinObserver1;->gate:Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lrx/joins/JoinObserver1;->source:Lrx/Observable;

    invoke-virtual {v0}, Lrx/Observable;->materialize()Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 68
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can only be subscribed to once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
