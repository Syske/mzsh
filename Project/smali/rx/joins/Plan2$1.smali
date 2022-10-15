.class Lrx/joins/Plan2$1;
.super Ljava/lang/Object;
.source "Plan2.java"

# interfaces
.implements Lrx/functions/Action2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan2;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action2",
        "<TT1;TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/Plan2;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/Plan2;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/Plan2;

    .prologue
    .line 49
    .local p0, "this":Lrx/joins/Plan2$1;, "Lrx/joins/Plan2.1;"
    iput-object p1, p0, Lrx/joins/Plan2$1;->this$0:Lrx/joins/Plan2;

    iput-object p2, p0, Lrx/joins/Plan2$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/joins/Plan2$1;, "Lrx/joins/Plan2.1;"
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    :try_start_0
    iget-object v2, p0, Lrx/joins/Plan2$1;->this$0:Lrx/joins/Plan2;

    iget-object v2, v2, Lrx/joins/Plan2;->selector:Lrx/functions/Func2;

    invoke-interface {v2, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 59
    .local v0, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/joins/Plan2$1;->val$observer:Lrx/Observer;

    invoke-interface {v2, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 60
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/joins/Plan2$1;->val$observer:Lrx/Observer;

    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
