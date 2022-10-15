.class public final Lrx/math/operators/OperatorSum;
.super Ljava/lang/Object;
.source "OperatorSum.java"


# static fields
.field private static final ACCUM_DOUBLE:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCUM_FLOAT:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCUM_INT:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACCUM_LONG:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lrx/math/operators/OperatorSum$1;

    invoke-direct {v0}, Lrx/math/operators/OperatorSum$1;-><init>()V

    sput-object v0, Lrx/math/operators/OperatorSum;->ACCUM_INT:Lrx/functions/Func2;

    .line 70
    new-instance v0, Lrx/math/operators/OperatorSum$2;

    invoke-direct {v0}, Lrx/math/operators/OperatorSum$2;-><init>()V

    sput-object v0, Lrx/math/operators/OperatorSum;->ACCUM_LONG:Lrx/functions/Func2;

    .line 77
    new-instance v0, Lrx/math/operators/OperatorSum$3;

    invoke-direct {v0}, Lrx/math/operators/OperatorSum$3;-><init>()V

    sput-object v0, Lrx/math/operators/OperatorSum;->ACCUM_FLOAT:Lrx/functions/Func2;

    .line 84
    new-instance v0, Lrx/math/operators/OperatorSum$4;

    invoke-direct {v0}, Lrx/math/operators/OperatorSum$4;-><init>()V

    sput-object v0, Lrx/math/operators/OperatorSum;->ACCUM_DOUBLE:Lrx/functions/Func2;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sumAtLeastOneDoubles(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Double;>;"
    sget-object v0, Lrx/math/operators/OperatorSum;->ACCUM_DOUBLE:Lrx/functions/Func2;

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumAtLeastOneFloats(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Float;>;"
    sget-object v0, Lrx/math/operators/OperatorSum;->ACCUM_FLOAT:Lrx/functions/Func2;

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumAtLeastOneIntegers(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Integer;>;"
    sget-object v0, Lrx/math/operators/OperatorSum;->ACCUM_INT:Lrx/functions/Func2;

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumAtLeastOneLongs(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Long;>;"
    sget-object v0, Lrx/math/operators/OperatorSum;->ACCUM_LONG:Lrx/functions/Func2;

    invoke-virtual {p0, v0}, Lrx/Observable;->reduce(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumDoubles(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Double;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sget-object v1, Lrx/math/operators/OperatorSum;->ACCUM_DOUBLE:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumFloats(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    sget-object v1, Lrx/math/operators/OperatorSum;->ACCUM_FLOAT:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumIntegers(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/math/operators/OperatorSum;->ACCUM_INT:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static sumLongs(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/math/operators/OperatorSum;->ACCUM_LONG:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
