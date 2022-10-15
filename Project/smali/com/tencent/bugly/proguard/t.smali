.class public Lcom/tencent/bugly/proguard/t;
.super Lcom/tencent/bugly/beta/download/DownloadTask;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final n:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field public j:J

.field private k:Ljava/io/File;

.field private l:J

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/tencent/bugly/proguard/t$1;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/t$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/t;->n:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 68
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1, p7}, Lcom/tencent/bugly/beta/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->j:J

    .line 53
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->l:J

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->m:Landroid/os/Handler;

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    .line 70
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    .line 72
    iput-wide p3, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 73
    iput-wide p5, p0, Lcom/tencent/bugly/proguard/t;->f:J

    .line 75
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getStatus()I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/bugly/beta/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->j:J

    .line 53
    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->l:J

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->m:Landroid/os/Handler;

    .line 80
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getStatus()I

    .line 81
    return-void
.end method

.method private a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    .line 363
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 327
    if-eqz v2, :cond_4

    .line 328
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 329
    if-eqz v0, :cond_2

    .line 332
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 333
    if-eqz v1, :cond_2

    .line 337
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    if-eqz v1, :cond_3

    .line 342
    const-string v5, "content-disposition"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 343
    const-string v5, ".*filename=(.*)"

    .line 344
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 355
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static c()V
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/tencent/bugly/proguard/t$2;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/t$2;-><init>()V

    aput-object v2, v0, v1

    .line 303
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 304
    const/4 v2, 0x0

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 305
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .prologue
    .line 385
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/t;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/t;->l:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->j:J

    .line 386
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)Z

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->l:J

    .line 388
    sget-object v0, Lcom/tencent/bugly/beta/ui/c;->a:Lcom/tencent/bugly/beta/ui/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/c;->a()V

    .line 389
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->m:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/List;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method

