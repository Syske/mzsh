.class Lrx/joins/Plan2$2;
.super Ljava/lang/Object;
.source "Plan2.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan2;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/Plan2;

.field final synthetic val$deactivate:Lrx/functions/Action1;

.field final synthetic val$jo1:Lrx/joins/JoinObserver1;

.field final synthetic val$jo2:Lrx/joins/JoinObserver1;

.field final synthetic val$self:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lrx/joins/Plan2;Ljava/util/concurrent/atomic/AtomicReference;Lrx/joins/JoinObserver1;Lrx/joins/JoinObserver1;Lrx/functions/Action1;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/Plan2;

    .prologue
    .line 62
    .local p0, "this":Lrx/joins/Plan2$2;, "Lrx/joins/Plan2.2;"
    iput-object p1, p0, Lrx/joins/Plan2$2;->this$0:Lrx/joins/Plan2;

    iput-object p2, p0, Lrx/joins/Plan2$2;->val$self:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/joins/Plan2$2;->val$jo1:Lrx/joins/JoinObserver1;

    iput-object p4, p0, Lrx/joins/Plan2$2;->val$jo2:Lrx/joins/JoinObserver1;

    iput-object p5, p0, Lrx/joins/Plan2$2;->val$deactivate:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lrx/joins/Plan2$2;, "Lrx/joins/Plan2.2;"
    iget-object v1, p0, Lrx/joins/Plan2$2;->val$self:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/joins/ActivePlan0;

    .line 66
    .local v0, "ap":Lrx/joins/ActivePlan0;
    iget-object v1, p0, Lrx/joins/Plan2$2;->val$jo1:Lrx/joins/JoinObserver1;

    invoke-virtual {v1, v0}, Lrx/joins/JoinObserver1;->removeActivePlan(Lrx/joins/ActivePlan0;)V

    .line 67
    iget-object v1, p0, Lrx/joins/Plan2$2;->val$jo2:Lrx/joins/JoinObserver1;

    invoke-virtual {v1, v0}, Lrx/joins/JoinObserver1;->removeActivePlan(Lrx/joins/ActivePlan0;)V

    .line 68
    iget-object v1, p0, Lrx/joins/Plan2$2;->val$deactivate:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 69
    return-void
.end method
