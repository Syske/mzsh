.class public Lcom/tencent/bugly/beta/global/d;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field public final b:[Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/tencent/bugly/beta/global/d;->a:I

    .line 73
    iput-object p2, p0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/16 v16, 0x1

    .line 79
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/bugly/beta/global/d;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v2, :pswitch_data_0

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    :try_start_1
    const-string v2, "Beta async init start..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 83
    sget-object v14, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 85
    sget-object v15, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, v14, Lcom/tencent/bugly/beta/global/e;->z:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v3, "MD5"

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/au;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_1
    :try_start_3
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    const-string v2, "null"

    iput-object v2, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    .line 97
    const-string/jumbo v2, "\u65e0\u6cd5\u83b7\u53d6md5\u503c"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 100
    :cond_1
    iget-boolean v2, v14, Lcom/tencent/bugly/beta/global/e;->C:Z

    if-eqz v2, :cond_2

    .line 101
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;)V

    .line 105
    :cond_2
    const-string v2, "st.bch"

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 106
    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v13, v0

    .line 110
    if-eqz v13, :cond_4

    iget-object v2, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v2, :cond_4

    .line 111
    iget-object v2, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v2, v2, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    .line 112
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    .line 111
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 114
    const-string v2, "st.bch"

    invoke-static {v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 116
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v3, "installApkMd5"

    const/4 v4, 0x0

    .line 117
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    .line 121
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 123
    sget-object v16, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "active"

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 123
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 133
    :goto_2
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "installApkMd5"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 134
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v3, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v3, v3, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    iget-object v4, v14, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 135
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v2

    const/4 v3, 0x1

    .line 138
    invoke-virtual {v2, v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 139
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/io/File;)V

    .line 140
    sget-object v2, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/global/f;->a()V

    .line 141
    const-string v2, "upgrade success"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    :cond_3
    :goto_3
    const-string v2, "[this md5:%s] [strategy md5:%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v13, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v5, v5, Lcom/tencent/bugly/proguard/v;->i:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 150
    :cond_4
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :try_start_4
    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    new-instance v3, Lcom/tencent/bugly/beta/download/BetaReceiver;

    invoke-direct {v3}, Lcom/tencent/bugly/beta/download/BetaReceiver;-><init>()V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    iget-boolean v2, v14, Lcom/tencent/bugly/beta/global/e;->d:Z

    if-eqz v2, :cond_5

    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/Beta;->checkUpgrade(ZZ)V

    .line 163
    :cond_5
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->F:Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaUploadStrategy;->a:Lcom/tencent/bugly/proguard/bl;

    iget-boolean v2, v2, Lcom/tencent/bugly/proguard/bl;->b:Z

    if-eqz v2, :cond_6

    .line 164
    sget-object v2, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/p;->a()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 165
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 166
    sget-object v3, Lcom/tencent/bugly/beta/upgrade/b;->a:Lcom/tencent/bugly/beta/upgrade/b;

    new-instance v4, Lcom/tencent/bugly/proguard/x;

    invoke-direct {v4, v2}, Lcom/tencent/bugly/proguard/x;-><init>(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/tencent/bugly/beta/upgrade/b;->a(Lcom/tencent/bugly/proguard/x;Z)V

    .line 170
    :cond_6
    const-string v2, "Beta async init end..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v2

    .line 172
    :try_start_5
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 506
    :catch_1
    move-exception v2

    .line 507
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    :catch_2
    move-exception v2

    .line 92
    const/4 v2, 0x0

    :try_start_6
    iput-object v2, v14, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    goto/16 :goto_1

    .line 151
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 129
    :cond_7
    :try_start_8
    const-string v2, "activated from the other way"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 143
    :cond_8
    const-string v2, "delete strategy failed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    .line 180
    :pswitch_1
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;Z)V

    goto/16 :goto_0

    .line 184
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v11, v0

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 187
    iget-boolean v3, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    if-nez v3, :cond_9

    .line 189
    const/4 v3, 0x1

    iput-boolean v3, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    .line 191
    const-string v3, "st.bch"

    invoke-static {v3, v11}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 195
    :cond_9
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 196
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_a

    .line 198
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    iget-object v9, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 198
    invoke-virtual {v13, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 205
    :cond_a
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    iget-object v9, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 205
    invoke-virtual {v13, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 216
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v11, v0

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 220
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 221
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    .line 223
    if-nez v3, :cond_b

    iget-object v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    if-eq v2, v6, :cond_b

    .line 225
    iget v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    .line 227
    :cond_b
    const-string v2, "st.bch"

    invoke-static {v2, v11}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 230
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    iget-object v9, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 230
    invoke-virtual {v13, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 240
    :pswitch_4
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/Integer;

    .line 241
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 240
    invoke-static {v4, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 246
    :pswitch_5
    monitor-enter p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 247
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_c

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 251
    :cond_c
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v2

    .line 256
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/h;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/ui/h;->c()V

    goto/16 :goto_0

    .line 261
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/List;

    .line 262
    if-eqz v2, :cond_0

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 264
    if-eqz v2, :cond_d

    .line 265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/download/DownloadListener;->onCompleted(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto :goto_4

    .line 272
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/List;

    .line 273
    if-eqz v2, :cond_0

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 275
    if-eqz v2, :cond_e

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/download/DownloadListener;->onReceive(Lcom/tencent/bugly/beta/download/DownloadTask;)V

    goto :goto_5

    .line 283
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/List;

    .line 284
    if-eqz v2, :cond_0

    .line 285
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 286
    if-eqz v2, :cond_f

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Lcom/tencent/bugly/beta/download/DownloadTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v6, 0x2

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/Integer;

    .line 288
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/String;

    .line 287
    invoke-interface {v2, v3, v6, v4}, Lcom/tencent/bugly/beta/download/DownloadListener;->onFailed(Lcom/tencent/bugly/beta/download/DownloadTask;ILjava/lang/String;)V

    goto :goto_6

    .line 298
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    check-cast v3, Ljava/lang/Long;

    .line 299
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 298
    invoke-static {v2, v4, v5, v6, v7}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BetaAct TYPE_actCanShow checking : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 306
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Lcom/tencent/bugly/beta/upgrade/a;

    .line 309
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v12, v4, v5

    monitor-enter v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 310
    if-nez v2, :cond_10

    :try_start_c
    iget-boolean v2, v3, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    if-nez v2, :cond_10

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 312
    iget v4, v3, Lcom/tencent/bugly/beta/upgrade/a;->b:I

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "request is not finished"

    invoke-virtual/range {v3 .. v11}, Lcom/tencent/bugly/beta/upgrade/a;->a(ILcom/tencent/bugly/proguard/bj;JJZLjava/lang/String;)V

    .line 314
    iget-object v2, v3, Lcom/tencent/bugly/beta/upgrade/a;->c:[Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 315
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/tencent/bugly/beta/upgrade/a;->d:Z

    .line 316
    const-string v2, "request is not finished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 318
    :cond_10
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v2

    .line 325
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/b;

    invoke-virtual {v2}, Lcom/tencent/bugly/beta/ui/b;->b()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {}, Lcom/tencent/bugly/beta/ui/g;->a()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/tencent/bugly/beta/ui/BetaActivity;

    .line 326
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 327
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    check-cast v2, Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 329
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/ui/b;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    check-cast v3, Ljava/lang/Long;

    .line 330
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 329
    invoke-static {v2, v4, v5, v6, v7}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V

    goto/16 :goto_0

    .line 335
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/download/DownloadTask;

    move-object v13, v0

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    move-object v0, v2

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v14, v0

    .line 338
    if-eqz v13, :cond_13

    if-nez v14, :cond_14

    .line 339
    :cond_13
    const-string v2, "strategyTask or betaStrategy is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 343
    :cond_14
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 349
    :pswitch_e
    iget-boolean v2, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    if-nez v2, :cond_15

    .line 351
    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    .line 353
    const-string v2, "st.bch"

    invoke-static {v2, v14}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 357
    :cond_15
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    if-eq v2, v6, :cond_16

    .line 358
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_17

    .line 360
    sget-object v15, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const-wide/16 v7, 0x0

    iget-object v9, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 360
    invoke-virtual {v15, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 374
    :cond_16
    :goto_7
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_18

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    .line 376
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->getSaveFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 375
    invoke-static {v2, v3, v4}, Lcom/tencent/bugly/beta/global/a;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 379
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "install"

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    iget-object v9, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 379
    invoke-virtual {v13, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 367
    :cond_17
    sget-object v15, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    iget-object v9, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v14, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 367
    invoke-virtual {v15, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto :goto_7

    .line 385
    :cond_18
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->download()V

    goto/16 :goto_0

    .line 390
    :pswitch_f
    invoke-virtual {v13}, Lcom/tencent/bugly/beta/download/DownloadTask;->stop()V

    goto/16 :goto_0

    .line 399
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    move-object v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v11, v0

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 403
    if-eqz v2, :cond_19

    if-nez v11, :cond_1a

    .line 404
    :cond_19
    const-string v2, "strategyTask or betaStrategy is null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 407
    :cond_1a
    invoke-virtual {v2}, Lcom/tencent/bugly/beta/download/DownloadTask;->getStatus()I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 408
    const/4 v2, 0x0

    iput-boolean v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->d:Z

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->c:J

    .line 410
    if-nez v3, :cond_1b

    iget-object v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    if-eq v2, v6, :cond_1b

    .line 412
    iget v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->b:I

    .line 414
    :cond_1b
    const-string v2, "st.bch"

    invoke-static {v2, v11}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable;)Z

    .line 417
    sget-object v13, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v2, Lcom/tencent/bugly/proguard/w;

    const-string v3, "pop"

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x2

    const-wide/16 v7, 0x0

    iget-object v9, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->e:Lcom/tencent/bugly/proguard/v;

    iget-object v10, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v10, v10, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v11, v11, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v11, v11, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 417
    invoke-virtual {v13, v2}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    goto/16 :goto_0

    .line 429
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    check-cast v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 432
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v4, v4, v7

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v8, 0x4

    aget-object v4, v4, v8

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 434
    if-nez v3, :cond_1c

    move-object v3, v5

    :goto_8
    invoke-interface {v2, v6, v3, v7, v8}, Lcom/tencent/bugly/beta/upgrade/UpgradeListener;->onUpgrade(ILcom/tencent/bugly/beta/UpgradeInfo;ZZ)V

    goto/16 :goto_0

    :cond_1c
    new-instance v4, Lcom/tencent/bugly/beta/UpgradeInfo;

    iget-object v3, v3, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v4, v3}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    move-object v3, v4

    goto :goto_8

    .line 443
    :pswitch_12
    :try_start_e
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 444
    if-eqz v2, :cond_1d

    .line 445
    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-class v5, Lcom/tencent/bugly/beta/ui/BetaActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    if-eqz v3, :cond_1d

    .line 447
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    .line 448
    if-ne v4, v6, :cond_1d

    .line 449
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 456
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    check-cast v4, Lcom/tencent/bugly/beta/ui/b;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v3, Landroid/content/Intent;

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-class v4, Lcom/tencent/bugly/beta/ui/BetaActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    const-string v4, "frag"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 460
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_0

    .line 461
    :catch_3
    move-exception v2

    .line 462
    :try_start_f
    const-string/jumbo v3, "\u65e0\u6cd5\u6b63\u5e38\u5f39\u7a97\uff0c\u8bf7\u5728AndroidManifest.xml\u4e2d\u6dfb\u52a0BetaActivity\u58f0\u660e\uff1a\n<activity\n    android:name=\"com.tencent.bugly.beta.ui.BetaActivity\"\n    android:theme=\"@android:style/Theme.Translucent\" />"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 465
    invoke-static {v2}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 466
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 473
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    .line 474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v5, 0x2

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 476
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 484
    :pswitch_14
    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onUpgradeFailed(Z)V

    goto/16 :goto_0

    .line 478
    :pswitch_15
    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onUpgradeSuccess(Z)V

    goto/16 :goto_0

    .line 481
    :pswitch_16
    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onUpgradeNoVersion(Z)V

    goto/16 :goto_0

    .line 487
    :pswitch_17
    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onUpgrading(Z)V

    goto/16 :goto_0

    .line 490
    :pswitch_18
    invoke-interface {v2, v3}, Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;->onDownloadCompleted(Z)V

    goto/16 :goto_0

    .line 498
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 500
    invoke-static {v3, v2}, Lcom/tencent/bugly/beta/Beta;->checkUpgrade(ZZ)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_10
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_19
    .end packed-switch

    .line 343
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    .line 476
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
