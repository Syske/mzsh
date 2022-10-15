.class public final Lrx/joins/Pattern1;
.super Ljava/lang/Object;
.source "Pattern1.java"

# interfaces
.implements Lrx/joins/Pattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
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


# direct methods
.method public constructor <init>(Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT1;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lrx/joins/Pattern1;, "Lrx/joins/Pattern1<TT1;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lrx/joins/Pattern1;->o1:Lrx/Observable;

    .line 29
    return-void
.end method


# virtual methods
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
    .line 32
    .local p0, "this":Lrx/joins/Pattern1;, "Lrx/joins/Pattern1<TT1;>;"
    iget-object v0, p0, Lrx/joins/Pattern1;->o1:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func1;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<TT1;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lrx/joins/Pattern1;, "Lrx/joins/Pattern1<TT1;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT1;TR;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lrx/joins/Plan1;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan1;-><init>(Lrx/joins/Pattern1;Lrx/functions/Func1;)V

    return-object v0
.end method
