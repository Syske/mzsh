.class public Lcom/tencent/bugly/proguard/ap;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ap$a;
    }
.end annotation


# static fields
.field private static e:Lcom/tencent/bugly/proguard/ap;


# instance fields
.field public a:Lcom/tencent/bugly/proguard/ao;

.field public b:J

.field public c:J

.field public d:Z

.field private final f:Lcom/tencent/bugly/proguard/aj;

.field private final g:Landroid/content/Context;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:[B

.field private n:J

.field private o:[B

.field private p:J

.field private q:Ljava/lang/String;

.field private r:J

.field private final s:Ljava/lang/Object;

.field private t:Z

.field private final u:Ljava/lang/Object;

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/proguard/ap;->e:Lcom/tencent/bugly/proguard/ap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->h:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 89
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    .line 95
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ap;->l:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ap;->m:[B

    .line 100
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->n:J

    .line 106
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    .line 108
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->p:J

    .line 110
    iput-object v1, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    .line 112
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->s:Ljava/lang/Object;

    .line 118
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    .line 125
    iput v2, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    .line 128
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    .line 129
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    .line 137
    :try_start_0
    const-string v0, "android.util.Base64"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDP9x32s5pPtZBXzJBz2GWM/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sbTvVO2+RvW0PH01IdaBxc/"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fB6fbHZocC9T3nl1+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "J5eAFjIRVuV8vHDky7Qo82Mnh0PVvcZIEQvMMVKU8dsMQopxgsOs2gkSHJwgWdinKNS8CmWobo6pFwPUW11lMv714jAUZRq2GBOqiO2vQI6iwIDAQAB"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->l:Ljava/lang/String;

    .line 152
    :cond_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    const-string v0, "[UploadManager] Error: Can not find Base64 class, will not use stronger security way to upload"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    iput-boolean v2, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/tencent/bugly/proguard/ap;
    .locals 2

    .prologue
    .line 165
    const-class v0, Lcom/tencent/bugly/proguard/ap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/proguard/ap;->e:Lcom/tencent/bugly/proguard/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ap;
    .locals 2

    .prologue
    .line 158
    const-class v1, Lcom/tencent/bugly/proguard/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/proguard/ap;->e:Lcom/tencent/bugly/proguard/ap;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/tencent/bugly/proguard/ap;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/proguard/ap;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/proguard/ap;->e:Lcom/tencent/bugly/proguard/ap;

    .line 161
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/ap;->e:Lcom/tencent/bugly/proguard/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ap;I)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ap;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ap;Ljava/lang/Runnable;J)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;J)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 800
    if-nez p1, :cond_0

    .line 801
    const-string v0, "[UploadManager] Upload task should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 825
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v0, "[UploadManager] Execute synchronized upload task (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 805
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 804
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 806
    const-string v0, "BUGLY_SYNC_UPLOAD"

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    .line 807
    if-nez v0, :cond_1

    .line 808
    const-string v0, "[UploadManager] Failed to start a thread to execute synchronized upload task, add it to queue."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 811
    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_0

    .line 815
    :cond_1
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    const-string v1, "[UploadManager] Failed to join upload synchronized task with message: %s. Add it to queue."

    new-array v2, v4, [Ljava/lang/Object;

    .line 819
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 817
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 821
    invoke-direct {p0, p1, v4}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    .line 823
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/ap;->c(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Runnable;ZZJ)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 838
    const-string v0, "[UploadManager] Initialize security context now (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 839
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 838
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 840
    if-eqz p3, :cond_1

    .line 841
    new-instance v0, Lcom/tencent/bugly/proguard/ap$a;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/ap$a;-><init>(Lcom/tencent/bugly/proguard/ap;Landroid/content/Context;Ljava/lang/Runnable;J)V

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;J)V

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    .line 847
    new-instance v0, Lcom/tencent/bugly/proguard/ap$a;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/tencent/bugly/proguard/ap$a;-><init>(Lcom/tencent/bugly/proguard/ap;Landroid/content/Context;)V

    .line 848
    const-string v1, "[UploadManager] Create and start a new thread to execute a task of initializing security context: %s"

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "BUGLY_ASYNC_UPLOAD"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 851
    const-string v1, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 852
    const-string v1, "[UploadManager] Failed to start a thread to execute task of initializing security context, try to post it into thread pool."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 855
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v1

    .line 856
    if-eqz v1, :cond_2

    .line 857
    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 859
    :cond_2
    const-string v0, "[UploadManager] Asynchronous thread pool is unavailable now, try next time."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 862
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 864
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    .line 865
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ap;Z)Z
    .locals 0

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    return p1
.end method

