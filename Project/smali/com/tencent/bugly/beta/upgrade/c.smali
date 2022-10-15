.class public Lcom/tencent/bugly/beta/upgrade/c;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Lcom/tencent/bugly/beta/upgrade/c;


# instance fields
.field public b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

.field public c:Lcom/tencent/bugly/beta/download/DownloadTask;

.field public final d:Landroid/os/Handler;

.field public e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

.field public f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

.field public g:Z

.field public h:Lcom/tencent/bugly/beta/global/d;

.field public i:Lcom/tencent/bugly/beta/global/d;

.field public j:I

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/Object;

.field private m:Lcom/tencent/bugly/beta/download/DownloadListener;

.field private n:Lcom/tencent/bugly/beta/upgrade/a;

.field private o:Lcom/tencent/bugly/beta/global/d;

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/tencent/bugly/beta/upgrade/c;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/upgrade/c;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->l:Ljava/lang/Object;

    .line 311
    new-instance v0, Lcom/tencent/bugly/beta/download/a;

    const/4 v1, 0x3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x1

    .line 312
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/download/a;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    return-void
.end method

.method private a()Lcom/tencent/bugly/proguard/y;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 9

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x2

    .line 387
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v2

    .line 388
    if-nez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    sget-object v3, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v5, v2, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/beta/global/f;->a(Lcom/tencent/bugly/beta/download/b;Ljava/util/Map;)V

    .line 394
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v3, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->b()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 398
    :cond_2
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v3, :cond_0

    .line 402
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v3

    if-ne v3, v8, :cond_3

    .line 403
    const-string v3, "Task is downloading %s %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v2, v4, v0

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 404
    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 403
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 408
    :cond_3
    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 410
    sget-object v3, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    .line 411
    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3, v2, v4}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 413
    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v6, v5, v1

    invoke-direct {v4, v7, v5}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/tencent/bugly/beta/ui/h;->q:Ljava/lang/Runnable;

    .line 415
    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/4 v5, 0x4

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v7, v6, v0

    iget-object v7, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v7, v6, v1

    .line 416
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    .line 418
    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    .line 419
    const-string v4, "st.bch"

    iget-object v5, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v4, v5}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 421
    if-eqz p1, :cond_4

    .line 422
    sget-object v2, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v3, v5, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-direct {v4, v8, v5}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    const/16 v0, 0xbb8

    invoke-virtual {v2, v4, v0}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    .line 425
    :cond_4
    sget-object v4, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v5, Lcom/tencent/bugly/beta/global/d;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v0

    if-nez p1, :cond_5

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne v2, v8, :cond_6

    :cond_5
    move v0, v1

    .line 426
    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-direct {v5, v8, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v4, v5}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private b()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v1

    .line 321
    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-object v0

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v2, :cond_1

    .line 326
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 327
    invoke-interface {v2, v1, v3, v0, v4}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    goto :goto_0
.end method

