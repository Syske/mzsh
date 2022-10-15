.class public abstract Lrx/joins/ActivePlan0;
.super Ljava/lang/Object;
.source "ActivePlan0.java"


# instance fields
.field protected final joinObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lrx/joins/JoinObserver;",
            "Lrx/joins/JoinObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lrx/joins/ActivePlan0;->joinObservers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected addJoinObserver(Lrx/joins/JoinObserver;)V
    .locals 1
    .param p1, "joinObserver"    # Lrx/joins/JoinObserver;

    .prologue
    .line 30
    iget-object v0, p0, Lrx/joins/ActivePlan0;->joinObservers:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method protected dequeue()V
    .locals 3

    .prologue
    .line 34
    iget-object v1, p0, Lrx/joins/ActivePlan0;->joinObservers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/JoinObserver;

    .line 35
    .local v0, "jo":Lrx/joins/JoinObserver;
    invoke-interface {v0}, Lrx/joins/JoinObserver;->dequeue()V

    goto :goto_0

    .line 37
    .end local v0    # "jo":Lrx/joins/JoinObserver;
    :cond_0
    return-void
.end method

.method protected abstract match()V
.end method