.method private a(Ljava/lang/Runnable;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 770
    if-nez p1, :cond_0

    .line 771
    const-string v1, "[UploadManager] Upload task should not be null"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 789
    :goto_0
    return v0

    .line 775
    :cond_0
    :try_start_0
    const-string v2, "[UploadManager] Add upload task to queue (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 776
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 775
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 778
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    if-eqz p2, :cond_1

    .line 781
    :try_start_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 785
    :goto_1
    monitor-exit v3

    move v0, v1

    .line 786
    goto :goto_0

    .line 783
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 785
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 787
    :catch_0
    move-exception v2

    .line 788
    const-string v3, "[UploadManager] Failed to add upload task to queue: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/proguard/ap;[B)[B
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/bugly/proguard/ap;)I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    return v0
.end method

.method private b(Ljava/lang/Runnable;ZZJ)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 880
    if-nez p1, :cond_0

    .line 881
    const-string v0, "[UploadManager] Upload task should not be null"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 883
    :cond_0
    const-string v0, "[UploadManager] Add upload task (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 884
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 883
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 886
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 888
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ap;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 890
    const-string v0, "[UploadManager] Sucessfully got session ID, try to execute upload task now (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    .line 892
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 890
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 893
    if-eqz p3, :cond_1

    .line 894
    invoke-direct {p0, p1, p4, p5}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;J)V

    .line 923
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    .line 898
    invoke-direct {p0, v3}, Lcom/tencent/bugly/proguard/ap;->c(I)V

    goto :goto_0

    .line 904
    :cond_2
    const-string v0, "[UploadManager] Session ID is expired, drop it (pid=%d | tid=%d)"

    new-array v1, v5, [Ljava/lang/Object;

    .line 905
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 904
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {p0, v3}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    .line 910
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 912
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    if-eqz v0, :cond_4

    .line 914
    invoke-direct {p0, p1, p2}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    .line 915
    monitor-exit v1

    goto :goto_0

    .line 920
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 918
    :cond_4
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    .line 920
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 922
    invoke-direct/range {p0 .. p5}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;ZZJ)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 630
    if-gez p1, :cond_1

    .line 631
    const-string v0, "[UploadManager] Number of task to execute should >= 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v4

    .line 638
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 639
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 642
    iget-object v7, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    monitor-enter v7

    .line 643
    :try_start_0
    const-string v0, "[UploadManager] Try to poll all upload task need and put them into temp queue (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 645
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v3

    .line 643
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 646
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v1

    .line 647
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 648
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 649
    const-string v0, "[UploadManager] There is no upload task in queue."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 650
    monitor-exit v7

    goto :goto_0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 652
    :cond_2
    if-nez p1, :cond_9

    .line 653
    add-int v3, v1, v0

    move p1, v1

    .line 662
    :goto_1
    if-eqz v4, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lcom/tencent/bugly/proguard/ar;->c()Z

    move-result v1

    if-nez v1, :cond_10

    :cond_3
    move v1, v2

    :goto_2
    move v3, v2

    .line 667
    :goto_3
    if-ge v3, p1, :cond_4

    .line 668
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 669
    if-nez v0, :cond_b

    :cond_4
    move v3, v2

    .line 681
    :goto_4
    if-ge v3, v1, :cond_5

    .line 682
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 683
    if-nez v0, :cond_c

    .line 694
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 695
    if-lez p1, :cond_6

    .line 696
    const-string v0, "[UploadManager] Execute urgent upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v3, v13, [Ljava/lang/Object;

    .line 698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v12

    .line 696
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_6
    move v3, v2

    .line 700
    :goto_5
    if-ge v3, p1, :cond_7

    .line 701
    invoke-virtual {v5}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 702
    if-nez v0, :cond_d

    .line 739
    :cond_7
    if-lez v1, :cond_8

    .line 740
    const-string v0, "[UploadManager] Execute upload tasks of queue which has %d tasks (pid=%d | tid=%d)"

    new-array v3, v13, [Ljava/lang/Object;

    .line 742
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v11

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v12

    .line 740
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 746
    :cond_8
    if-eqz v4, :cond_0

    .line 747
    new-instance v0, Lcom/tencent/bugly/proguard/ap$2;

    invoke-direct {v0, p0, v1, v6}, Lcom/tencent/bugly/proguard/ap$2;-><init>(Lcom/tencent/bugly/proguard/ap;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 654
    :cond_9
    if-ge p1, v1, :cond_a

    move v0, v2

    .line 657
    goto/16 :goto_1

    .line 658
    :cond_a
    add-int v3, v1, v0

    if-ge p1, v3, :cond_11

    .line 660
    sub-int v0, p1, v1

    move p1, v1

    goto/16 :goto_1

    .line 673
    :cond_b
    :try_start_2
    invoke-virtual {v5, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 674
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->i:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :goto_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_3

    .line 675
    :catch_0
    move-exception v0

    .line 676
    :try_start_3
    const-string v8, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 676
    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 687
    :cond_c
    :try_start_4
    invoke-virtual {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 688
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->j:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_4

    .line 689
    :catch_1
    move-exception v0

    .line 690
    :try_start_5
    const-string v8, "[UploadManager] Failed to add upload task to temp urgent queue: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 691
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v10

    .line 690
    invoke-static {v8, v9}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_7

    .line 705
    :cond_d
    iget-object v7, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    monitor-enter v7

    .line 707
    :try_start_6
    iget v8, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    if-lt v8, v12, :cond_e

    .line 709
    if-eqz v4, :cond_e

    .line 710
    invoke-virtual {v4, v0}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 711
    monitor-exit v7

    .line 700
    :goto_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_5

    .line 715
    :cond_e
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 716
    const-string v7, "[UploadManager] Create and start a new thread to execute a upload task: %s"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "BUGLY_ASYNC_UPLOAD"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 718
    new-instance v7, Lcom/tencent/bugly/proguard/ap$1;

    invoke-direct {v7, p0, v0}, Lcom/tencent/bugly/proguard/ap$1;-><init>(Lcom/tencent/bugly/proguard/ap;Ljava/lang/Runnable;)V

    const-string v8, "BUGLY_ASYNC_UPLOAD"

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 728
    iget-object v7, p0, Lcom/tencent/bugly/proguard/ap;->k:Ljava/lang/Object;

    monitor-enter v7

    .line 730
    :try_start_7
    iget v0, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/ap;->v:I

    .line 731
    monitor-exit v7

    goto :goto_8

    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 715
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 734
    :cond_f
    const-string v7, "[UploadManager] Failed to start a thread to execute asynchronous upload task, will try again next time."

    new-array v8, v2, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 736
    invoke-direct {p0, v0, v11}, Lcom/tencent/bugly/proguard/ap;->a(Ljava/lang/Runnable;Z)Z

    goto :goto_8

    :cond_10
    move v1, v0

    goto/16 :goto_2

    :cond_11
    move p1, v1

    goto/16 :goto_1
.end method

.method private c()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 444
    const-string v1, "[UploadManager] Drop security info of database (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 445
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 444
    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 447
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v1

    .line 448
    if-nez v1, :cond_0

    .line 449
    const-string v1, "[UploadManager] Failed to get Database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 457
    :goto_0
    return v0

    .line 453
    :cond_0
    const/16 v2, 0x22b

    const-string v3, "security_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;Lcom/tencent/bugly/proguard/ai;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 456
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/bugly/proguard/ap;)Z
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ap;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    return-object v0
.end method

.method private d()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 467
    const-string v0, "[UploadManager] Record security info to database (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 468
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 467
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 470
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 471
    if-nez v0, :cond_0

    .line 472
    const-string v0, "[UploadManager] Failed to get database"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 512
    :goto_0
    return v0

    .line 475
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->p:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    .line 486
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->p:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    :goto_1
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 493
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :goto_2
    const-string v1, "#"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    .line 500
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :goto_3
    const/16 v1, 0x22b

    const-string v2, "security_info"

    .line 505
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 504
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;Z)Z

    move v0, v7

    .line 506
    goto :goto_0

    .line 480
    :cond_1
    const-string v0, "[UploadManager] AES key is null, will not record"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v6

    .line 481
    goto :goto_0

    .line 488
    :cond_2
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 507
    :catch_0
    move-exception v0

    .line 509
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    .line 511
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ap;->c()Z

    move v0, v6

    .line 512
    goto :goto_0

    .line 495
    :cond_3
    :try_start_1
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 502
    :cond_4
    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method static synthetic e(Lcom/tencent/bugly/proguard/ap;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    return-object v0
.end method

.method private e()Z
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 522
    const-string v0, "[UploadManager] Load security info from database (pid=%d | tid=%d)"

    new-array v3, v3, [Ljava/lang/Object;

    .line 523
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 522
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 525
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    .line 527
    const-string v0, "[UploadManager] Failed to get database"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 580
    :goto_0
    return v0

    .line 532
    :cond_0
    const/16 v3, 0x22b

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/proguard/aj;->a(ILcom/tencent/bugly/proguard/ai;Z)Ljava/util/Map;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_4

    const-string v3, "security_info"

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 534
    new-instance v3, Ljava/lang/String;

    const-string v4, "security_info"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 535
    const-string v0, "#"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 536
    array-length v0, v4

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    .line 537
    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    if-nez v0, :cond_6

    .line 539
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v4, v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    .line 546
    :goto_1
    if-nez v0, :cond_1

    const/4 v3, 0x1

    :try_start_2
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    if-nez v3, :cond_1

    .line 548
    const/4 v3, 0x1

    :try_start_3
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/ap;->p:J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 555
    :cond_1
    :goto_2
    if-nez v0, :cond_2

    const/4 v3, 0x2

    :try_start_4
    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x2

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 556
    const/4 v3, 0x2

    aget-object v3, v4, v3

    iput-object v3, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    .line 558
    :cond_2
    if-nez v0, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    aget-object v3, v4, v3

    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    move-result v3

    if-nez v3, :cond_3

    .line 560
    const/4 v3, 0x3

    :try_start_5
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 572
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 573
    :try_start_6
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ap;->c()Z

    :cond_4
    move v0, v2

    .line 576
    goto/16 :goto_0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 543
    goto :goto_1

    .line 549
    :catch_1
    move-exception v0

    .line 551
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 552
    goto :goto_2

    .line 561
    :catch_2
    move-exception v0

    .line 563
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move v0, v2

    .line 565
    goto :goto_3

    .line 568
    :cond_5
    const-string v0, "SecurityInfo = %s, Strings.length = %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    array-length v4, v4

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v3

    .line 568
    invoke-static {v0, v5}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    move v0, v2

    .line 570
    goto :goto_3

    .line 577
    :catch_3
    move-exception v0

    .line 579
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move v0, v1

    .line 580
    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public declared-synchronized a(I)J
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 385
    monitor-enter p0

    const-wide/16 v2, 0x0

    .line 386
    if-ltz p1, :cond_4

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 388
    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 413
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 391
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/aj;->a(I)Ljava/util/List;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 393
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_3

    .line 395
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 396
    iget-wide v6, v0, Lcom/tencent/bugly/proguard/al;->e:J

    cmp-long v1, v6, v2

    if-lez v1, :cond_5

    .line 397
    iget-wide v0, v0, Lcom/tencent/bugly/proguard/al;->e:J

    :goto_2
    move-wide v2, v0

    .line 399
    goto :goto_1

    .line 400
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/proguard/aj;->b(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 403
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 404
    iget-wide v2, v0, Lcom/tencent/bugly/proguard/al;->e:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 411
    :cond_4
    const-string v0, "[UploadManager] Unknown upload ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_2
.end method

.method public a(Z)J
    .locals 11

    .prologue
    const/4 v2, 0x3

    const/4 v10, 0x0

    .line 279
    const-wide/16 v4, 0x0

    .line 280
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->b()J

    move-result-wide v6

    .line 281
    if-eqz p1, :cond_2

    const/4 v0, 0x5

    move v1, v0

    .line 283
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(I)Ljava/util/List;

    move-result-object v3

    .line 284
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 286
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/al;

    .line 287
    iget-wide v8, v0, Lcom/tencent/bugly/proguard/al;->e:J

    cmp-long v6, v8, v6

    if-ltz v6, :cond_0

    .line 288
    iget-object v6, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    invoke-static {v6}, Lcom/tencent/bugly/proguard/au;->c([B)J

    move-result-wide v4

    .line 289
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v0, v3}, Lcom/tencent/bugly/proguard/aj;->a(Ljava/util/List;)V

    .line 298
    :cond_1
    const-string v0, "[UploadManager] Local network consume: %d KB"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v6, 0x400

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v10

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 299
    if-ne v1, v2, :cond_3

    .line 300
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->b:J

    .line 304
    :goto_2
    return-wide v4

    :cond_2
    move v1, v2

    .line 281
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 302
    :cond_3
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->c:J

    goto :goto_2
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;IIZLjava/util/Map;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/ao;",
            "IIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/aq;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    const/4 v11, 0x0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/tencent/bugly/proguard/aq;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;ZIIZLjava/util/Map;)V

    .line 231
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move/from16 v4, p9

    invoke-direct/range {v2 .. v7}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;JZ)V
    .locals 11

    .prologue
    .line 183
    :try_start_0
    new-instance v0, Lcom/tencent/bugly/proguard/aq;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/tencent/bugly/proguard/aq;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;ZZ)V

    .line 186
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, v0

    move-wide/from16 v6, p7

    invoke-direct/range {v2 .. v7}, Lcom/tencent/bugly/proguard/ap;->b(Ljava/lang/Runnable;ZZJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;ZLjava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/ao;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/ap;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;IIZLjava/util/Map;)V

    .line 255
    return-void
.end method

.method public declared-synchronized a(IJ)V
    .locals 4

    .prologue
    .line 364
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    new-instance v0, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 367
    iput p1, v0, Lcom/tencent/bugly/proguard/al;->b:I

    .line 368
    iput-wide p2, v0, Lcom/tencent/bugly/proguard/al;->e:J

    .line 369
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    .line 370
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    .line 371
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/tencent/bugly/proguard/al;->g:[B

    .line 372
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/aj;->b(I)V

    .line 373
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/al;)Z

    .line 374
    const-string v0, "[UploadManager] Uploading(ID:%d) time: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 375
    invoke-static {p2, p3}, Lcom/tencent/bugly/proguard/au;->a(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 374
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    monitor-exit p0

    return-void

    .line 377
    :cond_0
    :try_start_1
    const-string v0, "[UploadManager] Unknown uploading ID: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILcom/tencent/bugly/proguard/bi;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;JZ)V
    .locals 12

    .prologue
    .line 207
    iget v3, p2, Lcom/tencent/bugly/proguard/bi;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/bi;)[B

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v1 .. v10}, Lcom/tencent/bugly/proguard/ap;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;JZ)V

    .line 209
    return-void
.end method

.method public a(ILcom/tencent/bugly/proguard/bi;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;Z)V
    .locals 11

    .prologue
    .line 269
    iget v2, p2, Lcom/tencent/bugly/proguard/bi;->g:I

    invoke-static {p2}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/bi;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/ap;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;IIZLjava/util/Map;)V

    .line 271
    return-void
.end method

.method public a(ILcom/tencent/bugly/proguard/bj;)V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 932
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->d:Z

    if-nez v0, :cond_0

    .line 1022
    :goto_0
    return-void

    .line 937
    :cond_0
    if-ne p1, v4, :cond_3

    .line 939
    const-string v0, "[UploadManager] Session ID is invalid, will clear security context (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 941
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    .line 939
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 942
    invoke-virtual {p0, v1}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    .line 1013
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    monitor-enter v1

    .line 1015
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    if-eqz v0, :cond_2

    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    .line 1019
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->g:Landroid/content/Context;

    const-string v2, "security_info"

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/au;->b(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1021
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 944
    :cond_3
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ap;->u:Ljava/lang/Object;

    monitor-enter v3

    .line 946
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ap;->t:Z

    if-nez v0, :cond_4

    .line 948
    monitor-exit v3

    goto :goto_0

    .line 950
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 951
    if-eqz p2, :cond_9

    .line 952
    const-string v0, "[UploadManager] Record security context (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 953
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 952
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 956
    :try_start_3
    iget-object v3, p2, Lcom/tencent/bugly/proguard/bj;->h:Ljava/util/Map;

    .line 957
    if-eqz v3, :cond_6

    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "S2"

    .line 958
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 960
    iget-wide v4, p2, Lcom/tencent/bugly/proguard/bj;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->n:J

    .line 961
    const-string v0, "[UploadManager] Time lag of server is: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/ap;->n:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 962
    const-string v0, "S1"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    .line 963
    const-string v0, "[UploadManager] Session ID from server is: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 964
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-lez v0, :cond_8

    .line 966
    :try_start_4
    const-string v0, "S2"

    .line 967
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    .line 968
    const-string v0, "[UploadManager] Session expired time from server is: %d(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    .line 970
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 971
    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 968
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 972
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    .line 973
    const-string v0, "[UploadManager] Session expired time from server is less than 1 second, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 976
    const-wide/32 v4, 0xf731400

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 984
    :cond_5
    :goto_2
    :try_start_5
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ap;->d()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 991
    :goto_3
    const/4 v1, 0x0

    :try_start_6
    invoke-direct {p0, v1}, Lcom/tencent/bugly/proguard/ap;->c(I)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 1001
    :goto_4
    if-eqz v0, :cond_1

    .line 1003
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    goto/16 :goto_1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    :try_start_7
    const-string v0, "[UploadManager] Session expired time is invalid, will set to default value"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 981
    const-wide/32 v4, 0xf731400

    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 997
    :catch_1
    move-exception v0

    .line 999
    :goto_5
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    :cond_6
    :goto_6
    move v0, v1

    goto :goto_4

    .line 988
    :cond_7
    :try_start_8
    const-string v0, "[UploadManager] Failed to record database"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_3

    .line 993
    :cond_8
    const-string v0, "[UploadManager] Session ID from server is invalid, try next time"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    .line 1006
    :cond_9
    const-string v0, "[UploadManager] Fail to init security context and clear local info (pid=%d | tid=%d)"

    new-array v3, v4, [Ljava/lang/Object;

    .line 1008
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1006
    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1010
    invoke-virtual {p0, v2}, Lcom/tencent/bugly/proguard/ap;->b(Z)V

    goto/16 :goto_1

    .line 997
    :catch_2
    move-exception v1

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_5
.end method

.method protected declared-synchronized a(JZ)V
    .locals 7

    .prologue
    .line 342
    monitor-enter p0

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    .line 344
    :goto_0
    :try_start_0
    new-instance v1, Lcom/tencent/bugly/proguard/al;

    invoke-direct {v1}, Lcom/tencent/bugly/proguard/al;-><init>()V

    .line 345
    iput v0, v1, Lcom/tencent/bugly/proguard/al;->b:I

    .line 346
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->b()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/bugly/proguard/al;->e:J

    .line 347
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->c:Ljava/lang/String;

    .line 348
    const-string v2, ""

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->d:Ljava/lang/String;

    .line 349
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/au;->c(J)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/al;->g:[B

    .line 350
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/proguard/aj;->b(I)V

    .line 351
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->f:Lcom/tencent/bugly/proguard/aj;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/aj;->a(Lcom/tencent/bugly/proguard/al;)Z

    .line 352
    if-eqz p3, :cond_1

    .line 353
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ap;->c:J

    .line 357
    :goto_1
    const-string v0, "[UploadManager] Network total consume: %d KB"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v4, 0x400

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 355
    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ap;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1188
    if-nez p1, :cond_0

    .line 1224
    :goto_0
    return v0

    .line 1191
    :cond_0
    const-string v2, "[UploadManager] Integrate security to HTTP headers (pid=%d | tid=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1192
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1191
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1194
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1196
    const-string v0, "secureSessionId"

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 1197
    goto :goto_0

    .line 1199
    :cond_1
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x8

    const/16 v3, 0x80

    if-eq v2, v3, :cond_3

    .line 1200
    :cond_2
    const-string v1, "[UploadManager] AES key is invalid"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1203
    :cond_3
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->m:[B

    if-nez v2, :cond_4

    .line 1205
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->l:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/proguard/ap;->m:[B

    .line 1206
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->m:[B

    if-nez v2, :cond_4

    .line 1207
    const-string v1, "[UploadManager] Failed to decode RSA public key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ap;->m:[B

    invoke-static {v1, v2, v3}, Lcom/tencent/bugly/proguard/au;->b(I[B[B)[B

    move-result-object v2

    .line 1213
    if-nez v2, :cond_5

    .line 1214
    const-string v1, "[UploadManager] Failed to encrypt AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1218
    :cond_5
    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 1219
    if-nez v2, :cond_6

    .line 1220
    const-string v1, "[UploadManager] Failed to encode AES key"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 1223
    :cond_6
    const-string v0, "raKey"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 1224
    goto :goto_0
.end method

.method public a([B)[B
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1156
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 1157
    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1158
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1157
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1159
    const/4 v0, 0x0

    .line 1162
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    invoke-static {v4, p1, v0}, Lcom/tencent/bugly/proguard/au;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 5

    .prologue
    .line 611
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ap;->s:Ljava/lang/Object;

    monitor-enter v1

    .line 612
    :try_start_0
    const-string v0, "[UploadManager] Clear security context (pid=%d | tid=%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 613
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 612
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    .line 615
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    .line 616
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    .line 617
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    if-eqz p1, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ap;->c()Z

    .line 622
    :cond_0
    return-void

    .line 617
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected b()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ap;->q:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 593
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->n:J

    add-long/2addr v2, v4

    .line 594
    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_2

    .line 595
    const-string v4, "[UploadManager] Session ID expired time from server is: %d(%s), but now is: %d(%s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    .line 597
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v0

    new-instance v6, Ljava/util/Date;

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/ap;->r:J

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 598
    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 595
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 601
    goto :goto_0
.end method

.method public b(I)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 423
    sget-boolean v2, Lcom/tencent/bugly/b;->c:Z

    if-eqz v2, :cond_1

    .line 424
    const-string v2, "Uploading frequency will not be checked if SDK is in debug mode."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/tencent/bugly/proguard/ap;->a(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 428
    const-string v4, "[UploadManager] Time interval is %d seconds since last uploading(ID: %d)."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    .line 429
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    .line 428
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 430
    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 431
    const-string v2, "[UploadManager] Data only be uploaded once in %d seconds."

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x1e

    .line 432
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    .line 431
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    .line 433
    goto :goto_0
.end method

.method public b([B)[B
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 1172
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    const/16 v1, 0x80

    if-eq v0, v1, :cond_1

    .line 1173
    :cond_0
    const-string v0, "[UploadManager] AES key is invalid (pid=%d | tid=%d)"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1174
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1173
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 1175
    const/4 v0, 0x0

    .line 1178
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ap;->o:[B

    invoke-static {v2, p1, v0}, Lcom/tencent/bugly/proguard/au;->a(I[B[B)[B

    move-result-object v0

    goto :goto_0
.end method
