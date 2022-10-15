.class public final Lrx/joins/Pattern2;
.super Ljava/lang/Object;
.source "Pattern2.java"

# interfaces
.implements Lrx/joins/Pattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/joins/Pattern;"
    }
.end annotation


# instance fields
.field private final o1:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT1;>;"
        }
    .end annotation
.end field

.field private final o2:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/joins/Pattern2;->o1:Lrx/Observable;

    .line 30
    iput-object p2, p0, Lrx/joins/Pattern2;->o2:Lrx/Observable;

    .line 31
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern3;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T3:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT3;>;)",
            "Lrx/joins/Pattern3",
            "<TT1;TT2;TT3;>;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lrx/joins/Pattern3;

    iget-object v1, p0, Lrx/joins/Pattern2;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern2;->o2:Lrx/Observable;

    invoke-direct {v0, v1, v2, p1}, Lrx/joins/Pattern3;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

    return-object v0
.end method

.method o1()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT1;>;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    iget-object v0, p0, Lrx/joins/Pattern2;->o1:Lrx/Observable;

    return-object v0
.end method

.method o2()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    iget-object v0, p0, Lrx/joins/Pattern2;->o2:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func2;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func2",
            "<TT1;TT2;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/joins/Pattern2;, "Lrx/joins/Pattern2<TT1;TT2;>;"
    .local p1, "selector":Lrx/functions/Func2;, "Lrx/functions/Func2<TT1;TT2;TR;>;"
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Lrx/joins/Plan2;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan2;-><init>(Lrx/joins/Pattern2;Lrx/functions/Func2;)V

    return-object v0
.end method
