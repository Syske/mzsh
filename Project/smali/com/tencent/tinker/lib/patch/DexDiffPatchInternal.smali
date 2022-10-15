.class public Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;
.super Lcom/tencent/tinker/lib/patch/BasePatchInternal;
.source "BUGLY"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Tinker.DexDiffPatchInternal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;-><init>()V

    return-void
.end method

.method private static extractDexDiffInternals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "meta"    # Ljava/lang/String;
    .param p3, "patchFile"    # Ljava/io/File;
    .param p4, "type"    # I
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->parseDexDiffPatchInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 122
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v3, "extract patch list is empty! type:%s:"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    const/4 v2, 0x1

    .line 279
    :goto_0
    return v2

    .line 127
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 132
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v13

    .line 133
    const/4 v4, 0x0

    .line 134
    const/4 v3, 0x0

    .line 136
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 137
    if-nez v5, :cond_2

    .line 139
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v5, "applicationInfo == null!!!!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 140
    const/4 v2, 0x0

    .line 276
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 142
    :cond_2
    :try_start_1
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 143
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 144
    :try_start_2
    new-instance v11, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 146
    :try_start_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 149
    iget-object v2, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->path:Ljava/lang/String;

    .line 151
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 152
    iget-object v2, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object v3, v2

    .line 157
    :goto_2
    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->dexDiffMd5:Ljava/lang/String;

    .line 158
    iget-object v6, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->oldDexCrC:Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 161
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v4, "patch dex %s is only for art, just continue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 273
    :catch_0
    move-exception v2

    move-object v3, v11

    move-object v4, v12

    .line 274
    :goto_3
    :try_start_4
    new-instance v5, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "patch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " extract failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    :catchall_0
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    :goto_4
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v2

    .line 154
    :cond_4
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    .line 164
    :cond_5
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    .line 166
    :goto_5
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 167
    const-string v3, "Tinker.DexDiffPatchInternal"

    const-string v4, "meta file md5 invalid, type:%s, name: %s, md5: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;->getMetaCorruptedCode(I)I

    move-result v3

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 169
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 164
    :cond_6
    :try_start_6
    iget-object v2, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    goto :goto_5

    .line 172
    :cond_7
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->realName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 176
    invoke-static {v4, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 178
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v3, "dex file %s is already exist, and md5 match, just continue"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 276
    :catchall_1
    move-exception v2

    goto/16 :goto_4

    .line 181
    :cond_8
    const-string v7, "Tinker.DexDiffPatchInternal"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "have a mismatch corrupted dex "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v10}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 188
    :goto_6
    invoke-virtual {v11, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 189
    invoke-virtual {v12, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v7

    .line 191
    const-string v10, "0"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 192
    if-nez v8, :cond_a

    .line 193
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "patch entry is null. path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 195
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 185
    :cond_9
    :try_start_7
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    goto :goto_6

    .line 199
    :cond_a
    invoke-static {v11, v8, v4, v9}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->extractDexFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 200
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to extract raw patch file "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 202
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 204
    :cond_b
    :try_start_8
    const-string v10, "0"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 206
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 210
    if-nez v7, :cond_c

    .line 211
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apk entry is null. path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 213
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 217
    :cond_c
    :try_start_9
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 219
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v7, "apk entry %s crc is not equal, expect crc: %s, got crc: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v8, v10

    const/4 v3, 0x1

    aput-object v6, v8, v3

    const/4 v3, 0x2

    aput-object v5, v8, v3

    invoke-static {v2, v7, v8}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 221
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 226
    :cond_d
    :try_start_a
    invoke-static {v12, v7, v4, v9}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->extractDexFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    .line 228
    invoke-static {v4, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 229
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to recover dex file when verify patched dex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 231
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 232
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 235
    :cond_e
    if-nez v8, :cond_f

    .line 236
    :try_start_b
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "patch entry is null. path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 238
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 241
    :cond_f
    :try_start_c
    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 242
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v3, "meta file md5 invalid, type:%s, name: %s, md5: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;->getMetaCorruptedCode(I)I

    move-result v3

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 244
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 247
    :cond_10
    if-nez v7, :cond_11

    .line 248
    :try_start_d
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apk entry is null. path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 250
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 253
    :cond_11
    :try_start_e
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 255
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v7, "apk entry %s crc is not equal, expect crc: %s, got crc: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v8, v10

    const/4 v3, 0x1

    aput-object v6, v8, v3

    const/4 v3, 0x2

    aput-object v5, v8, v3

    invoke-static {v2, v7, v8}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 257
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    :cond_12
    move-object v5, v12

    move-object v6, v11

    move-object v10, v4

    .line 260
    :try_start_f
    invoke-static/range {v5 .. v10}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->patchDexFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;Ljava/io/File;)V

    .line 262
    invoke-static {v4, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 263
    const-string v2, "Tinker.DexDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to recover dex file when verify patched dex: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v13}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v5, v9, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    move-object/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 265
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 266
    const/4 v2, 0x0

    .line 276
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 269
    :cond_13
    :try_start_10
    const-string v2, "Tinker.DexDiffPatchInternal"

    const-string v3, "success recover dex file: %s, use time: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 270
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v4

    .line 269
    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .line 276
    :cond_14
    invoke-static {v12}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 277
    invoke-static {v11}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 279
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 276
    :catchall_2
    move-exception v2

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_4

    :catchall_3
    move-exception v2

    move-object v11, v3

    goto/16 :goto_4

    .line 273
    :catch_1
    move-exception v2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v4, v12

    goto/16 :goto_3
.end method

.method private static extractDexFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z
    .locals 3
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "entryFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "dexInfo"    # Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    .line 349
    :goto_0
    iget-object v1, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    .line 350
    iget-boolean v2, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->isJarMode:Z

    .line 352
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isRawDexFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 353
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->extractDexToJar(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 355
    :goto_1
    return v0

    .line 348
    :cond_0
    iget-object v0, p3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_1
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private static extractDexToJar(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p1, "entryFile"    # Ljava/util/zip/ZipEntry;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "targetMd5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 293
    move v0, v4

    move v1, v4

    .line 295
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    if-nez v0, :cond_2

    .line 296
    add-int/lit8 v5, v1, 0x1

    .line 298
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 299
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 304
    const-string v1, "Tinker.DexDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "try Extracting "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 310
    const/16 v0, 0x4000

    :try_start_2
    new-array v6, v0, [B

    .line 311
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string v7, "classes.dex"

    invoke-direct {v0, v7}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 313
    invoke-virtual {v1, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    .line 314
    :goto_1
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 315
    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7, v0}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 316
    invoke-virtual {v1, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v0

    goto :goto_1

    .line 318
    :cond_0
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 320
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 324
    invoke-static {p2, p3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    .line 325
    const-string v1, "Tinker.DexDiffPatchInternal"

    const-string v3, "isExtractionSuccessful: %b"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v3, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    if-nez v0, :cond_1

    .line 328
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 329
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    const-string v1, "Tinker.DexDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete corrupted dex "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v1, v5

    .line 333
    goto/16 :goto_0

    .line 320
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 321
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 334
    :cond_2
    return v0

    .line 320
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method private static patchDexExtractViaDexDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchVersionDirectory"    # Ljava/lang/String;
    .param p2, "meta"    # Ljava/lang/String;
    .param p3, "patchFile"    # Ljava/io/File;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 76
    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->extractDexDiffInternals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    const-string v0, "Tinker.DexDiffPatchInternal"

    const-string v1, "patch recover, extractDiffInternals fail"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 113
    :goto_1
    return v0

    .line 75
    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    .line 81
    :cond_1
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 83
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_3

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "odex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 94
    :cond_2
    new-instance v4, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;

    invoke-direct {v4, v0, p3, v2, p4}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;-><init>(Lcom/tencent/tinker/lib/tinker/Tinker;Ljava/io/File;Ljava/lang/String;Z)V

    invoke-static {v1, v3, v4}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;->optimizeAll([Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z

    move-result v0

    goto :goto_1

    .line 113
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static patchDexFile(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/util/zip/ZipEntry;Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;Ljava/io/File;)V
    .locals 8
    .param p0, "baseApk"    # Ljava/util/zip/ZipFile;
    .param p1, "patchPkg"    # Ljava/util/zip/ZipFile;
    .param p2, "oldDexEntry"    # Ljava/util/zip/ZipEntry;
    .param p3, "patchFileEntry"    # Ljava/util/zip/ZipEntry;
    .param p4, "patchInfo"    # Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;
    .param p5, "patchedDexFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 380
    .line 383
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v5

    .line 384
    if-eqz p3, :cond_3

    :try_start_1
    invoke-virtual {p1, p3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v4

    .line 386
    :goto_0
    :try_start_2
    iget-object v0, p4, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->rawName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->isRawDexFile(Ljava/lang/String;)Z

    move-result v0

    .line 387
    if-eqz v0, :cond_0

    iget-boolean v1, p4, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->isJarMode:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_6

    .line 390
    :cond_0
    :try_start_3
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 391
    :try_start_4
    new-instance v1, Ljava/util/zip/ZipEntry;

    const-string v6, "classes.dex"

    invoke-direct {v1, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 393
    if-nez v0, :cond_5

    .line 396
    :try_start_5
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 398
    :cond_1
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    const-string v2, "classes.dex"

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    :cond_2
    if-nez v0, :cond_4

    .line 402
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t recognize zip dex format file:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 406
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_7
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 413
    :catchall_1
    move-exception v0

    move-object v2, v3

    :goto_2
    :try_start_8
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 419
    :catchall_2
    move-exception v0

    move-object v2, v4

    move-object v1, v5

    :goto_3
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 420
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_3
    move-object v4, v2

    .line 384
    goto :goto_0

    .line 404
    :cond_4
    :try_start_9
    new-instance v2, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v0, v6

    invoke-direct {v2, v1, v0, v4}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Ljava/io/InputStream;ILjava/io/InputStream;)V

    invoke-virtual {v2, v3}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->executeAndSaveTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 406
    :try_start_a
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 411
    :goto_4
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 413
    :try_start_b
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 419
    :goto_5
    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 420
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 422
    return-void

    .line 409
    :cond_5
    :try_start_c
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    long-to-int v1, v6

    invoke-direct {v0, v5, v1, v4}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Ljava/io/InputStream;ILjava/io/InputStream;)V

    invoke-virtual {v0, v3}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->executeAndSaveTo(Ljava/io/OutputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_4

    .line 416
    :cond_6
    :try_start_d
    new-instance v0, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;

    invoke-virtual {p2}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v5, v1, v4}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;-><init>(Ljava/io/InputStream;ILjava/io/InputStream;)V

    invoke-virtual {v0, p5}, Lcom/tencent/tinker/commons/dexpatcher/DexPatchApplier;->executeAndSaveTo(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_5

    .line 419
    :catchall_3
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v5

    goto :goto_3

    .line 413
    :catchall_5
    move-exception v0

    goto :goto_2

    .line 406
    :catchall_6
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected static tryRecoverDexFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 9
    .param p0, "manager"    # Lcom/tencent/tinker/lib/tinker/Tinker;
    .param p1, "checker"    # Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "patchVersionDirectory"    # Ljava/lang/String;
    .param p4, "patchFile"    # Ljava/io/File;
    .param p5, "isUpgradePatch"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isEnabledForDex()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "Tinker.DexDiffPatchInternal"

    const-string v2, "patch recover, dex is not enabled"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "assets/dex_meta.txt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    if-nez v0, :cond_1

    .line 61
    const-string v0, "Tinker.DexDiffPatchInternal"

    const-string v2, "patch recover, dex is not contained"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 66
    invoke-static {p2, p3, v0, p4, p5}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->patchDexExtractViaDexDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 68
    const-string v4, "Tinker.DexDiffPatchInternal"

    const-string v5, "recover dex result:%b, cost:%d, isUpgradePatch:%b"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v4, v5, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
