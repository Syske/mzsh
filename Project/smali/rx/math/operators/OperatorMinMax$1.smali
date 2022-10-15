.class final Lrx/math/operators/OperatorMinMax$1;
.super Ljava/lang/Object;
.source "OperatorMinMax.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;J)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TT;TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$flag:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 74
    iput-wide p1, p0, Lrx/math/operators/OperatorMinMax$1;->val$flag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "acc":Ljava/lang/Comparable;, "TT;"
    .local p2, "value":Ljava/lang/Comparable;, "TT;"
    iget-wide v0, p0, Lrx/math/operators/OperatorMinMax$1;->val$flag:J

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 80
    .end local p1    # "acc":Ljava/lang/Comparable;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "acc":Ljava/lang/Comparable;, "TT;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 74
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/math/operators/OperatorMinMax$1;->call(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
