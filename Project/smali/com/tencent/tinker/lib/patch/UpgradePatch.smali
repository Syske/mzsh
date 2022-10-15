.class public Lcom/tencent/tinker/lib/patch/UpgradePatch;
.super Lcom/tencent/tinker/lib/patch/AbstractPatch;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.UpgradePatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/tinker/lib/patch/AbstractPatch;-><init>()V

    return-void
.end method


# virtual methods
.method public tryPatch(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tempPatchPath"    # Ljava/lang/String;
    .param p3, "patchResult"    # Lcom/tencent/tinker/lib/service/PatchResult;

    .prologue
    .line 44
    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v5

    .line 46
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 49
    :cond_0
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:patch is disabled, just return"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v2, 0x0

    .line 153
    :goto_0
    return v2

    .line 53
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 54
    :cond_2
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:patch file is not found, just return"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v2, 0x0

    goto :goto_0

    .line 58
    :cond_3
    new-instance v6, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerFlags()I

    move-result v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v6}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v2

    .line 61
    if-eqz v2, :cond_4

    .line 62
    const-string v4, "Tinker.UpgradePatch"

    const-string v6, "UpgradePatch tryPatch:onPatchPackageCheckFail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5, v2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V

    .line 64
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    move-result-object v2

    iget-object v4, v2, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    .line 69
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 71
    if-nez v7, :cond_5

    .line 72
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:patch md5 is null, just return"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_5
    move-object/from16 v0, p3

    iput-object v7, v0, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    .line 82
    if-eqz v4, :cond_a

    .line 83
    iget-object v2, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 84
    :cond_6
    const-string v2, "Tinker.UpgradePatch"

    const-string v6, "UpgradePatch tryPatch:onPatchInfoCorrupted"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v4, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v2, v3, v5, v4, v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    const/4 v2, 0x0

    goto :goto_0

    .line 89
    :cond_7
    iget-object v2, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 90
    :cond_8
    const-string v2, "Tinker.UpgradePatch"

    const-string v6, "UpgradePatch tryPatch:onPatchVersionCheckFail"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v6, v8}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v7, v5}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V

    .line 92
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 94
    :cond_9
    new-instance v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v4, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v2, v4, v7, v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_1
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 102
    const-string v4, "Tinker.UpgradePatch"

    const-string v8, "UpgradePatch tryPatch:patchMd5:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v4, v8, v9}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    const-string v4, "Tinker.UpgradePatch"

    const-string v9, "UpgradePatch tryPatch:patchVersionDirectory:%s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v10, v12

    invoke-static {v4, v9, v10}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    :try_start_0
    invoke-static {v3, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V

    .line 118
    const-string v7, "Tinker.UpgradePatch"

    const-string v9, "UpgradePatch after %s size:%d, %s size:%d"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x2

    .line 119
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    const/4 v12, 0x3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v10, v12

    .line 118
    invoke-static {v7, v9, v10}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v10, 0x1

    move-object/from16 v7, p1

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->tryRecoverDexFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v7

    if-nez v7, :cond_b

    .line 129
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:new patch recover, try patch dex failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 96
    :cond_a
    new-instance v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    const-string v4, ""

    sget-object v8, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v2, v4, v7, v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 120
    :catch_0
    move-exception v2

    .line 122
    const-string v2, "Tinker.UpgradePatch"

    const-string v6, "UpgradePatch tryPatch:copy patch file fail from %s to %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 124
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 133
    :cond_b
    const/4 v10, 0x1

    move-object/from16 v7, p1

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/tinker/lib/patch/BsDiffPatchInternal;->tryRecoverLibraryFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v7

    if-nez v7, :cond_c

    .line 134
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:new patch recover, try patch library failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 138
    :cond_c
    const/4 v10, 0x1

    move-object/from16 v7, p1

    move-object v9, v4

    invoke-static/range {v5 .. v10}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->tryRecoverResourceFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v4

    if-nez v4, :cond_d

    .line 139
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch:new patch recover, try patch resource failed"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 143
    :cond_d
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchInfoFile()Ljava/io/File;

    move-result-object v4

    .line 145
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v2, v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 146
    const-string v4, "Tinker.UpgradePatch"

    const-string v6, "UpgradePatch tryPatch:new patch recover, rewrite patch info failed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {v5}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v4

    iget-object v5, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v4, v3, v5, v2, v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 148
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 152
    :cond_e
    const-string v2, "Tinker.UpgradePatch"

    const-string v3, "UpgradePatch tryPatch: done, it is ok"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
