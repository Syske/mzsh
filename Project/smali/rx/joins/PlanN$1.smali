.class Lrx/joins/PlanN$1;
.super Ljava/lang/Object;
.source "PlanN.java"

# interfaces
.implements Lrx/functions/ActionN;


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

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/PlanN;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/PlanN;

    .prologue
    .line 52
    .local p0, "this":Lrx/joins/PlanN$1;, "Lrx/joins/PlanN.1;"
    iput-object p1, p0, Lrx/joins/PlanN$1;->this$0:Lrx/joins/PlanN;

    iput-object p2, p0, Lrx/joins/PlanN$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .locals 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 57
    .local p0, "this":Lrx/joins/PlanN$1;, "Lrx/joins/PlanN.1;"
    :try_start_0
    iget-object v2, p0, Lrx/joins/PlanN$1;->this$0:Lrx/joins/PlanN;

    iget-object v2, v2, Lrx/joins/PlanN;->selector:Lrx/functions/FuncN;

    invoke-interface {v2, p1}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
    .local v0, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lrx/joins/PlanN$1;->val$observer:Lrx/Observer;

    invoke-interface {v2, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 63
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lrx/joins/PlanN$1;->val$observer:Lrx/Observer;

    invoke-interface {v2, v1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
