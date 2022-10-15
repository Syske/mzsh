.class public Lcom/tencent/bugly/proguard/s;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/beta/download/b;


# static fields
.field public static a:Lcom/tencent/bugly/proguard/s;


# instance fields
.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/beta/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/tencent/bugly/proguard/s;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/s;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 39
    new-instance v0, Lcom/tencent/bugly/proguard/s$1;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/s$1;-><init>(Lcom/tencent/bugly/proguard/s;)V

    .line 48
    const/4 v1, 0x3

    :try_start_0
    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScheduledExecutorService is not available!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "downloadUrl is null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "saveDir is null!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    iget-object v0, p0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/download/DownloadTask;

    goto :goto_0

    .line 72
    :cond_3
    sget-object v1, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/p;->a(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v9

    .line 74
    if-eqz v9, :cond_5

    const-string v1, "_dUrl"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "_sFile"

    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "_sLen"

    .line 75
    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "_tLen"

    .line 76
    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, "_MD5"

    .line 77
    invoke-virtual {v9, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 78
    new-instance v1, Lcom/tencent/bugly/proguard/t;

    const-string v0, "_dUrl"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "_sFile"

    .line 79
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "_sLen"

    .line 80
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v0, "_tLen"

    .line 81
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v0, "_MD5"

    .line 82
    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Lcom/tencent/bugly/proguard/t;-><init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 83
    const-string v0, "_DLTIME"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    const-string v0, "_DLTIME"

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/t;->j:J

    :cond_4
    move-object v0, v1

    .line 88
    :cond_5
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/tencent/bugly/proguard/t;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/bugly/proguard/t;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    const-string v1, "async handler was closed , should not post task!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit p0

    return v0

    .line 103
    :cond_1
    if-nez p1, :cond_2

    .line 104
    :try_start_1
    const-string v1, "async task = null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 107
    :cond_2
    :try_start_2
    const-string v0, "task start %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/tencent/bugly/proguard/s;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 109
    goto :goto_0
.end method
