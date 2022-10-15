.class public final Lrx/observables/JoinObservable;
.super Ljava/lang/Object;
.source "JoinObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final o:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, "this":Lrx/observables/JoinObservable;, "Lrx/observables/JoinObservable<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lrx/observables/JoinObservable;->o:Lrx/Observable;

    .line 20
    return-void
.end method

.method public static from(Lrx/Observable;)Lrx/observables/JoinObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/observables/JoinObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/observables/JoinObservable;

    invoke-direct {v0, p0}, Lrx/observables/JoinObservable;-><init>(Lrx/Observable;)V

    return-object v0
.end method

.method public static final when(Ljava/lang/Iterable;)Lrx/observables/JoinObservable;
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
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "plans":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/joins/Plan0<TR;>;>;"
    if-nez p0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plans"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-static {p0}, Lrx/joins/operators/OperatorJoinPatterns;->when(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p4, "p5":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p4, "p5":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p5, "p6":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p4, "p5":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p5, "p6":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p6, "p7":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p4, "p5":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p5, "p6":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p6, "p7":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p7, "p8":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final when(Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "p1":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p1, "p2":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p2, "p3":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p3, "p4":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p4, "p5":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p5, "p6":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p6, "p7":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p7, "p8":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    .local p8, "p9":Lrx/joins/Plan0;, "Lrx/joins/Plan0<TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/joins/Plan0;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs when([Lrx/joins/Plan0;)Lrx/observables/JoinObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/joins/Plan0",
            "<TR;>;)",
            "Lrx/observables/JoinObservable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "plans":[Lrx/joins/Plan0;, "[Lrx/joins/Plan0<TR;>;"
    invoke-static {p0}, Lrx/joins/operators/OperatorJoinPatterns;->when([Lrx/joins/Plan0;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/observables/JoinObservable;->from(Lrx/Observable;)Lrx/observables/JoinObservable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final and(Lrx/Observable;)Lrx/joins/Pattern2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT2;>;)",
            "Lrx/joins/Pattern2",
            "<TT;TT2;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/observables/JoinObservable;, "Lrx/observables/JoinObservable<TT;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    iget-object v0, p0, Lrx/observables/JoinObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/joins/operators/OperatorJoinPatterns;->and(Lrx/Observable;Lrx/Observable;)Lrx/joins/Pattern2;

    move-result-object v0

    return-object v0
.end method

.method public final then(Lrx/functions/Func1;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<TT;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lrx/observables/JoinObservable;, "Lrx/observables/JoinObservable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;TR;>;"
    iget-object v0, p0, Lrx/observables/JoinObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/joins/operators/OperatorJoinPatterns;->then(Lrx/Observable;Lrx/functions/Func1;)Lrx/joins/Plan0;

    move-result-object v0

    return-object v0
.end method

.method public toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "this":Lrx/observables/JoinObservable;, "Lrx/observables/JoinObservable<TT;>;"
    iget-object v0, p0, Lrx/observables/JoinObservable;->o:Lrx/Observable;

    return-object v0
.end method
