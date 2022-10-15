.class final Lrx/math/operators/OperatorMinMax$2;
.super Ljava/lang/Object;
.source "OperatorMinMax.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;Ljava/util/Comparator;J)Lrx/Observable;
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
.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$flag:J


# direct methods
.method constructor <init>(JLjava/util/Comparator;)V
    .locals 1

    .prologue
    .line 87
    iput-wide p1, p0, Lrx/math/operators/OperatorMinMax$2;->val$flag:J

    iput-object p3, p0, Lrx/math/operators/OperatorMinMax$2;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "acc":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-wide v0, p0, Lrx/math/operators/OperatorMinMax$2;->val$flag:J

    iget-object v2, p0, Lrx/math/operators/OperatorMinMax$2;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v2, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 93
    .end local p1    # "acc":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p1

    .restart local p1    # "acc":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object p1, p2

    goto :goto_0
.end method
