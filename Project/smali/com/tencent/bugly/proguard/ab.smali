.class public Lcom/tencent/bugly/proguard/ab;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:J

.field public static b:J

.field public static c:J


# instance fields
.field private d:[B

.field private e:[B

.field private f:[B

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/io/BufferedInputStream;

.field private j:J

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/tencent/bugly/proguard/ab;->a:J

    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/bugly/proguard/ab;->b:J

    .line 23
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:[B

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->e:[B

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->f:[B

    .line 41
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->g:J

    .line 44
    iput-object v2, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    .line 50
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 53
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    .line 80
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ab;->b(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:[B

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->e:[B

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->f:[B

    .line 41
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->g:J

    .line 44
    iput-object v2, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;

    .line 47
    iput-object v2, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    .line 50
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 53
    iput-wide v4, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;J)V

    .line 92
    return-void
.end method

.method public static a([BJ)S
    .locals 3

    .prologue
    .line 408
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 409
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->b([B)S

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->e([B)S

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p2, p3}, Lcom/tencent/bugly/proguard/ab;->a(J)V

    .line 118
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ab;->j()V

    .line 119
    return-void
.end method

.method public static b([BJ)I
    .locals 3

    .prologue
    .line 422
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 423
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->c([B)I

    move-result v0

    .line 425
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->f([B)I

    move-result v0

    goto :goto_0
.end method

.method private static b([B)S
    .locals 2

    .prologue
    .line 319
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 320
    :cond_0
    const/4 v0, -0x1

    .line 322
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->c([B)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;J)V

    .line 129
    return-void
.end method

.method private static c([B)I
    .locals 2

    .prologue
    .line 332
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 333
    :cond_0
    const/4 v0, -0x1

    .line 335
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->d([B)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static c([BJ)J
    .locals 3

    .prologue
    .line 436
    sget-wide v0, Lcom/tencent/bugly/proguard/ab;->c:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 437
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->d([B)J

    move-result-wide v0

    .line 439
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->g([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static d([B)J
    .locals 10

    .prologue
    const/16 v8, 0x8

    .line 345
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v8, :cond_2

    .line 346
    :cond_0
    const-wide/16 v0, -0x1

    .line 353
    :cond_1
    return-wide v0

    .line 348
    :cond_2
    const-wide/16 v2, 0x0

    .line 349
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v9, v0

    move-wide v0, v2

    move v2, v9

    :goto_0
    if-ltz v2, :cond_1

    .line 350
    shl-long/2addr v0, v8

    .line 351
    aget-byte v3, p0, v2

    int-to-long v4, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long/2addr v4, v0

    .line 349
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0
.end method

.method private static e([B)S
    .locals 2

    .prologue
    .line 363
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 364
    :cond_0
    const/4 v0, -0x1

    .line 366
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->f([B)I

    move-result v0

    int-to-short v0, v0

    goto :goto_0
.end method

.method private static f([B)I
    .locals 2

    .prologue
    .line 376
    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 377
    :cond_0
    const/4 v0, -0x1

    .line 379
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->g([B)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method private static g([B)J
    .locals 9

    .prologue
    const/16 v8, 0x8

    .line 389
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, v8, :cond_2

    .line 390
    :cond_0
    const-wide/16 v2, -0x1

    .line 397
    :cond_1
    return-wide v2

    .line 392
    :cond_2
    const-wide/16 v2, 0x0

    .line 393
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 394
    shl-long/2addr v2, v8

    .line 395
    aget-byte v1, p0, v0

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "File name is null!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized a(J)V
    .locals 1

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ab;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a()Z
    .locals 2

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 141
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->h:Ljava/lang/String;

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    const/4 v0, 0x1

    .line 148
    :goto_0
    monitor-exit p0

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_1
    const-string v1, "BinaryFileReader"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([B)Z
    .locals 4

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 193
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_2
    const-string v1, "BinaryFileReader"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x1

    .line 204
    monitor-enter p0

    const/4 v0, 0x0

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 206
    const-string v1, "BinaryFileReader"

    const-string v2, "Failed to skip file pointer\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    monitor-exit p0

    return v0

    .line 209
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    .line 210
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 211
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(J)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-nez v2, :cond_0

    .line 160
    const-string v1, "BinaryFileReader"

    const-string v2, "Please open file first\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    monitor-exit p0

    return v0

    .line 163
    :cond_0
    cmp-long v2, v6, p1

    if-nez v2, :cond_1

    move v0, v1

    .line 164
    goto :goto_0

    :cond_1
    move-wide v2, p1

    .line 167
    :goto_1
    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 169
    :try_start_1
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    invoke-virtual {v4, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    sub-long/2addr v2, v4

    goto :goto_1

    .line 170
    :catch_0
    move-exception v1

    .line 171
    :try_start_2
    const-string v1, "BinaryFileReader"

    const-string v2, "Failed to skip file pointer\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_2
    :try_start_3
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    add-long/2addr v2, p1

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public declared-synchronized c()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x2

    .line 222
    monitor-enter p0

    const/4 v0, 0x0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 224
    const-string v1, "BinaryFileReader"

    const-string v2, "Failed to skip file pointer\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit p0

    return v0

    .line 227
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->d:[B

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 228
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:[B

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->g:J

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/proguard/ab;->a([BJ)S

    move-result v0

    .line 229
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 230
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x4

    .line 241
    monitor-enter p0

    const/4 v0, 0x0

    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-nez v1, :cond_0

    .line 243
    const-string v1, "BinaryFileReader"

    const-string v2, "Failed to skip file pointer\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :goto_0
    monitor-exit p0

    return v0

    .line 246
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->e:[B

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 247
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->e:[B

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->g:J

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/proguard/ab;->b([BJ)I

    move-result v0

    .line 248
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 249
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x8

    .line 260
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    if-nez v2, :cond_0

    .line 262
    const-string v2, "BinaryFileReader"

    const-string v3, "Failed to skip file pointer\uff01"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :goto_0
    monitor-exit p0

    return-wide v0

    .line 265
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->i:Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->f:[B

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    .line 266
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->f:[B

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->g:J

    invoke-static {v0, v2, v3}, Lcom/tencent/bugly/proguard/ab;->c([BJ)J

    move-result-wide v0

    .line 267
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->j:J

    .line 268
    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ab;->k:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->c()S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->d()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->e()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
