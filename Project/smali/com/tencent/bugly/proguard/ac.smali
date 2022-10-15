.class public Lcom/tencent/bugly/proguard/ac;
.super Ljava/lang/Object;
.source "BUGLY"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/bugly/proguard/ab;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->a:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    .line 23
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    .line 25
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    .line 27
    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    .line 94
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v4t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x3

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v5t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x4

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v5te"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v5tej"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x6

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x7

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6kz"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x8

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6t2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0x9

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6k"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0xa

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v7a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0xb

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6-m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0xc

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v6s-m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0xd

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v7e-m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Long;

    const-wide/16 v2, 0xe

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v2, "armeabi-v8a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->a:Ljava/lang/String;

    .line 110
    iput-wide p2, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    .line 111
    iput-wide p4, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    .line 112
    return-void
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/proguard/ab;)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 329
    const-class v4, Lcom/tencent/bugly/proguard/ac;

    monitor-enter v4

    move-wide v2, v0

    .line 332
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->b()B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 333
    int-to-long v6, v5

    const-wide/16 v8, 0x7f

    and-long/2addr v6, v8

    long-to-int v8, v0

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    .line 334
    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 335
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_0

    .line 339
    monitor-exit v4

    return-wide v2

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static a(Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7

    .prologue
    .line 311
    new-instance v0, Lcom/tencent/bugly/proguard/ac;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/proguard/ac;-><init>(Ljava/lang/String;JJ)V

    .line 312
    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ac;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    const-string v0, "ElfArmAttrParser"

    const-string v1, "Failed to parse the arch."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    .line 316
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/tencent/bugly/proguard/ac;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private a()Z
    .locals 4

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized a(J)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 187
    monitor-enter p0

    move-wide v0, p1

    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/proguard/ab;)J

    move-result-wide v4

    .line 189
    long-to-int v3, v4

    packed-switch v3, :pswitch_data_0

    .line 241
    :pswitch_0
    const-string v0, "ElfArmAttrParser"

    const-string v1, "Unimplemented tag."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 248
    :goto_1
    monitor-exit p0

    return v0

    .line 195
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->d()Ljava/lang/String;

    move-result-object v3

    .line 196
    if-eqz v3, :cond_0

    .line 197
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    sub-long/2addr v0, v4

    goto :goto_0

    .line 234
    :pswitch_2
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-static {v3}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/proguard/ab;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    :try_start_2
    const-string v1, "ElfArmAttrParser"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v2

    .line 248
    goto :goto_1

    .line 237
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/proguard/ab;)J

    move-result-wide v0

    .line 238
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->f:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 245
    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized b()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 134
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 147
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 164
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 151
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    if-eqz v1, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :cond_2
    :try_start_2
    new-instance v1, Lcom/tencent/bugly/proguard/ab;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ac;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    invoke-direct {v1, v2, v4, v5}, Lcom/tencent/bugly/proguard/ab;-><init>(Ljava/lang/String;J)V

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/proguard/ab;->b(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x1

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    const-string v2, "ElfArmAttrParser"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ab;->b()B

    move-result v1

    int-to-char v1, v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    :try_start_2
    const-string v1, "ElfArmAttrParser"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 174
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized f()Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 255
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ab;->f()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 256
    const-wide/16 v4, 0x41

    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 259
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ab;->h()J

    move-result-wide v2

    .line 260
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->e()Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    const-string v4, "aeabi"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v4, v1

    sub-long/2addr v2, v4

    .line 265
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 266
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ab;->f()J

    move-result-wide v4

    .line 267
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/ab;->h()J

    move-result-wide v6

    const-wide/16 v8, 0x5

    sub-long/2addr v6, v8

    .line 268
    const-wide/16 v8, 0x1

    cmp-long v1, v8, v4

    if-nez v1, :cond_2

    .line 269
    invoke-direct {p0, v6, v7}, Lcom/tencent/bugly/proguard/ac;->a(J)Z

    move-result v0

    goto :goto_0

    .line 271
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Lcom/tencent/bugly/proguard/ab;

    invoke-virtual {v1, v6, v7}, Lcom/tencent/bugly/proguard/ab;->b(J)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v1

    .line 276
    :try_start_2
    const-string v2, "ElfArmAttrParser"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 274
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->b()V

    .line 291
    const/4 v0, 0x0

    .line 299
    :goto_0
    return v0

    .line 294
    :cond_0
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    const-string v0, "ElfArmAttrParser"

    const-string v1, "Failed to parse elf header"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ac;->b()V

    .line 299
    const/4 v0, 0x1

    goto :goto_0
.end method
