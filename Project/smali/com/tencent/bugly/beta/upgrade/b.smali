.class public Lcom/tencent/bugly/beta/upgrade/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/beta/upgrade/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/tencent/bugly/beta/upgrade/b;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/upgrade/b;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/upgrade/b;->a:Lcom/tencent/bugly/beta/upgrade/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected declared-synchronized a(I[BLcom/tencent/bugly/beta/upgrade/a;ZLjava/lang/String;)V
    .locals 11

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 40
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/tencent/bugly/proguard/am;->a(Landroid/content/Context;I[B)Lcom/tencent/bugly/proguard/bi;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_0

    .line 42
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 43
    iget-object v2, v1, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    iput-object v2, v5, Lcom/tencent/bugly/proguard/bi;->b:Ljava/lang/String;

    .line 44
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 45
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G6"

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G10"

    const-string v4, "1.2.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G11"

    iget v4, v1, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 51
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G7"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G8"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G9"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G2"

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 56
    invoke-static {v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G12"

    iget v4, v1, Lcom/tencent/bugly/beta/global/e;->o:I

    .line 58
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "A21"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "A22"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G13"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G14"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v2, v5, Lcom/tencent/bugly/proguard/bi;->k:Ljava/util/Map;

    const-string v3, "G15"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v2, "[cmd:%s][md5:%s][verName:%s][verCode:%d][deviceid:%s][apkBuild:%s][patchBuild:%s][patchVersion:%s]"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v6, v5, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 67
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    iget-object v6, v1, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    iget v6, v1, Lcom/tencent/bugly/beta/global/e;->w:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x5

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x6

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v0, 0x7

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    aput-object v4, v3, v0

    .line 66
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 70
    const-string v0, "current app version is: [%s.%s], base tinkerId:[%s], patch tinkerId:[%s]"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->x:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, v1, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    aput-object v1, v2, v3

    .line 70
    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v0, "grayStrategyUpdateTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-wide v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    if-eqz p4, :cond_1

    .line 79
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->a()Lcom/tencent/bugly/proguard/ap;

    move-result-object v0

    const/16 v1, 0x3ea

    iget v2, v5, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 80
    invoke-static {v5}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/bi;)[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p5

    move-object/from16 v5, p5

    move-object v6, p3

    .line 79
    invoke-virtual/range {v0 .. v10}, Lcom/tencent/bugly/proguard/ap;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;IIZLjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/proguard/ap;->a()Lcom/tencent/bugly/proguard/ap;

    move-result-object v2

    const/16 v3, 0x3ea

    iget v4, v5, Lcom/tencent/bugly/proguard/bi;->g:I

    .line 84
    invoke-static {v5}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/bi;)[B

    move-result-object v5

    const/4 v9, 0x0

    move-object/from16 v6, p5

    move-object/from16 v7, p5

    move-object v8, p3

    .line 83
    invoke-virtual/range {v2 .. v10}, Lcom/tencent/bugly/proguard/ap;->a(II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/ao;ZLjava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 93
    :cond_2
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v9, "sendRequest failed"

    move-object v1, p3

    move v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/tencent/bugly/beta/upgrade/a;->a(ILcom/tencent/bugly/proguard/bj;JJZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tencent/bugly/proguard/x;Z)V
    .locals 8

    .prologue
    .line 105
    monitor-enter p0

    if-nez p1, :cond_1

    .line 118
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/m;)[B

    move-result-object v2

    .line 110
    const/16 v1, 0x323

    new-instance v3, Lcom/tencent/bugly/beta/upgrade/a;

    const/4 v0, 0x2

    const/16 v4, 0x323

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    .line 112
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct {v3, v0, v4, v5}, Lcom/tencent/bugly/beta/upgrade/a;-><init>(II[Ljava/lang/Object;)V

    const/4 v4, 0x0

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v5, v0, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/beta/upgrade/b;->a(I[BLcom/tencent/bugly/beta/upgrade/a;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    :try_start_1
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