.method protected a(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 373
    const/4 v0, 0x5

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 375
    sget-object v0, Lcom/tencent/bugly/beta/ui/c;->a:Lcom/tencent/bugly/beta/ui/c;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/ui/c;->a()V

    .line 376
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->m:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0xa

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/List;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p2, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method

.method protected b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 396
    iput v6, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 397
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->a()V

    .line 398
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->m:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/bugly/proguard/t;->d:Ljava/util/List;

    aput-object v5, v3, v4

    aput-object p0, v3, v6

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method

.method public delete(Z)V
    .locals 4
    .param p1, "deleteFile"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->stop()V

    .line 125
    if-eqz p1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 129
    :cond_0
    sget-object v0, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/p;->b(Lcom/tencent/bugly/beta/download/DownloadTask;)I

    .line 131
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/download/BetaReceiver;->netListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    .line 133
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 134
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->f:J

    .line 135
    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 136
    return-void
.end method

.method public download()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const-wide/16 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->b()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getStatus()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    :cond_2
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 102
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->f:J

    .line 103
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/t;->j:J

    .line 108
    :goto_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/t;->g:Z

    if-eqz v0, :cond_3

    .line 110
    sget-object v0, Lcom/tencent/bugly/beta/ui/c;->a:Lcom/tencent/bugly/beta/ui/c;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/beta/ui/c;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 114
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->l:J

    .line 117
    iput v4, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 118
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->e:J

    goto :goto_1
.end method

.method public getCostTime()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/t;->j:J

    return-wide v0
.end method

.method public getSaveFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    return-object v0
.end method

.method public getStatus()I
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/t;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/t;->f:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/t;->f:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 160
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iget-object v0, v0, Lcom/tencent/bugly/proguard/s;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 164
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 167
    :cond_3
    iget v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    return v0
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v4, 0x0

    .line 172
    .line 175
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    move-object v2, v1

    .line 187
    :goto_0
    if-ge v0, v10, :cond_b

    .line 188
    add-int/lit8 v4, v0, 0x1

    .line 190
    :try_start_1
    invoke-static {}, Lcom/tencent/bugly/proguard/t;->c()V

    .line 191
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 192
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "https"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 193
    sget-object v3, Lcom/tencent/bugly/proguard/t;->n:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v0, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 198
    :goto_1
    const/16 v3, 0x1388

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 199
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 200
    const-string v3, "Referer"

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v3, "Charset"

    const-string v6, "UTF-8"

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v3, "Range"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/t;->e:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "Connection"

    const-string v6, "Keep-Alive"

    invoke-virtual {v0, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 206
    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/t;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    .line 207
    new-instance v3, Ljava/io/File;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/t;->b:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 209
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 211
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/t;->c:Ljava/lang/String;

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    .line 212
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/t;->f:J

    cmp-long v3, v6, v12

    if-nez v3, :cond_4

    .line 213
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v6, v3

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/t;->f:J

    .line 214
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/t;->f:J

    cmp-long v3, v6, v12

    if-gtz v3, :cond_4

    .line 215
    const/16 v0, 0x7d0

    const-string v3, "tLen <= 0 "

    invoke-virtual {p0, v0, v3}, Lcom/tencent/bugly/proguard/t;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 249
    if-eqz v1, :cond_1

    .line 250
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 262
    :cond_1
    if-eqz v2, :cond_2

    .line 263
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 269
    :cond_2
    :goto_2
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 178
    const/16 v1, 0x7da

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/bugly/proguard/t;->a(ILjava/lang/String;)V

    goto :goto_2

    .line 196
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_1

    .line 265
    :catch_1
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 220
    :cond_4
    :try_start_5
    sget-object v3, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v3, p0}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)Z

    .line 221
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result-object v3

    .line 222
    const v0, 0x4b000

    :try_start_6
    new-array v0, v0, [B

    .line 224
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/t;->k:Ljava/io/File;

    const-string v7, "rwd"

    invoke-direct {v2, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 225
    :try_start_7
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/t;->e:J

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 226
    :cond_5
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_a

    .line 227
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/t;->e:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/tencent/bugly/proguard/t;->e:J

    .line 229
    iget-wide v6, p0, Lcom/tencent/bugly/proguard/t;->e:J

    iget-wide v8, p0, Lcom/tencent/bugly/proguard/t;->f:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 230
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->b()V

    .line 231
    const-string v0, "mSavedLength > mTotalLength,\u91cd\u65b0\u4e0b\u8f7d!"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 249
    if-eqz v2, :cond_6

    .line 250
    :try_start_8
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 262
    :cond_6
    if-eqz v3, :cond_2

    .line 263
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 265
    :catch_2
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 235
    :cond_7
    :try_start_a
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->a()V

    .line 236
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 238
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 239
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->getStatus()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v1

    if-ne v1, v10, :cond_5

    .line 249
    :cond_8
    if-eqz v2, :cond_9

    .line 250
    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 262
    :cond_9
    if-eqz v3, :cond_2

    .line 263
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 265
    :catch_3
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 243
    :cond_a
    :try_start_d
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/t;->b()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 249
    if-eqz v2, :cond_10

    .line 250
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move v0, v4

    move-object v2, v3

    .line 254
    :cond_b
    :goto_3
    if-lt v0, v10, :cond_c

    .line 255
    :try_start_f
    const-string v0, "have retry %d times"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 262
    :cond_c
    if-eqz v2, :cond_2

    .line 263
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_2

    .line 265
    :catch_4
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 245
    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    .line 246
    :goto_4
    :try_start_11
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 247
    const-string v0, "IOException,stop download!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 249
    if-eqz v1, :cond_d

    .line 250
    :try_start_12
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_d
    move v0, v4

    goto/16 :goto_0

    .line 249
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_5
    if-eqz v1, :cond_e

    .line 250
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_e
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 257
    :catch_6
    move-exception v0

    .line 258
    :goto_6
    const/16 v1, 0x7d0

    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/tencent/bugly/proguard/t;->a(ILjava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 262
    if-eqz v2, :cond_2

    .line 263
    :try_start_14
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_2

    .line 265
    :catch_7
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 261
    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 262
    :goto_7
    if-eqz v2, :cond_f

    .line 263
    :try_start_15
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    .line 267
    :cond_f
    :goto_8
    throw v0

    .line 265
    :catch_8
    move-exception v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 261
    :catchall_2
    move-exception v0

    goto :goto_7

    .line 257
    :catch_9
    move-exception v0

    move-object v2, v3

    goto :goto_6

    .line 249
    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v3

    goto :goto_5

    .line 245
    :catch_a
    move-exception v0

    goto :goto_4

    :catch_b
    move-exception v0

    move-object v2, v3

    goto :goto_4

    :cond_10
    move v0, v4

    move-object v2, v3

    goto :goto_3
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 140
    iget v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 141
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/bugly/proguard/t;->i:I

    .line 144
    :cond_0
    return-void
.end method
