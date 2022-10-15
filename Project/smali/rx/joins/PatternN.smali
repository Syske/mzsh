.class public final Lrx/joins/PatternN;
.super Ljava/lang/Object;
.source "PatternN.java"

# interfaces
.implements Lrx/joins/Pattern;


# instance fields
.field private final observables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "observables":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;>;",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "observables":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+Ljava/lang/Object;>;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/PatternN;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lrx/joins/PatternN;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_0
    new-instance v0, Lrx/joins/PatternN;

    iget-object v1, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    invoke-direct {v0, v1, p1}, Lrx/joins/PatternN;-><init>(Ljava/util/List;Lrx/Observable;)V

    return-object v0
.end method

.method get(I)Lrx/Observable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

.method size()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lrx/joins/PatternN;->observables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public then(Lrx/functions/FuncN;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/FuncN",
            "<TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "selector":Lrx/functions/FuncN;, "Lrx/functions/FuncN<TR;>;"
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 82
    :cond_0
    new-instance v0, Lrx/joins/PlanN;

    invoke-direct {v0, p0, p1}, Lrx/joins/PlanN;-><init>(Lrx/joins/PatternN;Lrx/functions/FuncN;)V

    return-object v0
.end method
