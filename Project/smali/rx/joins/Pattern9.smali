.class public final Lrx/joins/Pattern9;
.super Ljava/lang/Object;
.source "Pattern9.java"

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
        "T9:",
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

.field private final o9:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT9;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)V
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
            "<TT8;>;",
            "Lrx/Observable",
            "<TT9;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "o1":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "o2":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "o3":Lrx/Observable;, "Lrx/Observable<TT3;>;"
    .local p4, "o4":Lrx/Observable;, "Lrx/Observable<TT4;>;"
    .local p5, "o5":Lrx/Observable;, "Lrx/Observable<TT5;>;"
    .local p6, "o6":Lrx/Observable;, "Lrx/Observable<TT6;>;"
    .local p7, "o7":Lrx/Observable;, "Lrx/Observable<TT7;>;"
    .local p8, "o8":Lrx/Observable;, "Lrx/Observable<TT8;>;"
    .local p9, "o9":Lrx/Observable;, "Lrx/Observable<TT9;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lrx/joins/Pattern9;->o1:Lrx/Observable;

    .line 50
    iput-object p2, p0, Lrx/joins/Pattern9;->o2:Lrx/Observable;

    .line 51
    iput-object p3, p0, Lrx/joins/Pattern9;->o3:Lrx/Observable;

    .line 52
    iput-object p4, p0, Lrx/joins/Pattern9;->o4:Lrx/Observable;

    .line 53
    iput-object p5, p0, Lrx/joins/Pattern9;->o5:Lrx/Observable;

    .line 54
    iput-object p6, p0, Lrx/joins/Pattern9;->o6:Lrx/Observable;

    .line 55
    iput-object p7, p0, Lrx/joins/Pattern9;->o7:Lrx/Observable;

    .line 56
    iput-object p8, p0, Lrx/joins/Pattern9;->o8:Lrx/Observable;

    .line 57
    iput-object p9, p0, Lrx/joins/Pattern9;->o9:Lrx/Observable;

    .line 58
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
    .line 104
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<+Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lrx/joins/Pattern9;->o1:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lrx/joins/Pattern9;->o2:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lrx/joins/Pattern9;->o3:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lrx/joins/Pattern9;->o4:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lrx/joins/Pattern9;->o5:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lrx/joins/Pattern9;->o6:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lrx/joins/Pattern9;->o7:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lrx/joins/Pattern9;->o8:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lrx/joins/Pattern9;->o9:Lrx/Observable;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lrx/joins/PatternN;

    invoke-direct {v1, v0}, Lrx/joins/PatternN;-><init>(Ljava/util/List;)V

    return-object v1
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
    .line 61
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o1:Lrx/Observable;

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
    .line 65
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o2:Lrx/Observable;

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
    .line 69
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o3:Lrx/Observable;

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
    .line 73
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o4:Lrx/Observable;

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
    .line 77
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o5:Lrx/Observable;

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
    .line 81
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o6:Lrx/Observable;

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
    .line 85
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o7:Lrx/Observable;

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
    .line 89
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o8:Lrx/Observable;

    return-object v0
.end method

.method o9()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT9;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    iget-object v0, p0, Lrx/joins/Pattern9;->o9:Lrx/Observable;

    return-object v0
.end method

.method public then(Lrx/functions/Func9;)Lrx/joins/Plan0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func9",
            "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;)",
            "Lrx/joins/Plan0",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lrx/joins/Pattern9;, "Lrx/joins/Pattern9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;>;"
    .local p1, "selector":Lrx/functions/Func9;, "Lrx/functions/Func9<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    if-nez p1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 134
    :cond_0
    new-instance v0, Lrx/joins/Plan9;

    invoke-direct {v0, p0, p1}, Lrx/joins/Plan9;-><init>(Lrx/joins/Pattern9;Lrx/functions/Func9;)V

    return-object v0
.end method
