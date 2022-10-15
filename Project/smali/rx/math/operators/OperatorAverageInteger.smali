.class public final Lrx/math/operators/OperatorAverageInteger;
.super Ljava/lang/Object;
.source "OperatorAverageInteger.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/math/operators/OperatorAverageInteger$AverageObserver;
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
        "Ljava/lang/Integer;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final valueExtractor:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Integer;",
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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lrx/math/operators/OperatorAverageInteger;, "Lrx/math/operators/OperatorAverageInteger<TT;>;"
    .local p1, "valueExtractor":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/math/operators/OperatorAverageInteger;->valueExtractor:Lrx/functions/Func1;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lrx/math/operators/OperatorAverageInteger;, "Lrx/math/operators/OperatorAverageInteger<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/math/operators/OperatorAverageInteger;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/math/operators/OperatorAverageInteger;, "Lrx/math/operators/OperatorAverageInteger<TT;>;"
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    new-instance v0, Lrx/math/operators/OperatorAverageInteger$AverageObserver;

    invoke-direct {v0, p0, p1}, Lrx/math/operators/OperatorAverageInteger$AverageObserver;-><init>(Lrx/math/operators/OperatorAverageInteger;Lrx/Subscriber;)V

    return-object v0
.end method
