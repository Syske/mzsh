.class Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptimizeWorker"
.end annotation


# instance fields
.field private final callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

.field private final dexFile:Ljava/io/File;

.field private final optimizedDir:Ljava/io/File;

.field private final successCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final waitingLauch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)V
    .locals 0
    .param p1, "dexFile"    # Ljava/io/File;
    .param p2, "optimizedDir"    # Ljava/io/File;
    .param p3, "successCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p4, "lauch"    # Ljava/util/concurrent/CountDownLatch;
    .param p5, "cb"    # Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    .line 110
    iput-object p2, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    .line 111
    iput-object p3, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    iput-object p4, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->waitingLauch:Ljava/util/concurrent/CountDownLatch;

    .line 113
    iput-object p5, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    .line 114
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 120
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->successCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 121
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;->onSuccess(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->waitingLauch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 132
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_1
    const-string v1, "ParallelDexOptimizer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to optimize dex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    if-eqz v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->callback:Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;

    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->dexFile:Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->optimizedDir:Ljava/io/File;

    invoke-interface {v1, v2, v3, v0}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;->onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->waitingLauch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$OptimizeWorker;->waitingLauch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