.method private c()V
    .locals 12

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->a()Lcom/tencent/bugly/proguard/y;

    move-result-object v9

    .line 340
    if-nez v9, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v0, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->b()Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 353
    const-string v0, "st.bch"

    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 356
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v0}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 359
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 360
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 361
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, v9, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 360
    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    sget-object v11, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v0, Lcom/tencent/bugly/proguard/w;

    const-string v1, "install"

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v8, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v9, v9, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 364
    invoke-virtual {v11, v0}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto :goto_0

    .line 371
    :cond_3
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->d:Z

    if-eqz v0, :cond_0

    .line 372
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    invoke-direct {p0, v0}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    goto :goto_0

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;
    .locals 14

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v12, p0, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    monitor-enter v12

    .line 68
    :try_start_0
    const-string v0, "st.bch"

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 69
    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 70
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-nez v3, :cond_0

    .line 71
    const-string v0, "st.bch"

    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    move-object v0, v1

    .line 76
    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v3, :cond_2

    .line 77
    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v3, v3, Lcom/tencent/bugly/proguard/v;->c:I

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v4, v4, Lcom/tencent/bugly/beta/global/e;->w:I

    if-lt v3, v4, :cond_1

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v3, v3, Lcom/tencent/bugly/proguard/y;->n:I

    if-ne v3, v8, :cond_1

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 80
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    :cond_1
    const-string v0, "st.bch"

    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    move-object v0, v1

    .line 88
    :cond_2
    if-eqz p1, :cond_e

    .line 89
    iget-object v3, p1, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v3, v3, Lcom/tencent/bugly/proguard/v;->c:I

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v4, v4, Lcom/tencent/bugly/beta/global/e;->w:I

    if-ge v3, v4, :cond_e

    .line 90
    const-string v3, "versionCode is too small, discard remote strategy: [new: %d] [current: %d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget v6, v6, Lcom/tencent/bugly/proguard/v;->c:I

    .line 92
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget v6, v6, Lcom/tencent/bugly/beta/global/e;->w:I

    .line 93
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 90
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v3, v1

    .line 98
    :goto_0
    if-eqz v3, :cond_d

    .line 99
    iget v4, v3, Lcom/tencent/bugly/proguard/y;->n:I

    if-ne v4, v7, :cond_3

    .line 100
    if-eqz v0, :cond_3

    iget-object v4, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 102
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 103
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v5, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 104
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 106
    const-string v4, "callback strategy: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 107
    const-string v4, "st.bch"

    invoke-static {v4}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    .line 108
    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 110
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 108
    invoke-interface {v4, v0, v5, v6, v7}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    const/4 v4, 0x1

    .line 111
    invoke-virtual {v0, v4}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    move-object v0, v1

    .line 116
    :cond_3
    iget v4, v3, Lcom/tencent/bugly/proguard/y;->n:I

    if-eq v4, v8, :cond_d

    .line 117
    const-string v4, "invalid strategy: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v9, v1

    .line 122
    :goto_1
    if-eqz v9, :cond_b

    .line 123
    if-eqz v0, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_5

    iget-object v1, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 125
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 127
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 129
    new-instance v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Landroid/os/Parcelable;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/bugly/proguard/au;->d([B)Landroid/os/Parcel;

    move-result-object v1

    invoke-direct {v11, v1}, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;-><init>(Landroid/os/Parcel;)V

    .line 131
    const-string v1, "same strategyId:[new: %s] [current: %s] keep has popup times: %d, interval: %d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-wide v6, v9, Lcom/tencent/bugly/proguard/y;->i:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 131
    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 138
    :goto_2
    iput-object v9, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->e:J

    .line 142
    if-eqz v0, :cond_9

    .line 143
    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    iget-object v3, v9, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 145
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v1, :cond_6

    .line 146
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v3, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 146
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v1

    const/4 v3, 0x1

    .line 149
    invoke-virtual {v1, v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 150
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_7

    aget-object v2, v3, v1

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_4

    .line 152
    const-string v5, "cannot deleteCache file:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 136
    :cond_5
    new-instance v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    invoke-direct {v11}, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;-><init>()V

    goto :goto_2

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 156
    :cond_6
    :try_start_1
    sget-object v1, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 163
    :cond_7
    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v0, v10, :cond_9

    .line 165
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 166
    if-eqz v0, :cond_8

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 168
    const-string v0, "delete tmpPatchFile"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 170
    :cond_8
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    .line 171
    if-eqz v0, :cond_9

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 173
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    .line 174
    const-string v0, "delete patchFile"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    :cond_9
    const-string v0, "st.bch"

    invoke-static {v0, v11}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 179
    const-string v0, "onUpgradeReceived: %s [type: %d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v9, v1, v2

    const/4 v2, 0x1

    iget-byte v3, v9, Lcom/tencent/bugly/proguard/y;->g:B

    .line 180
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 182
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v0, Lcom/tencent/bugly/proguard/w;

    const-string v1, "rcv"

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    iget-object v7, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v8, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget v9, v9, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 182
    invoke-virtual {v13, v0}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    move-object v0, v11

    .line 194
    :cond_a
    :goto_4
    monitor-exit v12

    return-object v0

    .line 188
    :cond_b
    if-eqz v0, :cond_c

    iget-object v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v2, v2, Lcom/tencent/bugly/proguard/y;->p:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v10, :cond_a

    :cond_c
    move-object v0, v1

    goto :goto_4

    :cond_d
    move-object v9, v3

    goto/16 :goto_1

    :cond_e
    move-object v3, p1

    goto/16 :goto_0
.end method

.method public a(Lcom/tencent/bugly/proguard/bl;)V
    .locals 4

    .prologue
    .line 510
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    if-nez v0, :cond_0

    .line 511
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    new-instance v1, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    invoke-direct {v1}, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;-><init>()V

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    .line 514
    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-wide v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->b:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 519
    :cond_2
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    iput-wide v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->b:J

    .line 521
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/bl;->b:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/bl;->b:Z

    .line 523
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-boolean v1, p1, Lcom/tencent/bugly/proguard/bl;->c:Z

    iput-boolean v1, v0, Lcom/tencent/bugly/proguard/bl;->c:Z

    .line 524
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/bl;->h:J

    iput-wide v2, v0, Lcom/tencent/bugly/proguard/bl;->h:J

    .line 525
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 526
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bl;->d:Ljava/lang/String;

    .line 529
    :cond_3
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    .line 533
    :cond_4
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    if-eqz v0, :cond_5

    .line 534
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bk;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 535
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->f:Lcom/tencent/bugly/proguard/bk;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/bk;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bk;->a:Ljava/lang/String;

    .line 539
    :cond_5
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 540
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bl;->g:Ljava/util/Map;

    .line 543
    :cond_6
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 544
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bl;->i:Ljava/lang/String;

    .line 547
    :cond_7
    iget-object v0, p1, Lcom/tencent/bugly/proguard/bl;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 548
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v1, p1, Lcom/tencent/bugly/proguard/bl;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/bugly/proguard/bl;->j:Ljava/lang/String;

    .line 551
    :cond_8
    const-string v0, "us.bch"

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    goto/16 :goto_0
.end method

.method public a(ZZI)V
    .locals 11

    .prologue
    const/4 v3, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 441
    iget-object v9, p0, Lcom/tencent/bugly/beta/upgrade/c;->l:Ljava/lang/Object;

    monitor-enter v9

    .line 442
    :try_start_0
    const-string v0, "st.bch"

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 444
    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v1, v1, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v1, v3, :cond_9

    .line 448
    const/4 v0, 0x0

    move-object v8, v0

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->p:Z

    if-eq v0, p1, :cond_8

    .line 454
    :cond_0
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/upgrade/c;->p:Z

    .line 455
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    .line 459
    :cond_1
    new-instance v0, Lcom/tencent/bugly/beta/upgrade/a;

    const/4 v1, 0x1

    const/16 v3, 0x324

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 461
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v8, v4, v5

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/bugly/beta/upgrade/a;-><init>(II[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    .line 462
    new-instance v0, Lcom/tencent/bugly/beta/global/d;

    const/16 v1, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :try_start_1
    const-string v3, ""

    .line 466
    const-wide/16 v4, 0x0

    .line 467
    if-eqz v8, :cond_2

    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v0, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    .line 469
    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/y;->o:J

    .line 471
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 472
    const-string v0, "G16"

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Lcom/tencent/bugly/proguard/z;

    if-eqz p1, :cond_7

    :goto_1
    invoke-direct/range {v1 .. v6}, Lcom/tencent/bugly/proguard/z;-><init>(ILjava/lang/String;JLjava/util/Map;)V

    .line 474
    invoke-static {v1}, Lcom/tencent/bugly/proguard/am;->a(Lcom/tencent/bugly/proguard/m;)[B

    move-result-object v2

    .line 477
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/b;->a:Lcom/tencent/bugly/beta/upgrade/b;

    const/16 v1, 0x324

    iget-object v3, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-object v5, v4, Lcom/tencent/bugly/proguard/bl;->e:Ljava/lang/String;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/beta/upgrade/b;->a(I[BLcom/tencent/bugly/beta/upgrade/a;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    if-eqz v8, :cond_6

    :try_start_2
    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v0, v10, :cond_6

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 499
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 501
    :cond_6
    monitor-exit v9

    .line 502
    return-void

    :cond_7
    move v2, v7

    .line 473
    goto :goto_1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 481
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 485
    :cond_8
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    :try_start_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 488
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->n:Lcom/tencent/bugly/beta/upgrade/a;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 490
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 491
    :try_start_5
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->o:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 490
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_9
    move-object v8, v0

    goto/16 :goto_0
.end method

.method public a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 206
    iget-object v1, p0, Lcom/tencent/bugly/beta/upgrade/c;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    invoke-virtual {p0, p4}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 208
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    .line 213
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    if-eqz v0, :cond_2

    .line 214
    const-string/jumbo v0, "\u4f60\u5df2\u653e\u5f03\u8ba9SDK\u6765\u5904\u7406\u7b56\u7565"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 215
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->j:I

    .line 216
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez v0, :cond_0

    .line 217
    const-string v0, "betaStrategy is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v0, :cond_1

    .line 220
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 223
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v5, v5, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 221
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v0, :cond_3

    .line 228
    const-string/jumbo v0, "\u7528\u6237\u81ea\u5b9a\u4e49activity\uff0c\u521b\u5efatask\u5931\u8d25 [strategy:%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 231
    const-string v0, "st.bch"

    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v3, 0x10

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_2
    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-nez v0, :cond_5

    .line 240
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v3, 0x12

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :goto_1
    monitor-exit v1

    .line 308
    :goto_2
    return-void

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->m:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 244
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 245
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_f

    .line 251
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_6

    .line 252
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v3, 0x12

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    :cond_6
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    if-eqz v0, :cond_7

    .line 258
    monitor-exit v1

    goto :goto_2

    .line 262
    :cond_7
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/y;->g:B

    if-eq v0, v8, :cond_c

    .line 264
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->e:Z

    if-eqz v0, :cond_a

    .line 266
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_8

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->Q:Z

    if-eqz v0, :cond_8

    .line 268
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->c()V

    .line 269
    monitor-exit v1

    goto/16 :goto_2

    .line 273
    :cond_8
    if-nez p2, :cond_9

    .line 274
    invoke-direct {p0, p1}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    .line 276
    :cond_9
    monitor-exit v1

    goto/16 :goto_2

    .line 280
    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-wide v2, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-wide v4, v0, Lcom/tencent/bugly/proguard/y;->i:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->h:I

    iget-object v2, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte v0, v0, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne v0, v9, :cond_c

    .line 283
    :cond_b
    monitor-exit v1

    goto/16 :goto_2

    .line 288
    :cond_c
    if-nez p2, :cond_e

    .line 290
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v7, :cond_d

    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-boolean v0, v0, Lcom/tencent/bugly/beta/global/e;->Q:Z

    if-eqz v0, :cond_d

    .line 292
    invoke-direct {p0}, Lcom/tencent/bugly/beta/upgrade/c;->c()V

    .line 293
    monitor-exit v1

    goto/16 :goto_2

    .line 295
    :cond_d
    invoke-direct {p0, p1}, Lcom/tencent/bugly/beta/upgrade/c;->a(Z)V

    .line 307
    :cond_e
    :goto_3
    monitor-exit v1

    goto/16 :goto_2

    .line 298
    :cond_f
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_10

    .line 299
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v3, 0x12

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 299
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 302
    :cond_10
    if-eqz p1, :cond_e

    if-nez p2, :cond_e

    .line 303
    iget-object v0, p0, Lcom/tencent/bugly/beta/upgrade/c;->d:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/tencent/bugly/beta/Beta;->strToastYourAreTheLatestVersion:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 304
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, v3, v4}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 303
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
