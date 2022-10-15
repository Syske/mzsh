.class public Lcom/tencent/bugly/proguard/af;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const-wide/16 v2, -0x1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/af;->a:Ljava/lang/String;

    .line 13
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/af;->b:J

    .line 15
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/af;->c:J

    .line 17
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/af;->d:J

    .line 19
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/af;->e:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/af;->c:J

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/af;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/af;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/af;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(J)V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/af;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(J)V
    .locals 1

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/af;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
