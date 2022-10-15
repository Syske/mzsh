.class final Lrx/math/operators/OperatorMinMax$4;
.super Ljava/lang/Object;
.source "OperatorMinMax.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;J)Lrx/Observable;
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
.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$flag:J

.field final synthetic val$selector:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Lrx/functions/Func1;J)V
    .locals 1

    .prologue
    .line 126
    iput-object p1, p0, Lrx/math/operators/OperatorMinMax$4;->val$comparator:Ljava/util/Comparator;

    iput-object p2, p0, Lrx/math/operators/OperatorMinMax$4;->val$selector:Lrx/functions/Func1;

    iput-wide p3, p0, Lrx/math/operators/OperatorMinMax$4;->val$flag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 126
    check-cast p1, Ljava/util/List;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/math/operators/OperatorMinMax$4;->call(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

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
    .line 130
    .local p1, "acc":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    :goto_0
    return-object p1

    .line 133
    :cond_1
    iget-object v1, p0, Lrx/math/operators/OperatorMinMax$4;->val$comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lrx/math/operators/OperatorMinMax$4;->val$selector:Lrx/functions/Func1;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lrx/math/operators/OperatorMinMax$4;->val$selector:Lrx/functions/Func1;

    invoke-interface {v3, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, "compareResult":I
    if-nez v0, :cond_2

    .line 137
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_2
    iget-wide v2, p0, Lrx/math/operators/OperatorMinMax$4;->val$flag:J

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 140
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
