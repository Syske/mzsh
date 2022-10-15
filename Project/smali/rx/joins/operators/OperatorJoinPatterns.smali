.class public final Lrx/joins/operators/OperatorJoinPatterns;
.super Ljava/lang/Object;
.source "OperatorJoinPatterns.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static and(Lrx/Observable;Lrx/Observable;)Lrx/joins/Pattern2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;)",
            "Lrx/joins/Pattern2",
            "<TT1;TT2;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "left":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    if-nez p0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "left"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    if-nez p1, :cond_1

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "right"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance v0, Lrx/joins/Pattern2;

    invoke-direct {v0, p0, p1}, Lrx/joins/Pattern2;-><init>(Lrx/Observable;Lrx/Observable;)V

    return-object v0
.end method

.method public static then(Lrx/Observable;Lrx/functions/Func1;)Lrx/joins/Plan0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/functions/Func1",
            "<TT1;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT1;TR;>;"
    if-nez p0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "source"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-nez p1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "selector"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Lrx/joins/Pattern1;

    invoke-direct {v0, p0}, Lrx/joins/Pattern1;-><init>(Lrx/Observable;)V

    invoke-virtual {v0, p1}, Lrx/joins/Pattern1;->then(Lrx/functions/Func1;)Lrx/joins/Plan0;

    move-result-object v0

    return-object v0
.end method

.method public static when(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/joins/Plan0",
            "<TR;>;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "plans":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/joins/Plan0<TR;>;>;"
    if-nez p0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plans"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lrx/joins/operators/OperatorJoinPatterns$1;

    invoke-direct {v0, p0}, Lrx/joins/operators/OperatorJoinPatterns$1;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "plans":[Lrx/joins/Plan0;, "[Lrx/joins/Plan0<TR;>;"
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plans"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    return-object v0
.end method
