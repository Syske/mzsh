.class public final Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;,
        Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParallelDexOptimizer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized optimizeAll(Ljava/util/Collection;Ljava/io/File;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z
    .locals 3
    .param p1, "optimizedDir"    # Ljava/io/File;
    .param p2, "cb"    # Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "dexFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const-class v1, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 67
    invoke-static {p0, p1, v0, p2}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;->optimizeAllLocked(Ljava/util/Collection;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized optimizeAll([Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z
    .locals 3
    .param p0, "dexFiles"    # [Ljava/io/File;
    .param p1, "optimizedDir"    # Ljava/io/File;
    .param p2, "cb"    # Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    .prologue
    .line 51
    const-class v1, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 52
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1, v0, p2}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;->optimizeAllLocked(Ljava/util/Collection;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static optimizeAllLocked(Ljava/util/Collection;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z
    .locals 11
    .param p1, "optimizedDir"    # Ljava/io/File;
    .param p2, "successCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "cb"    # Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "dexFiles":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    const/4 v6, 0x0

    .line 71
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 72
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v7

    .line 73
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 74
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 75
    new-instance v0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;-><init>(Ljava/io/File;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)V

    .line 76
    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 80
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 81
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 82
    const-string v2, "ParallelDexOptimizer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All dexes are optimized successfully, cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    const/4 v0, 0x1

    .line 92
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 90
    :goto_1
    return v0

    .line 85
    :cond_1
    :try_start_1
    const-string v0, "ParallelDexOptimizer"

    const-string v1, "Dexes optimizing failed, some dexes are not optimized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v0, v6

    .line 86
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    const-string v1, "ParallelDexOptimizer"

    const-string v2, "Dex optimizing was interrupted."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    move v0, v6

    .line 90
    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0
.end method
