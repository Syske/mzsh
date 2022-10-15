.class final Lrx/math/operators/OperatorSum$4;
.super Ljava/lang/Object;
.source "OperatorSum.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/math/operators/OperatorSum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4
    .param p1, "accu"    # Ljava/lang/Double;
    .param p2, "next"    # Ljava/lang/Double;

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 84
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Double;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lrx/math/operators/OperatorSum$4;->call(Ljava/lang/Double;Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
