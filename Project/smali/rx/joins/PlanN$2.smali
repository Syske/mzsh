.class Lrx/joins/PlanN$2;
.super Ljava/lang/Object;
.source "PlanN.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/PlanN;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/PlanN;

.field final synthetic val$deactivate:Lrx/functions/Action1;

.field final synthetic val$observers:Ljava/util/List;

.field final synthetic val$self:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/joins/PlanN;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Lrx/functions/Action1;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/PlanN;

    .prologue
    .line 65
    .local p0, "this":Lrx/joins/PlanN$2;, "Lrx/joins/PlanN.2;"
    iput-object p1, p0, Lrx/joins/PlanN$2;->this$0:Lrx/joins/PlanN;

    iput-object p2, p0, Lrx/joins/PlanN$2;->val$observers:Ljava/util/List;

    iput-object p3, p0, Lrx/joins/PlanN$2;->val$self:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lrx/joins/PlanN$2;->val$deactivate:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 68
    .local p0, "this":Lrx/joins/PlanN$2;, "Lrx/joins/PlanN.2;"
    iget-object v1, p0, Lrx/joins/PlanN$2;->val$observers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/JoinObserver1;

    .line 69
    .local v0, "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    iget-object v1, p0, Lrx/joins/PlanN$2;->val$self:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/joins/ActivePlan0;

    invoke-virtual {v0, v1}, Lrx/joins/JoinObserver1;->removeActivePlan(Lrx/joins/ActivePlan0;)V

    goto :goto_0

    .line 71
    .end local v0    # "jo":Lrx/joins/JoinObserver1;, "Lrx/joins/JoinObserver1<+Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lrx/joins/PlanN$2;->val$deactivate:Lrx/functions/Action1;

    iget-object v2, p0, Lrx/joins/PlanN$2;->val$self:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
