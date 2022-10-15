.class Lrx/joins/operators/OperatorJoinPatterns$1$2;
.super Ljava/lang/Object;
.source "OperatorJoinPatterns.java"

# interfaces
.implements Lrx/functions/Action1;


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
        "Lrx/functions/Action1",
        "<",
        "Lrx/joins/ActivePlan0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/operators/OperatorJoinPatterns$1;

.field final synthetic val$activePlans:Ljava/util/List;

.field final synthetic val$out:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/operators/OperatorJoinPatterns$1;Ljava/util/List;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/operators/OperatorJoinPatterns$1;

    .prologue
    .line 114
    iput-object p1, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->this$0:Lrx/joins/operators/OperatorJoinPatterns$1;

    iput-object p2, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->val$activePlans:Ljava/util/List;

    iput-object p3, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->val$out:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 114
    check-cast p1, Lrx/joins/ActivePlan0;

    invoke-virtual {p0, p1}, Lrx/joins/operators/OperatorJoinPatterns$1$2;->call(Lrx/joins/ActivePlan0;)V

    return-void
.end method

.method public call(Lrx/joins/ActivePlan0;)V
    .locals 1
    .param p1, "activePlan"    # Lrx/joins/ActivePlan0;

    .prologue
    .line 117
    iget-object v0, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->val$activePlans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->val$activePlans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lrx/joins/operators/OperatorJoinPatterns$1$2;->val$out:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 121
    :cond_0
    return-void
.end method
