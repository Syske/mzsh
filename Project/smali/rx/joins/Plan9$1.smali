.class Lrx/joins/Plan9$1;
.super Ljava/lang/Object;
.source "Plan9.java"

# interfaces
.implements Lrx/functions/Action9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/joins/Plan9;->activate(Ljava/util/Map;Lrx/Observer;Lrx/functions/Action1;)Lrx/joins/ActivePlan0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action9",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/joins/Plan9;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/joins/Plan9;Lrx/Observer;)V
    .locals 0
    .param p1, "this$0"    # Lrx/joins/Plan9;

    .prologue
    .line 58
    .local p0, "this":Lrx/joins/Plan9$1;, "Lrx/joins/Plan9.1;"
    iput-object p1, p0, Lrx/joins/Plan9$1;->this$0:Lrx/joins/Plan9;

    iput-object p2, p0, Lrx/joins/Plan9$1;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/joins/Plan9$1;, "Lrx/joins/Plan9.1;"
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    .local p9, "t9":Ljava/lang/Object;, "TT9;"
    :try_start_0
    iget-object v0, p0, Lrx/joins/Plan9$1;->this$0:Lrx/joins/Plan9;

    iget-object v0, v0, Lrx/joins/Plan9;->selector:Lrx/functions/Func9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lrx/functions/Func9;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 68
    .local v10, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lrx/joins/Plan9$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v10}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 69
    .end local v10    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v11

    .line 65
    .local v11, "t":Ljava/lang/Throwable;
    iget-object v0, p0, Lrx/joins/Plan9$1;->val$observer:Lrx/Observer;

    invoke-interface {v0, v11}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
