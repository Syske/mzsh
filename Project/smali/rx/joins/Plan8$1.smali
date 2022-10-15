.class Lrx/joins/Plan8$1;
.super Ljava/lang/Object;
.source "Plan8.java"

# interfaces
.implements Lrx/functions/Action8;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan8;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action8",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/Plan8;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/Plan8;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/Plan8;

    .prologue
    .line 57
    .local p0, "this":Lrx/joins/Plan8$1;, "Lrx/joins/Plan8.1;"
    iput-object p1, p0, Lrx/joins/Plan8$1;->this$0:Lrx/joins/Plan8;

    iput-object p2, p0, Lrx/joins/Plan8$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lrx/joins/Plan8$1;, "Lrx/joins/Plan8.1;"
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    :try_start_0
    iget-object v0, p0, Lrx/joins/Plan8$1;->this$0:Lrx/joins/Plan8;

    iget-object v0, v0, Lrx/joins/Plan8;->selector:Lrx/functions/Func8;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lrx/functions/Func8;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 67
    .local v9, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/joins/Plan8$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v9}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 68
    .end local v9    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v10

    .line 64
    .local v10, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lrx/joins/Plan8$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v10}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
