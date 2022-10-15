.class public abstract Lrx/joins/Plan0;
.super Ljava/lang/Object;
.source "Plan0.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createObserver(Ljava/util/Map;Lrx/Observable;Lrx/functions/Action1;)Lrx/joins/JoinObserver1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/joins/JoinObserver;",
            ">;",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/joins/JoinObserver1",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "externalSubscriptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lrx/joins/JoinObserver;>;"
    .local p1, "observable":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/JoinObserver;

    .line 39
    .local v0, "nonGeneric":Lrx/joins/JoinObserver;
    if-nez v0, :cond_0

    .line 40
    new-instance v1, Lrx/joins/JoinObserver1;

    invoke-direct {v1, p1, p2}, Lrx/joins/JoinObserver1;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 41
    .local v1, "observer":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :goto_0
    return-object v1

    .end local v1    # "observer":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    :cond_0
    move-object v1, v0

    .line 43
    check-cast v1, Lrx/joins/JoinObserver1;

    .restart local v1    # "observer":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<TT;>;"
    goto :goto_0
.end method

.method protected static onErrorFrom(Lrx/Observer;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer",
            "<TT;>;)",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v0, Lrx/joins/Plan0$1;

    invoke-direct {v0, p0}, Lrx/joins/Plan0$1;-><init>(Lrx/Observer;)V

    return-object v0
.end method


# virtual methods
.method public abstract activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lrx/joins/JoinObserver;",
            ">;",
            "Lrx/Observer",
            "<TR;>;",
            "Lrx/functions/Action1",
            "<",
            "Lrx/joins/ActivePlan0;",
            ">;)",
            "Lrx/joins/ActivePlan0;"
        }
    .end annotation
.end method
