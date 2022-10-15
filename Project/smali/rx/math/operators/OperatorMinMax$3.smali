.class final Lrx/math/operators/OperatorMinMax$3;
.super Ljava/lang/Object;
.source "OperatorMinMax.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;J)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$flag:J

.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lrx/functions/Func1;J)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lrx/math/operators/OperatorMinMax$3;->val$selector:Lrx/functions/Func1;

    iput-wide p2, p0, Lrx/math/operators/OperatorMinMax$3;->val$flag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/math/operators/OperatorMinMax$3;->call(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "acc":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    :goto_0
    return-object p1

    .line 108
    :cond_1
    iget-object v1, p0, Lrx/math/operators/OperatorMinMax$3;->val$selector:Lrx/functions/Func1;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    iget-object v2, p0, Lrx/math/operators/OperatorMinMax$3;->val$selector:Lrx/functions/Func1;

    invoke-interface {v2, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 110
    .local v0, "compareResult":I
    if-nez v0, :cond_2

    .line 111
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    iget-wide v2, p0, Lrx/math/operators/OperatorMinMax$3;->val$flag:J

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 113
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 114
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
