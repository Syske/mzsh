.class public final Lrx/math/operators/OperatorAverageFloat;
.super Ljava/lang/Object;
.source "OperatorAverageFloat.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/math/operators/OperatorAverageFloat$AverageObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/lang/Float;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final valueExtractor:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat;, "Lrx/math/operators/OperatorAverageFloat<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Float;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/math/operators/OperatorAverageFloat;->valueExtractor:Lrx/functions/Func1;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat;, "Lrx/math/operators/OperatorAverageFloat<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/math/operators/OperatorAverageFloat;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Float;",
            ">;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/math/operators/OperatorAverageFloat;, "Lrx/math/operators/OperatorAverageFloat<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Float;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageFloat$AverageObserver;

    invoke-direct {v0, p0, p1}, Lrx/math/operators/OperatorAverageFloat$AverageObserver;-><init>(Lrx/math/operators/OperatorAverageFloat;Lrx/Subscriber;)V

    return-object v0
.end method
