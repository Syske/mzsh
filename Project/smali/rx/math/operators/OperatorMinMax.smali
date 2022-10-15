.class public final Lrx/math/operators/OperatorMinMax;
.super Ljava/lang/Object;
.source "OperatorMinMax.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static max(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v0, 0x1

    invoke-static {p0, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static max(Lrx/Observable;Ljava/util/Comparator;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;Ljava/util/Comparator;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static maxBy(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable",
            "<-TR;>;>(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static maxBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;",
            "Ljava/util/Comparator",
            "<-TR;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    const-wide/16 v0, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static min(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static min(Lrx/Observable;Ljava/util/Comparator;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMax(Lrx/Observable;Ljava/util/Comparator;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable",
            "<-TR;>;>(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;",
            "Ljava/util/Comparator",
            "<-TR;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lrx/math/operators/OperatorMinMax;->minMaxBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static minMax(Lrx/Observable;J)Lrx/Observable;
    .locals 1
    .param p1, "flag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<-TT;>;>(",
            "Lrx/Observable",
            "<TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/math/operators/OperatorMinMax$1;

    invoke-direct {v0, p1, p2}, Lrx/math/operators/OperatorMinMax$1;-><init>(J)V

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static minMax(Lrx/Observable;Ljava/util/Comparator;J)Lrx/Observable;
    .locals 2
    .param p2, "flag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<-TT;>;J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lrx/math/operators/OperatorMinMax$2;

    invoke-direct {v0, p2, p3, p1}, Lrx/math/operators/OperatorMinMax$2;-><init>(JLjava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static minMaxBy(Lrx/Observable;Lrx/functions/Func1;J)Lrx/Observable;
    .locals 2
    .param p2, "flag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable",
            "<-TR;>;>(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;J)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lrx/math/operators/OperatorMinMax$3;

    invoke-direct {v1, p1, p2, p3}, Lrx/math/operators/OperatorMinMax$3;-><init>(Lrx/functions/Func1;J)V

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private static minMaxBy(Lrx/Observable;Lrx/functions/Func1;Ljava/util/Comparator;J)Lrx/Observable;
    .locals 3
    .param p3, "flag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;",
            "Lrx/functions/Func1",
            "<TT;TR;>;",
            "Ljava/util/Comparator",
            "<-TR;>;J)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lrx/math/operators/OperatorMinMax$4;

    invoke-direct {v1, p2, p1, p3, p4}, Lrx/math/operators/OperatorMinMax$4;-><init>(Ljava/util/Comparator;Lrx/functions/Func1;J)V

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
