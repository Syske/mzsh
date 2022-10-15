.class public Lrx/observables/MathObservable;
.super Ljava/lang/Object;
.source "MathObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static INDENTITY:Lrx/functions/Func1;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lrx/observables/MathObservable$1;

    invoke-direct {v0}, Lrx/observables/MathObservable$1;-><init>()V

    sput-object v0, Lrx/observables/MathObservable;->INDENTITY:Lrx/functions/Func1;

    return-void
.end method

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
    .line 33
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    .line 35
    return-void
.end method

.method public static final averageDouble(Lrx/Observable;)Lrx/Observable;
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
    .line 66
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Double;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageDouble;

    invoke-static {}, Lrx/observables/MathObservable;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/math/operators/OperatorAverageDouble;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final averageFloat(Lrx/Observable;)Lrx/Observable;
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
    .line 82
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Float;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageFloat;

    invoke-static {}, Lrx/observables/MathObservable;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/math/operators/OperatorAverageFloat;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final averageInteger(Lrx/Observable;)Lrx/Observable;
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
    .line 100
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Integer;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageInteger;

    invoke-static {}, Lrx/observables/MathObservable;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/math/operators/OperatorAverageInteger;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final averageLong(Lrx/Observable;)Lrx/Observable;
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
    .line 116
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Long;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageLong;

    invoke-static {}, Lrx/observables/MathObservable;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/math/operators/OperatorAverageLong;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lrx/Observable;)Lrx/observables/MathObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/observables/MathObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/observables/MathObservable;

    invoke-direct {v0, p0}, Lrx/observables/MathObservable;-><init>(Lrx/Observable;)V

    return-object v0
.end method

.method private static identity()Lrx/functions/Func1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/functions/Func1",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 50
    sget-object v0, Lrx/observables/MathObservable;->INDENTITY:Lrx/functions/Func1;

    return-object v0
.end method

.method public static final max(Lrx/Observable;)Lrx/Observable;
    .locals 1
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
    .line 135
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorMinMax;->max(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final min(Lrx/Observable;)Lrx/Observable;
    .locals 1
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
    .line 152
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorMinMax;->min(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sumDouble(Lrx/Observable;)Lrx/Observable;
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
    .line 168
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Double;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorSum;->sumDoubles(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sumFloat(Lrx/Observable;)Lrx/Observable;
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
    .line 184
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Float;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorSum;->sumFloats(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sumInteger(Lrx/Observable;)Lrx/Observable;
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
    .line 200
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorSum;->sumIntegers(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sumLong(Lrx/Observable;)Lrx/Observable;
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
    .line 216
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<Ljava/lang/Long;>;"
    invoke-static {p0}, Lrx/math/operators/OperatorSum;->sumLongs(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final averageDouble(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Double;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Double;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    new-instance v1, Lrx/math/operators/OperatorAverageDouble;

    invoke-direct {v1, p1}, Lrx/math/operators/OperatorAverageDouble;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final averageFloat(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Float;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Float;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    new-instance v1, Lrx/math/operators/OperatorAverageFloat;

    invoke-direct {v1, p1}, Lrx/math/operators/OperatorAverageFloat;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final averageInteger(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    new-instance v1, Lrx/math/operators/OperatorAverageInteger;

    invoke-direct {v1, p1}, Lrx/math/operators/OperatorAverageInteger;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final averageLong(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Long;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    new-instance v1, Lrx/math/operators/OperatorAverageLong;

    invoke-direct {v1, p1}, Lrx/math/operators/OperatorAverageLong;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final max(Ljava/util/Comparator;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/math/operators/OperatorMinMax;->max(Lrx/Observable;Ljava/util/Comparator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final min(Ljava/util/Comparator;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-static {v0, p1}, Lrx/math/operators/OperatorMinMax;->min(Lrx/Observable;Ljava/util/Comparator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sumDouble(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Double;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Double;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/math/operators/OperatorSum;->sumAtLeastOneDoubles(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sumFloat(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Float;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Float;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/math/operators/OperatorSum;->sumAtLeastOneFloats(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sumInteger(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/math/operators/OperatorSum;->sumAtLeastOneIntegers(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sumLong(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p0, "this":Lrx/observables/MathObservable;, "Lrx/observables/MathObservable<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Long;>;"
    iget-object v0, p0, Lrx/observables/MathObservable;->o:Lrx/Observable;

    invoke-virtual {v0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/math/operators/OperatorSum;->sumAtLeastOneLongs(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
