.class public final Lrx/joins/Pattern3;
.super Ljava/lang/Object;
.source "Pattern3.java"

# interfaces
.implements Lrx/joins/Pattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "T3:",
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

.field private final o3:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT3;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/Observable",
            "<TT3;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lrx/joins/Pattern3;->o1:Lrx/Observable;

    .line 32
    iput-object p2, p0, Lrx/joins/Pattern3;->o2:Lrx/Observable;

    .line 33
    iput-object p3, p0, Lrx/joins/Pattern3;->o3:Lrx/Observable;

    .line 34
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T4:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT4;>;)",
            "Lrx/joins/Pattern4",
            "<TT1;TT2;TT3;TT4;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lrx/joins/Pattern4;

    iget-object v1, p0, Lrx/joins/Pattern3;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern3;->o2:Lrx/Observable;

    iget-object v3, p0, Lrx/joins/Pattern3;->o3:Lrx/Observable;

    invoke-direct {v0, v1, v2, v3, p1}, Lrx/joins/Pattern4;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

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
    .line 37
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    iget-object v0, p0, Lrx/joins/Pattern3;->o1:Lrx/Observable;

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
    .line 41
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    iget-object v0, p0, Lrx/joins/Pattern3;->o2:Lrx/Observable;

    return-object v0
.end method

.method o3()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT3;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    iget-object v0, p0, Lrx/joins/Pattern3;->o3:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func3;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func3",
            "<TT1;TT2;TT3;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/joins/Pattern3;, "Lrx/joins/Pattern3<TT1;TT2;TT3;>;"
    .local p1, "selector":Lrx/functions/Func3;, "Lrx/functions/Func3<TT1;TT2;TT3;TR;>;"
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 76
    :cond_0
    new-instance v0, Lrx/joins/Plan3;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan3;-><init>(Lrx/joins/Pattern3;Lrx/functions/Func3;)V

    return-object v0
.end method
