.class public Lcom/tencent/bugly/proguard/ad$a;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ad$a;->a:J

    .line 505
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->b:J

    .line 507
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->c:J

    .line 509
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ad$a;->d:J

    .line 511
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ad$a;->e:J

    .line 513
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->f:J

    .line 515
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->g:J

    .line 517
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->h:J

    .line 519
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->i:J

    .line 521
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->j:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 524
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->a:J

    return-wide v0
.end method

.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    monitor-exit p0

    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 532
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->d:J

    return-wide v0
.end method

.method public declared-synchronized b(J)V
    .locals 1

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 536
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->e:J

    return-wide v0
.end method

.method public declared-synchronized c(J)V
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    monitor-exit p0

    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 540
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->f:J

    return-wide v0
.end method

.method public declared-synchronized d(J)V
    .locals 1

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 568
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 552
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ad$a;->j:J

    return-wide v0
.end method

.method public declared-synchronized e(J)V
    .locals 1

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(J)V
    .locals 1

    .prologue
    .line 576
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 576
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g(J)V
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    monitor-exit p0

    return-void

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h(J)V
    .locals 1

    .prologue
    .line 584
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i(J)V
    .locals 1

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j(J)V
    .locals 1

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ad$a;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    monitor-exit p0

    return-void

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
