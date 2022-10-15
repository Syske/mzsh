.class Lrx/joins/operators/OperatorJoinPatterns$1$1;
.super Ljava/lang/Object;
.source "OperatorJoinPatterns.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/operators/OperatorJoinPatterns$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/operators/OperatorJoinPatterns$1;

.field final synthetic val$externalSubscriptions:Ljava/util/Map;

.field final synthetic val$t1:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/joins/operators/OperatorJoinPatterns$1;Lrx/Subscriber;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/operators/OperatorJoinPatterns$1;

    .prologue
    .line 92
    iput-object p1, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->this$0:Lrx/joins/operators/OperatorJoinPatterns$1;

    iput-object p2, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$t1:Lrx/Subscriber;

    iput-object p3, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$externalSubscriptions:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$t1:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 109
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 100
    iget-object v1, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$externalSubscriptions:Ljava/util/Map;

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

    .line 101
    .local v0, "po":Lrx/joins/JoinObserver;
    invoke-interface {v0}, Lrx/joins/JoinObserver;->unsubscribe()V

    goto :goto_0

    .line 103
    .end local v0    # "po":Lrx/joins/JoinObserver;
    :cond_0
    iget-object v1, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$t1:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "args":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/joins/operators/OperatorJoinPatterns$1$1;->val$t1:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
