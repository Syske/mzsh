.class public Lcom/tencent/bugly/proguard/r;
.super Ljava/lang/Object;
.source "BUGLY"


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 16

    .prologue
    const/4 v12, 0x0

    .line 54
    const-class v13, Lcom/tencent/bugly/proguard/r;

    monitor-enter v13

    :try_start_0
    sget-object v14, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 56
    const-string v1, "dex"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v2, "tmpPatch"

    const v3, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 60
    new-instance v3, Ljava/io/File;

    const-string v4, "patch.apk"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v14, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    .line 61
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v3, "PatchFile"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "PatchFile"

    iget-object v4, v14, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 67
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v3, "tmpPatch.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v14, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 68
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "PatchFile"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PatchFile"

    iget-object v3, v14, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 73
    :cond_1
    const-string v1, "tmpPatch"

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    iput-object v1, v14, Lcom/tencent/bugly/beta/global/e;->I:Ljava/io/File;

    .line 74
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->I:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "PatchTmpDir"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PatchTmpDir"

    iget-object v3, v14, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 79
    :cond_2
    const-string v1, "st.bch"

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-object v10, v0

    .line 81
    if-eqz v10, :cond_4

    iget-object v1, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_4

    .line 83
    iget-object v1, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v1, v1, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    const-string v2, "H2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v14, Lcom/tencent/bugly/beta/global/e;->M:Ljava/lang/String;

    .line 88
    :cond_3
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "PatchResult"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v14, Lcom/tencent/bugly/beta/global/e;->N:Z

    .line 91
    iget-boolean v1, v14, Lcom/tencent/bugly/beta/global/e;->N:Z

    if-nez v1, :cond_9

    .line 92
    const-string v1, "[patch] inject failure"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 95
    sget-object v15, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "active"

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 95
    invoke-virtual {v15, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z

    .line 102
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const-string v1, "[patch] delete patch.apk success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 124
    :cond_4
    :goto_0
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->H:Ljava/io/File;

    .line 125
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    const-string v1, "[patch] delete tmpPatch.apk success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 130
    :cond_5
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->G:Ljava/io/File;

    .line 131
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 132
    const-string v2, "SHA"

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/au;->b(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_6

    .line 134
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput-object v1, v2, Lcom/tencent/bugly/beta/global/e;->L:Ljava/lang/String;

    .line 138
    :cond_6
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isTinkerManagerInstalled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TINKER_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getNewTinkerId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NEW_TINKER_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lcom/tencent/bugly/beta/global/e;->K:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/r$1;

    invoke-direct {v2, v14}, Lcom/tencent/bugly/proguard/r$1;-><init>(Lcom/tencent/bugly/beta/global/e;)V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setTinkerListenter(Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;)V

    .line 181
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/proguard/r$2;

    invoke-direct {v2}, Lcom/tencent/bugly/proguard/r$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setTinkerReport(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V

    .line 196
    :cond_7
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "BaseArchName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 199
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 200
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 202
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_a

    array-length v1, v2

    if-lez v1, :cond_a

    .line 212
    array-length v3, v2

    move v1, v12

    :goto_1
    if-ge v1, v3, :cond_a

    aget-object v4, v2, v1

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".so"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 214
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".so"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 215
    const-string v6, "lib"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "libName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 217
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 218
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "soFilePath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 219
    invoke-static {v4}, Lcom/tencent/bugly/beta/global/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "archName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 223
    sget-object v6, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v6, v6, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 225
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v6, "BaseArchName"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 226
    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "BaseArchName"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 108
    :cond_9
    const-string v1, "[patch] inject success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "FirstInject"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 110
    iget-object v1, v14, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FirstInject"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    sget-object v15, Lcom/tencent/bugly/proguard/p;->a:Lcom/tencent/bugly/proguard/p;

    new-instance v1, Lcom/tencent/bugly/proguard/w;

    const-string v2, "active"

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    iget-object v9, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget-object v9, v9, Lcom/tencent/bugly/proguard/y;->m:Ljava/lang/String;

    iget-object v10, v10, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v10, v10, Lcom/tencent/bugly/proguard/y;->p:I

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Ljava/lang/String;JBJLcom/tencent/bugly/proguard/v;Ljava/lang/String;ILjava/util/Map;)V

    .line 113
    invoke-virtual {v15, v1}, Lcom/tencent/bugly/proguard/p;->a(Lcom/tencent/bugly/proguard/w;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v13

    throw v1

    .line 234
    :cond_a
    monitor-exit v13

    return-void
.end method
