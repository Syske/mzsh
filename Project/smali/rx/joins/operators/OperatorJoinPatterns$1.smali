.class final Lrx/joins/operators/OperatorJoinPatterns$1;
.super Ljava/lang/Object;
.source "OperatorJoinPatterns.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/operators/OperatorJoinPatterns;->when(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$plans:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lrx/joins/operators/OperatorJoinPatterns$1;->val$plans:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 85
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/joins/operators/OperatorJoinPatterns$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 90
    .local v2, "gate":Ljava/lang/Object;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "activePlans":Ljava/util/List;, "Ljava/util/List<Lrx/joins/ActivePlan0;>;"
    new-instance v5, Lrx/joins/operators/OperatorJoinPatterns$1$1;

    invoke-direct {v5, p0, p1, v1}, Lrx/joins/operators/OperatorJoinPatterns$1$1;-><init>(Lrx/joins/operators/OperatorJoinPatterns$1;Lrx/Subscriber;Ljava/util/Map;)V

    .line 113
    .local v5, "out":Lrx/Observer;, "Lrx/Observer<TR;>;"
    :try_start_0
    iget-object v8, p0, Lrx/joins/operators/OperatorJoinPatterns$1;->val$plans:Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrx/joins/Plan0;

    .line 114
    .local v6, "plan":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    new-instance v9, Lrx/joins/operators/OperatorJoinPatterns$1$2;

    invoke-direct {v9, p0, v0, v5}, Lrx/joins/operators/OperatorJoinPatterns$1$2;-><init>(Lrx/joins/operators/OperatorJoinPatterns$1;Ljava/util/List;Lrx/Observer;)V

    invoke-virtual {v6, v1, v5, v9}, Lrx/joins/Plan0;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v6    # "plan":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    :catch_0
    move-exception v7

    .line 125
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Lrx/Observable;->error(Ljava/lang/Throwable;)Lrx/Observable;

    move-result-object v8

    invoke-virtual {v8, p1}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 134
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 128
    :cond_1
    new-instance v3, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v3}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    .line 129
    .local v3, "group":Lrx/subscriptions/CompositeSubscription;
    invoke-virtual {p1, v3}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 130
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lrx/joins/JoinObserver;

    .line 131
    .local v4, "jo":Lrx/joins/JoinObserver;
    invoke-interface {v4, v2}, Lrx/joins/JoinObserver;->subscribe(Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v3, v4}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    goto :goto_1
.end method
