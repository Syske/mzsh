.class public Lrx/Single;
.super Ljava/lang/Object;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Single$Transformer;,
        Lrx/Single$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lrx/annotations/Beta;
.end annotation


# static fields
.field private static final hook:Lrx/plugins/RxJavaObservableExecutionHook;


# instance fields
.field final onSubscribe:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-void
.end method

.method private constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 118
    return-void
.end method

.method protected constructor <init>(Lrx/Single$OnSubscribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Lrx/Single$1;

    invoke-direct {v0, p0, p1}, Lrx/Single$1;-><init>(Lrx/Single;Lrx/Single$OnSubscribe;)V

    iput-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 114
    return-void
.end method

.method static synthetic access$000()Lrx/plugins/RxJavaObservableExecutionHook;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v0
.end method

.method private static asObservable(Lrx/Single;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, "t":Lrx/Single;, "Lrx/Single<TT;>;"
    iget-object v0, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 394
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 456
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Lrx/Single$OnSubscribe;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$OnSubscribe",
            "<TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "f":Lrx/Single$OnSubscribe;, "Lrx/Single$OnSubscribe<TT;>;"
    new-instance v0, Lrx/Single;

    invoke-direct {v0, p0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public static defer(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lrx/Single",
            "<TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1984
    .local p0, "singleFactory":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<Lrx/Single<TT;>;>;"
    new-instance v0, Lrx/Single$13;

    invoke-direct {v0, p0}, Lrx/Single$13;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final error(Ljava/lang/Throwable;)Lrx/Single;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Lrx/Single$3;

    invoke-direct {v0, p0}, Lrx/Single$3;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 546
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Single;
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 605
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    invoke-virtual {v0, p1}, Lrx/Single;->subscribeOn(Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static fromCallable(Ljava/util/concurrent/Callable;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 627
    .local p0, "func":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lrx/Single$4;

    invoke-direct {v0, p0}, Lrx/Single$4;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Single$5;

    invoke-direct {v0, p0}, Lrx/Single$5;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method private final lift(Lrx/Observable$Operator;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lrx/Single;

    new-instance v1, Lrx/Single$2;

    invoke-direct {v1, p0, p1}, Lrx/Single$2;-><init>(Lrx/Single;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 760
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 787
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 816
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 847
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 880
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;)Lrx/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 952
    .local p0, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p1, "t2":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p2, "t3":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p3, "t4":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p4, "t5":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p5, "t6":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p6, "t7":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p7, "t8":Lrx/Single;, "Lrx/Single<+TT;>;"
    .local p8, "t9":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v1

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v3

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v4

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v6

    invoke-static/range {p7 .. p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v7

    invoke-static/range {p8 .. p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v8

    invoke-static/range {v0 .. v8}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Single;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+",
            "Lrx/Single",
            "<+TT;>;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, "source":Lrx/Single;, "Lrx/Single<+Lrx/Single<+TT;>;>;"
    new-instance v0, Lrx/Single$6;

    invoke-direct {v0, p0}, Lrx/Single$6;-><init>(Lrx/Single;)V

    invoke-static {v0}, Lrx/Single;->create(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method private final nest()Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func9;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/Single",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1204
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "o5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "o6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "o7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "o8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "o9":Lrx/Single;, "Lrx/Single<+TT9;>;"
    .local p9, "zipFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {p8}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p9}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func9;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func8;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/Single",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1165
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "o5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "o6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "o7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "o8":Lrx/Single;, "Lrx/Single<+TT8;>;"
    .local p8, "zipFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p7}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p8}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func8;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func7;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/Single",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "o5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "o6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "o7":Lrx/Single;, "Lrx/Single<+TT7;>;"
    .local p7, "zipFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-static {p6}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p7}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func7;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func6;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/Single",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1093
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "o5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "o6":Lrx/Single;, "Lrx/Single<+TT6;>;"
    .local p6, "zipFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-static {p5}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p6}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func6;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func5;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/Single",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1060
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "o5":Lrx/Single;, "Lrx/Single<+TT5;>;"
    .local p5, "zipFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p5}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func5;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func4;)Lrx/Single;
    .locals 3
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
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/Single",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "o4":Lrx/Single;, "Lrx/Single<+TT4;>;"
    .local p4, "zipFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p4}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func4;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/Single;Lrx/functions/Func3;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/Single",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1002
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "o3":Lrx/Single;, "Lrx/Single<+TT3;>;"
    .local p3, "zipFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p3}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func3;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT1;>;",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 976
    .local p0, "o1":Lrx/Single;, "Lrx/Single<+TT1;>;"
    .local p1, "o2":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lrx/Single;->just(Ljava/lang/Object;)Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func2;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compose(Lrx/Single$Transformer;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single$Transformer",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "transformer":Lrx/Single$Transformer;, "Lrx/Single$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/Single$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Single;

    return-object v0
.end method

.method public final concatWith(Lrx/Single;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1224
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->concat(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1955
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Single;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1933
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelay;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDelay;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-direct {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1860
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/Single$11;

    invoke-direct {v0, p0, p1}, Lrx/Single$11;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 1875
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-direct {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final doOnSuccess(Lrx/functions/Action1;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1894
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/Single$12;

    invoke-direct {v0, p0, p1}, Lrx/Single$12;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    .line 1909
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-direct {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v1

    return-object v1
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Single",
            "<+TR;>;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Single<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->merge(Lrx/Single;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapObservable(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1263
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Single;->map(Lrx/functions/Func1;)Lrx/Single;

    move-result-object v0

    invoke-static {v0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMap;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMap;-><init>(Lrx/functions/Func1;)V

    invoke-direct {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Single;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1303
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "t1":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {p0, p1}, Lrx/Single;->merge(Lrx/Single;Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Single;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1325
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/Scheduler;)V

    invoke-direct {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1355
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorReturn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnErrorReturn;-><init>(Lrx/functions/Func1;)V

    invoke-direct {p0, v0}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .locals 1

    .prologue
    .line 1371
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    new-instance v0, Lrx/Single$7;

    invoke-direct {v0, p0}, Lrx/Single$7;-><init>(Lrx/Single;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1644
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "te":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lrx/Single$10;

    invoke-direct {v0, p0, p1}, Lrx/Single$10;-><init>(Lrx/Single;Lrx/SingleSubscriber;)V

    .line 1662
    .local v0, "s":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 1663
    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 1664
    return-object v0
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1557
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-nez p1, :cond_0

    .line 1558
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1560
    :cond_0
    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    if-nez v4, :cond_1

    .line 1561
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1569
    :cond_1
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1576
    instance-of v4, p1, Lrx/observers/SafeSubscriber;

    if-nez v4, :cond_2

    .line 1578
    new-instance v3, Lrx/observers/SafeSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object p1, v3

    .line 1586
    .end local v3    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_2
    :try_start_0
    iget-object v4, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v4, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1587
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1604
    :goto_0
    return-object v4

    .line 1588
    :catch_0
    move-exception v0

    .line 1590
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1593
    :try_start_1
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1604
    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v4

    goto :goto_0

    .line 1594
    :catch_1
    move-exception v1

    .line 1595
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1598
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1600
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v4, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1602
    throw v2
.end method

.method public final subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_0

    .line 1409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_0
    new-instance v0, Lrx/Single$8;

    invoke-direct {v0, p0, p1}, Lrx/Single$8;-><init>(Lrx/Single;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 1452
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "onSuccess":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 1453
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onSuccess can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1455
    :cond_0
    if-nez p2, :cond_1

    .line 1456
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :cond_1
    new-instance v0, Lrx/Single$9;

    invoke-direct {v0, p0, p2, p1}, Lrx/Single$9;-><init>(Lrx/Single;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Single;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Single;
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1684
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-direct {p0}, Lrx/Single;->nest()Lrx/Single;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorSubscribeOn;-><init>(Lrx/Scheduler;)V

    invoke-direct {v0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Single;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1718
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Single;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1743
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;)Lrx/Single;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;)",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1767
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Single;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Single;Lrx/Scheduler;)Lrx/Single;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Single",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1793
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p4, "other":Lrx/Single;, "Lrx/Single<+TT;>;"
    if-nez p4, :cond_0

    .line 1794
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-static {v0}, Lrx/Single;->error(Ljava/lang/Throwable;)Lrx/Single;

    move-result-object p4

    .line 1796
    :cond_0
    new-instance v1, Lrx/internal/operators/OperatorTimeout;

    invoke-static {p4}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v5

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V

    invoke-direct {p0, v1}, Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/singles/BlockingSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/singles/BlockingSingle",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1811
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/singles/BlockingSingle;->from(Lrx/Single;)Lrx/singles/BlockingSingle;

    move-result-object v0

    return-object v0
.end method

.method public final toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1695
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    invoke-static {p0}, Lrx/Single;->asObservable(Lrx/Single;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1496
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 1499
    iget-object v3, p0, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v3, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 1500
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :goto_0
    return-void

    .line 1501
    :catch_0
    move-exception v0

    .line 1503
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1506
    :try_start_1
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1507
    :catch_1
    move-exception v1

    .line 1508
    .local v1, "e2":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1511
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1513
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v3, Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1515
    throw v2
.end method

.method public final zipWith(Lrx/Single;Lrx/functions/Func2;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Single",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Single",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 1838
    .local p0, "this":Lrx/Single;, "Lrx/Single<TT;>;"
    .local p1, "other":Lrx/Single;, "Lrx/Single<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/Single;->zip(Lrx/Single;Lrx/Single;Lrx/functions/Func2;)Lrx/Single;

    move-result-object v0

    return-object v0
.end method
