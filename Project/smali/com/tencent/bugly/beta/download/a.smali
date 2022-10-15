.class public Lcom/tencent/bugly/beta/download/a;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/beta/download/DownloadListener;


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    .line 44
    iput-object p2, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 15
    .param p1, "task"    # Lcom/tencent/bugly/beta/download/DownloadTask;

    .prologue
    .line 63
    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 65
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v4, v1, v2

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/Map;

    .line 67
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    monitor-exit v4

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 70
    :cond_1
    const/4 v3, 0x0

    .line 71
    :try_start_3
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 72
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_d

    .line 73
    add-int/lit8 v2, v3, 0x1

    :goto_2
    move v3, v2

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " has completed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v3, v2, :cond_3

    .line 79
    monitor-exit v4

    goto :goto_0

    .line 82
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 84
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    sget-object v6, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 86
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-virtual {v6, v2, v3}, Lcom/tencent/bugly/beta/global/ResBean;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 89
    :cond_5
    const-string v1, "rb.bch"

    sget-object v2, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 90
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/global/f;

    .line 91
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/global/f;->a()V

    .line 93
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/global/f;->b()V

    .line 94
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 98
    :pswitch_1
    :try_start_4
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/h;

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto/16 :goto_0

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/c;

    move-object v12, v0

    .line 105
    iget-object v13, v12, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 106
    if-eqz v13, :cond_0

    iget-object v1, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    iget-boolean v2, v12, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    invoke-interface {v1, v2}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onDownloadCompleted(Z)V

    .line 115
    :cond_6
    const-string v1, "apk download completed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 118
    sget-object v14, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "download"

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v6

    iget-object v8, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v9, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 118
    invoke-virtual {v14, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v2

    .line 124
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    .line 125
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    iget-object v4, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 127
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 130
    sget-object v12, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "install"

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget-object v8, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v9, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 130
    invoke-virtual {v12, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 134
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_8

    .line 135
    iget-object v2, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 136
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 137
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v2, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 139
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    .line 137
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v1

    iput-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 142
    sget-object v1, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    iget-object v2, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v12, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 144
    iget-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1, p0}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 145
    iget-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v1}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 146
    iget-object v1, v12, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto/16 :goto_0

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 149
    const/16 v1, 0x820

    const-string/jumbo v2, "\u6587\u4ef6MD5\u9a8c\u8bc1\u5931\u8d25"

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/beta/download/a;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    .line 151
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    goto/16 :goto_0

    .line 157
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/proguard/q;

    .line 158
    iget-object v2, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Integer;

    .line 159
    iget-object v3, v1, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 160
    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "patch download success !!!"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 167
    invoke-virtual/range {p1 .. p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v4

    .line 168
    const-string v5, ""

    .line 170
    const-string v6, ""

    .line 172
    iget-object v7, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    const-string v8, "SHA"

    invoke-static {v4, v7, v8}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 175
    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    if-eqz v6, :cond_b

    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 177
    iget-object v2, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 178
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    invoke-static {v4, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 180
    iget-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v2, :cond_9

    .line 181
    iget-object v1, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 183
    :cond_9
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FirstInject"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v1

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_a
    const-string v1, "copy file failed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 189
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v1

    const-string v2, "copy file failure."

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadFailure(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 191
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_c

    .line 192
    iget-object v4, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    .line 193
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 194
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v4, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 196
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    .line 194
    invoke-interface {v2, v4, v5, v6, v3}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 201
    iget-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->setNeededNotify(Z)V

    .line 202
    iget-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v2, p0}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 204
    iget-object v2, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-static {v2}, Lcom/tencent/bugly/beta/download/BetaReceiver;->addTask(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 205
    iget-object v1, v1, Lcom/tencent/bugly/proguard/q;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto/16 :goto_0

    .line 207
    :cond_c
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 208
    const/16 v1, 0x820

    const-string/jumbo v2, "\u6587\u4ef6SHA1\u9a8c\u8bc1\u5931\u8d25"

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/bugly/beta/download/a;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    .line 210
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 213
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v1

    const-string v2, "retry download patch too many times."

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onDownloadFailure(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_d
    move v2, v3

    goto/16 :goto_2

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V
    .locals 13
    .param p1, "task"    # Lcom/tencent/bugly/beta/download/DownloadTask;
    .param p2, "code"    # I
    .param p3, "extMsg"    # Ljava/lang/String;

    .prologue
    .line 230
    :try_start_0
    iget v1, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    packed-switch v1, :pswitch_data_0

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :try_start_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    check-cast v1, Lcom/tencent/bugly/beta/global/f;

    .line 235
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/global/f;->a()V

    .line 237
    invoke-virtual {v1}, Lcom/tencent/bugly/beta/global/f;->b()V

    .line 238
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 242
    :pswitch_1
    :try_start_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Lcom/tencent/bugly/beta/ui/h;

    .line 243
    invoke-virtual {v1, p1}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto :goto_0

    .line 248
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/c;

    move-object v10, v0

    .line 250
    if-eqz p1, :cond_1

    .line 251
    sget-object v12, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "download"

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 254
    invoke-virtual {p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v6

    iget-object v8, v10, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v8, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v9, v10, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v9, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v10, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v10, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 252
    invoke-virtual {v12, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 258
    :cond_1
    const-string v1, "upgrade failed\uff1a(%d)%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 260
    sget-object v1, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string/jumbo v2, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    check-cast v0, Lcom/tencent/bugly/proguard/q;

    move-object v10, v0

    .line 266
    if-eqz p1, :cond_2

    .line 267
    sget-object v12, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "download"

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    .line 270
    invoke-virtual {p1}, Lcom/tencent/bugly/beta/download/DownloadTask;->getCostTime()J

    move-result-wide v6

    iget-object v8, v10, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v8, v8, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v9, v10, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v9, v9, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/q;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v10, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 268
    invoke-virtual {v12, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 275
    :cond_2
    const-string v1, "hotfix download failed\uff1a(%d)%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onReceive(Lcom/tencent/bugly/beta/download/DownloadTask;)V
    .locals 2
    .param p1, "task"    # Lcom/tencent/bugly/beta/download/DownloadTask;

    .prologue
    .line 49
    iget v0, p0, Lcom/tencent/bugly/beta/download/a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/download/a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    .line 52
    invoke-virtual {v0, p1}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
