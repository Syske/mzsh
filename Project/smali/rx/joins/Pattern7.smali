.class public final Lrx/joins/Pattern7;
.super Ljava/lang/Object;
.source "Pattern7.java"

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
        "T7:",
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

.field private final o7:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT7;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
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
            "<TT6;>;",
            "Lrx/Observable",
            "<TT7;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    .local p5, "o5":Lrx/Observable;, "Lrx/Observable<TT5;>;"
    .local p6, "o6":Lrx/Observable;, "Lrx/Observable<TT6;>;"
    .local p7, "o7":Lrx/Observable;, "Lrx/Observable<TT7;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lrx/joins/Pattern7;->o1:Lrx/Observable;

    .line 43
    iput-object p2, p0, Lrx/joins/Pattern7;->o2:Lrx/Observable;

    .line 44
    iput-object p3, p0, Lrx/joins/Pattern7;->o3:Lrx/Observable;

    .line 45
    iput-object p4, p0, Lrx/joins/Pattern7;->o4:Lrx/Observable;

    .line 46
    iput-object p5, p0, Lrx/joins/Pattern7;->o5:Lrx/Observable;

    .line 47
    iput-object p6, p0, Lrx/joins/Pattern7;->o6:Lrx/Observable;

    .line 48
    iput-object p7, p0, Lrx/joins/Pattern7;->o7:Lrx/Observable;

    .line 49
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern8;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T8:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT8;>;)",
            "Lrx/joins/Pattern8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT8;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_0
    new-instance v0, Lrx/joins/Pattern8;

    iget-object v1, p0, Lrx/joins/Pattern7;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern7;->o2:Lrx/Observable;

    iget-object v3, p0, Lrx/joins/Pattern7;->o3:Lrx/Observable;

    iget-object v4, p0, Lrx/joins/Pattern7;->o4:Lrx/Observable;

    iget-object v5, p0, Lrx/joins/Pattern7;->o5:Lrx/Observable;

    iget-object v6, p0, Lrx/joins/Pattern7;->o6:Lrx/Observable;

    iget-object v7, p0, Lrx/joins/Pattern7;->o7:Lrx/Observable;

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lrx/joins/Pattern8;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

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
    .line 52
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o1:Lrx/Observable;

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
    .line 56
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o2:Lrx/Observable;

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
    .line 60
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o3:Lrx/Observable;

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
    .line 64
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o4:Lrx/Observable;

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
    .line 68
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o5:Lrx/Observable;

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
    .line 72
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o6:Lrx/Observable;

    return-object v0
.end method

.method o7()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT7;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    iget-object v0, p0, Lrx/joins/Pattern7;->o7:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func7;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func7",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/joins/Pattern7;, "Lrx/joins/Pattern7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;>;"
    .local p1, "selector":Lrx/functions/Func7;, "Lrx/functions/Func7<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TR;>;"
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 106
    :cond_0
    new-instance v0, Lrx/joins/Plan7;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan7;-><init>(Lrx/joins/Pattern7;Lrx/functions/Func7;)V

    return-object v0
.end method
