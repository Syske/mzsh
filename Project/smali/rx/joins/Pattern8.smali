.class public final Lrx/joins/Pattern8;
.super Ljava/lang/Object;
.source "Pattern8.java"

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
        "T8:",
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

.field private final o8:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT8;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
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
            "<TT7;>;",
            "Lrx/Observable",
            "<TT8;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    .local p5, "o5":Lrx/Observable;, "Lrx/Observable<TT5;>;"
    .local p6, "o6":Lrx/Observable;, "Lrx/Observable<TT6;>;"
    .local p7, "o7":Lrx/Observable;, "Lrx/Observable<TT7;>;"
    .local p8, "o8":Lrx/Observable;, "Lrx/Observable<TT8;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lrx/joins/Pattern8;->o1:Lrx/Observable;

    .line 45
    iput-object p2, p0, Lrx/joins/Pattern8;->o2:Lrx/Observable;

    .line 46
    iput-object p3, p0, Lrx/joins/Pattern8;->o3:Lrx/Observable;

    .line 47
    iput-object p4, p0, Lrx/joins/Pattern8;->o4:Lrx/Observable;

    .line 48
    iput-object p5, p0, Lrx/joins/Pattern8;->o5:Lrx/Observable;

    .line 49
    iput-object p6, p0, Lrx/joins/Pattern8;->o6:Lrx/Observable;

    .line 50
    iput-object p7, p0, Lrx/joins/Pattern8;->o7:Lrx/Observable;

    .line 51
    iput-object p8, p0, Lrx/joins/Pattern8;->o8:Lrx/Observable;

    .line 52
    return-void
.end method


# virtual methods
.method public and(Lrx/Observable;)Lrx/joins/Pattern9;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T9:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT9;>;)",
            "Lrx/joins/Pattern9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TT9;>;"
    if-nez p1, :cond_0

    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 97
    :cond_0
    new-instance v0, Lrx/joins/Pattern9;

    iget-object v1, p0, Lrx/joins/Pattern8;->o1:Lrx/Observable;

    iget-object v2, p0, Lrx/joins/Pattern8;->o2:Lrx/Observable;

    iget-object v3, p0, Lrx/joins/Pattern8;->o3:Lrx/Observable;

    iget-object v4, p0, Lrx/joins/Pattern8;->o4:Lrx/Observable;

    iget-object v5, p0, Lrx/joins/Pattern8;->o5:Lrx/Observable;

    iget-object v6, p0, Lrx/joins/Pattern8;->o6:Lrx/Observable;

    iget-object v7, p0, Lrx/joins/Pattern8;->o7:Lrx/Observable;

    iget-object v8, p0, Lrx/joins/Pattern8;->o8:Lrx/Observable;

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lrx/joins/Pattern9;-><init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V

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
    .line 55
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o1:Lrx/Observable;

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
    .line 59
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o2:Lrx/Observable;

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
    .line 63
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o3:Lrx/Observable;

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
    .line 67
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o4:Lrx/Observable;

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
    .line 71
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o5:Lrx/Observable;

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
    .line 75
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o6:Lrx/Observable;

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
    .line 79
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o7:Lrx/Observable;

    return-object v0
.end method

.method o8()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT8;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    iget-object v0, p0, Lrx/joins/Pattern8;->o8:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func8;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func8",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lrx/joins/Pattern8;, "Lrx/joins/Pattern8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;>;"
    .local p1, "selector":Lrx/functions/Func8;, "Lrx/functions/Func8<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TR;>;"
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lrx/joins/Plan8;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan8;-><init>(Lrx/joins/Pattern8;Lrx/functions/Func8;)V

    return-object v0
.end method
