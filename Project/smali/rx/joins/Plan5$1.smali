.class Lrx/joins/Plan5$1;
.super Ljava/lang/Object;
.source "Plan5.java"

# interfaces
.implements Lrx/functions/Action5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan5;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action5",
        "<TT1;TT2;TT3;TT4;TT5;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/Plan5;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/Plan5;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/Plan5;

    .prologue
    .line 54
    .local p0, "this":Lrx/joins/Plan5$1;, "Lrx/joins/Plan5.1;"
    iput-object p1, p0, Lrx/joins/Plan5$1;->this$0:Lrx/joins/Plan5;

    iput-object p2, p0, Lrx/joins/Plan5$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/joins/Plan5$1;, "Lrx/joins/Plan5.1;"
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    :try_start_0
    iget-object v0, p0, Lrx/joins/Plan5$1;->this$0:Lrx/joins/Plan5;

    iget-object v0, v0, Lrx/joins/Plan5;->selector:Lrx/functions/Func5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lrx/functions/Func5;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 64
    .local v6, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/joins/Plan5$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v6}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 65
    .end local v6    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v7

    .line 61
    .local v7, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lrx/joins/Plan5$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v7}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
