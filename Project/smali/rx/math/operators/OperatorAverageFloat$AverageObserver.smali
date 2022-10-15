.class final Lrx/math/operators/OperatorAverageFloat$AverageObserver;
.super Lrx/Subscriber;
.source "OperatorAverageFloat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/math/operators/OperatorAverageFloat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AverageObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field count:I

.field sum:F

.field final synthetic this$0:Lrx/math/operators/OperatorAverageFloat;


# direct methods
.method public constructor <init>(Lrx/math/operators/OperatorAverageFloat;Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat$AverageObserver;, "Lrx/math/operators/OperatorAverageFloat<TT;>.AverageObserver;"
    .local p2, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Float;>;"
    iput-object p1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->this$0:Lrx/math/operators/OperatorAverageFloat;

    .line 48
    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 49
    iput-object p2, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    .line 50
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 65
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat$AverageObserver;, "Lrx/math/operators/OperatorAverageFloat<TT;>.AverageObserver;"
    iget v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->count:I

    if-lez v1, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    iget v2, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->sum:F

    iget v3, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->count:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    iget-object v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 76
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Sequence contains no elements"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat$AverageObserver;, "Lrx/math/operators/OperatorAverageFloat<TT;>.AverageObserver;"
    iget-object v0, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat$AverageObserver;, "Lrx/math/operators/OperatorAverageFloat<TT;>.AverageObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget v1, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->sum:F

    iget-object v0, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->this$0:Lrx/math/operators/OperatorAverageFloat;

    iget-object v0, v0, Lrx/math/operators/OperatorAverageFloat;->valueExtractor:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    iput v0, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->sum:F

    .line 55
    iget v0, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;->count:I

    .line 56
    return-void
.end method
