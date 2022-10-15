.class public final Lrx/joins/Pattern6;
.super Ljava/lang/Object;
.source "Pattern6.java"

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
        "T5:",
        "Ljava/lang/Object;",
        "T6:",
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

.field private final o5:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT5;>;"
        }
    .end annotation
.end field

.field private final o6:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT6;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
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
            "<TT4;>;",
            "Lrx/Observable",
            "<TT5;>;",
            "Lrx/Observable",
            "<TT6;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    .local p5, "o5":Lrx/Observable;, "Lrx/Observable<TT5;>;"
    .local p6, "o6":Lrx/Observable;, "Lrx/Observable<TT6;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lrx/joins/Pattern6;->o1:Lrx/Observable;

    .line 41
    iput-object p2, p0, Lrx/joins/Pattern6;->o2:Lrx/Observable;

    .line 42
    iput-object p3, p0, Lrx/joins/Pattern6;->o3:Lrx/Observable;

    .line 43
    iput-object p4, p0, Lrx/joins/Pattern6;->o4:Lrx/Observable;

    .line 44
    iput-object p5, p0, Lrx/joins/Pattern6;->o5:Lrx/Observable;

    .line 45
    iput-object p6, p0, Lrx/joins/Pattern6;->o6:Lrx/Observable;

    .line 46
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern7;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T7:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT7;>;)",
            "Lrx/joins/Pattern7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT7;>;"
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 83
    :cond_0
    new-instance v0, Lrx/joins/Pattern7;

    iget-object v1, p0, Lrx/joins/Pattern6;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern6;->o2:Lrx/Observable;

    iget-object v3, p0, Lrx/joins/Pattern6;->o3:Lrx/Observable;

    iget-object v4, p0, Lrx/joins/Pattern6;->o4:Lrx/Observable;

    iget-object v5, p0, Lrx/joins/Pattern6;->o5:Lrx/Observable;

    iget-object v6, p0, Lrx/joins/Pattern6;->o6:Lrx/Observable;

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lrx/joins/Pattern7;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

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
    .line 49
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o1:Lrx/Observable;

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
    .line 53
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o2:Lrx/Observable;

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
    .line 57
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o3:Lrx/Observable;

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
    .line 61
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o4:Lrx/Observable;

    return-object v0
.end method

.method o5()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT5;>;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o5:Lrx/Observable;

    return-object v0
.end method

.method o6()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT6;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    iget-object v0, p0, Lrx/joins/Pattern6;->o6:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func6;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func6",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/joins/Pattern6;, "Lrx/joins/Pattern6<TT1;TT2;TT3;TT4;TT5;TT6;>;"
    .local p1, "selector":Lrx/functions/Func6;, "Lrx/functions/Func6<TT1;TT2;TT3;TT4;TT5;TT6;TR;>;"
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 99
    :cond_0
    new-instance v0, Lrx/joins/Plan6;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan6;-><init>(Lrx/joins/Pattern6;Lrx/functions/Func6;)V

    return-object v0
.end method
