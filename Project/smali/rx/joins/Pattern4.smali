.class public final Lrx/joins/Pattern4;
.super Ljava/lang/Object;
.source "Pattern4.java"

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
        "T4:",
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

.field private final o4:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT4;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/Observable",
            "<TT3;>;",
            "Lrx/Observable",
            "<TT4;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lrx/joins/Pattern4;->o1:Lrx/Observable;

    .line 37
    iput-object p2, p0, Lrx/joins/Pattern4;->o2:Lrx/Observable;

    .line 38
    iput-object p3, p0, Lrx/joins/Pattern4;->o3:Lrx/Observable;

    .line 39
    iput-object p4, p0, Lrx/joins/Pattern4;->o4:Lrx/Observable;

    .line 40
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern5;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T5:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT5;>;)",
            "Lrx/joins/Pattern5",
            "<TT1;TT2;TT3;TT4;TT5;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT5;>;"
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 69
    :cond_0
    new-instance v0, Lrx/joins/Pattern5;

    iget-object v1, p0, Lrx/joins/Pattern4;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern4;->o2:Lrx/Observable;

    iget-object v3, p0, Lrx/joins/Pattern4;->o3:Lrx/Observable;

    iget-object v4, p0, Lrx/joins/Pattern4;->o4:Lrx/Observable;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lrx/joins/Pattern5;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

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
    .line 43
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    iget-object v0, p0, Lrx/joins/Pattern4;->o1:Lrx/Observable;

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
    .line 47
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    iget-object v0, p0, Lrx/joins/Pattern4;->o2:Lrx/Observable;

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
    .line 51
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    iget-object v0, p0, Lrx/joins/Pattern4;->o3:Lrx/Observable;

    return-object v0
.end method

.method o4()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT4;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    iget-object v0, p0, Lrx/joins/Pattern4;->o4:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func4;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func4",
            "<TT1;TT2;TT3;TT4;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/joins/Pattern4;, "Lrx/joins/Pattern4<TT1;TT2;TT3;TT4;>;"
    .local p1, "selector":Lrx/functions/Func4;, "Lrx/functions/Func4<TT1;TT2;TT3;TT4;TR;>;"
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 85
    :cond_0
    new-instance v0, Lrx/joins/Plan4;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan4;-><init>(Lrx/joins/Pattern4;Lrx/functions/Func4;)V

    return-object v0
.end method
