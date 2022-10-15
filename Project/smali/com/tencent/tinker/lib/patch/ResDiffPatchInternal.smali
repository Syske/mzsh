.class public Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;
.super Lcom/tencent/tinker/lib/patch/BasePatchInternal;
.source "BUGLY"


# static fields
.field protected static final TAG:Ljava/lang/String; = "Tinker.ResDiffPatchInternal"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;-><init>()V

    return-void
.end method

.method private static checkAndExtractResourceLargeFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;IZ)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "patchFile"    # Ljava/io/File;
    .param p4, "resPatchInfo"    # Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;
    .param p5, "type"    # I
    .param p6, "isUpgradePatch"    # Z

    .prologue
    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 229
    invoke-static/range {p0 .. p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v7

    .line 230
    const/4 v3, 0x0

    .line 231
    const/4 v8, 0x0

    .line 234
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 235
    :try_start_1
    const-string v2, "resources.arsc"

    invoke-virtual {v9, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 236
    new-instance v4, Ljava/io/File;

    const-string v3, "resources.arsc"

    move-object/from16 v0, p2

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    if-nez v2, :cond_0

    .line 238
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "resources apk entry is null. path:resources.arsc"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    const-string v5, "resources.arsc"

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 240
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 315
    :goto_0
    return v2

    .line 243
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 244
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->arscBaseCrc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 245
    const-string v3, "Tinker.ResDiffPatchInternal"

    const-string v5, "resources.arsc\'s crc is not equal, expect crc: %s, got crc: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->arscBaseCrc:Ljava/lang/String;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    aput-object v2, v6, v10

    invoke-static {v3, v5, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    const-string v5, "resources.arsc"

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 247
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 251
    :cond_1
    :try_start_3
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 252
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "no large modify resources, just return"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 253
    const/4 v2, 0x1

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto :goto_0

    .line 255
    :cond_2
    :try_start_4
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result-object v12

    move-object v4, v8

    :goto_1
    :try_start_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 257
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    move-object v3, v0

    .line 259
    if-nez v3, :cond_3

    .line 260
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "resource not found largeModeInfo, type:%s, name: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {p5 .. p5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v8

    const/4 v8, 0x1

    aput-object v5, v6, v8

    invoke-static {v2, v3, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;->getMetaCorruptedCode(I)I

    move-result v3

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 262
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 265
    :cond_3
    :try_start_6
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    .line 266
    iget-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->ensureFileDirectory(Ljava/io/File;)V

    .line 269
    iget-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 270
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v6, "resource meta file md5 mismatch, type:%s, name: %s, md5: %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {p5 .. p5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v5, v8, v10

    const/4 v5, 0x2

    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    aput-object v3, v8, v5

    invoke-static {v2, v6, v8}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;->getMetaCorruptedCode(I)I

    move-result v3

    move-object/from16 v0, p3

    move/from16 v1, p6

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 272
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 274
    :cond_4
    :try_start_7
    new-instance v8, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 275
    :try_start_8
    invoke-virtual {v8, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 276
    if-nez v2, :cond_5

    .line 277
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "large mod patch entry is null. path:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 279
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 282
    :cond_5
    :try_start_9
    invoke-virtual {v9, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    .line 283
    if-nez v13, :cond_6

    .line 284
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resources apk entry is null. path:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 286
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 288
    :cond_6
    const/4 v6, 0x0

    .line 289
    const/4 v4, 0x0

    .line 291
    :try_start_a
    invoke-virtual {v9, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v6

    .line 292
    :try_start_b
    invoke-virtual {v8, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-result-object v4

    .line 293
    :try_start_c
    iget-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v6, v4, v2}, Lcom/tencent/tinker/bsdiff/BSPatch;->patchFast(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/File;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 295
    :try_start_d
    invoke-static {v6}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    iget-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    iget-object v4, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->md5:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 300
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v4, "Failed to recover large modify file:%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-static {v2, v4, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    iget-object v2, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 302
    invoke-virtual {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    iget-object v4, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 303
    const/4 v2, 0x0

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    goto/16 :goto_0

    .line 295
    :catchall_0
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    :goto_2
    :try_start_e
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 308
    :catch_0
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    .line 310
    :goto_3
    :try_start_f
    new-instance v5, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "patch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

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
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 312
    :catchall_1
    move-exception v2

    move-object v8, v3

    move-object v9, v4

    :goto_4
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    throw v2

    .line 305
    :cond_7
    :try_start_10
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v4, "success recover large modify file:%s , file size:%d, use time:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v13, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    const/4 v6, 0x1

    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v16, v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object v4, v8

    .line 306
    goto/16 :goto_1

    .line 307
    :cond_8
    :try_start_11
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "success recover all large modify use time:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 312
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 313
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->closeZip(Ljava/util/zip/ZipFile;)V

    .line 315
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 312
    :catchall_2
    move-exception v2

    move-object v9, v3

    goto :goto_4

    :catchall_3
    move-exception v2

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v8, v4

    goto :goto_4

    .line 308
    :catch_1
    move-exception v2

    move-object v4, v3

    move-object v3, v8

    goto/16 :goto_3

    :catch_2
    move-exception v2

    move-object v3, v8

    move-object v4, v9

    goto/16 :goto_3

    :catch_3
    move-exception v2

    move-object v3, v4

    move-object v4, v9

    goto/16 :goto_3

    .line 295
    :catchall_5
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_2

    :catchall_6
    move-exception v2

    move-object v3, v4

    move-object v4, v6

    goto/16 :goto_2
.end method

.method private static extractResourceDiffInternals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "meta"    # Ljava/lang/String;
    .param p3, "patchFile"    # Ljava/io/File;
    .param p4, "type"    # I
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 84
    new-instance v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;

    invoke-direct {v6}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;-><init>()V

    .line 85
    move-object/from16 v0, p2

    invoke-static {v0, v6}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->parseAllResPatchInfo(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;)V

    .line 86
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "res dir: %s, meta: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v6}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-static/range {p0 .. p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v11

    .line 89
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkIfMd5Valid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "resource meta file md5 mismatch, type:%s, md5: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    iget-object v6, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/lib/patch/BasePatchInternal;->getMetaCorruptedCode(I)I

    move-result v3

    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V

    .line 92
    const/4 v2, 0x0

    .line 223
    :goto_0
    return v2

    .line 94
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    new-instance v9, Ljava/io/File;

    const-string v2, "resources.apk"

    invoke-direct {v9, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkResourceArscMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "resource file %s is already exist, and md5 match, just return true"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    :cond_1
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have a mismatch corrupted resource "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 112
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 113
    if-nez v2, :cond_3

    .line 115
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "applicationInfo == null!!!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    .line 118
    :cond_3
    :try_start_1
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 120
    invoke-static/range {v2 .. v8}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->checkAndExtractResourceLargeFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;IZ)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-nez v2, :cond_4

    .line 121
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    :cond_4
    const/4 v7, 0x0

    .line 125
    const/4 v4, 0x0

    .line 126
    const/4 v5, 0x0

    .line 127
    const/4 v2, 0x0

    .line 129
    :try_start_2
    new-instance v14, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;

    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v14, v8}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 130
    :try_start_3
    new-instance v13, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;

    invoke-direct {v13, v3}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 131
    :try_start_4
    new-instance v4, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 132
    :try_start_5
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    move v3, v2

    .line 133
    :goto_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;

    .line 135
    if-nez v2, :cond_8

    .line 136
    new-instance v2, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string/jumbo v3, "zipEntry is null when get from oldApk"

    invoke-direct {v2, v3}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 195
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v5, v14

    move-object v2, v4

    move-object v4, v13

    :goto_3
    if-eqz v5, :cond_5

    .line 196
    :try_start_6
    invoke-virtual {v5}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_5
    if-eqz v4, :cond_6

    .line 199
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_6
    if-eqz v2, :cond_7

    .line 202
    invoke-virtual {v2}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_7
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_4

    .line 219
    :catch_0
    move-exception v2

    .line 221
    new-instance v3, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "patch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p4 .. p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extract failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 138
    :cond_8
    :try_start_7
    invoke-virtual {v2}, Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 139
    iget-object v8, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->patterns:Ljava/util/HashSet;

    invoke-static {v8, v7}, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->checkFileInPattern(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 141
    iget-object v8, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->deleteRes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    iget-object v8, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->modRes:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    iget-object v8, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_27

    const-string v8, "AndroidManifest.xml"

    .line 144
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 145
    invoke-static {v13, v2, v14}, Lcom/tencent/tinker/commons/resutil/ResUtil;->extractTinkerEntry(Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;)V

    .line 146
    add-int/lit8 v2, v3, 0x1

    :goto_5
    move v3, v2

    .line 149
    goto/16 :goto_2

    .line 152
    :cond_9
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v13, v2}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->getEntry(Ljava/lang/String;)Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;

    move-result-object v2

    .line 153
    if-nez v2, :cond_e

    .line 154
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v3, "manifest patch entry is null. path:AndroidManifest.xml"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v7

    const-string v10, "AndroidManifest.xml"

    move-object/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 156
    const/4 v3, 0x0

    .line 195
    if-eqz v14, :cond_a

    .line 196
    :try_start_8
    invoke-virtual {v14}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_a
    if-eqz v13, :cond_b

    .line 199
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_b
    if-eqz v4, :cond_c

    .line 202
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_c
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_6

    :cond_d
    move v2, v3

    .line 156
    goto/16 :goto_0

    .line 158
    :cond_e
    :try_start_9
    invoke-static {v13, v2, v14}, Lcom/tencent/tinker/commons/resutil/ResUtil;->extractTinkerEntry(Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 161
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModRes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 162
    invoke-virtual {v13, v10}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->getEntry(Ljava/lang/String;)Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;

    move-result-object v7

    .line 163
    if-nez v7, :cond_13

    .line 164
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "large patch entry is null. path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v7

    move-object/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 166
    const/4 v3, 0x0

    .line 195
    if-eqz v14, :cond_f

    .line 196
    :try_start_a
    invoke-virtual {v14}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_f
    if-eqz v13, :cond_10

    .line 199
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_10
    if-eqz v4, :cond_11

    .line 202
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_11
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_8

    :cond_12
    move v2, v3

    .line 166
    goto/16 :goto_0

    .line 168
    :cond_13
    :try_start_b
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 169
    iget-object v8, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    iget-wide v0, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->crc:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v7, v8, v0, v1, v14}, Lcom/tencent/tinker/commons/resutil/ResUtil;->extractLargeModifyFile(Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;Ljava/io/File;JLcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;)V

    .line 170
    add-int/lit8 v3, v3, 0x1

    .line 171
    goto :goto_7

    .line 173
    :cond_14
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->addRes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 174
    invoke-virtual {v4, v10}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->getEntry(Ljava/lang/String;)Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;

    move-result-object v3

    .line 175
    if-nez v3, :cond_19

    .line 176
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add patch entry is null. path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v7

    move-object/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 178
    const/4 v3, 0x0

    .line 195
    if-eqz v14, :cond_15

    .line 196
    :try_start_c
    invoke-virtual {v14}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_15
    if-eqz v13, :cond_16

    .line 199
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_16
    if-eqz v4, :cond_17

    .line 202
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_17
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_a

    :cond_18
    move v2, v3

    .line 178
    goto/16 :goto_0

    .line 180
    :cond_19
    :try_start_d
    invoke-static {v4, v3, v14}, Lcom/tencent/tinker/commons/resutil/ResUtil;->extractTinkerEntry(Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;)V

    .line 181
    add-int/lit8 v2, v2, 0x1

    .line 182
    goto :goto_9

    .line 184
    :cond_1a
    iget-object v3, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->modRes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v2

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 185
    invoke-virtual {v4, v10}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->getEntry(Ljava/lang/String;)Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;

    move-result-object v2

    .line 186
    if-nez v2, :cond_1f

    .line 187
    const-string v2, "Tinker.ResDiffPatchInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mod patch entry is null. path:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v7

    move-object/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 189
    const/4 v3, 0x0

    .line 195
    if-eqz v14, :cond_1b

    .line 196
    :try_start_e
    invoke-virtual {v14}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_1b
    if-eqz v13, :cond_1c

    .line 199
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_1c
    if-eqz v4, :cond_1d

    .line 202
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_1d
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_c

    :cond_1e
    move v2, v3

    .line 189
    goto/16 :goto_0

    .line 191
    :cond_1f
    :try_start_f
    invoke-static {v4, v2, v14}, Lcom/tencent/tinker/commons/resutil/ResUtil;->extractTinkerEntry(Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;Lcom/tencent/tinker/commons/ziputil/TinkerZipEntry;Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 192
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 193
    goto :goto_b

    .line 195
    :cond_20
    if-eqz v14, :cond_21

    .line 196
    :try_start_10
    invoke-virtual {v14}, Lcom/tencent/tinker/commons/ziputil/TinkerZipOutputStream;->close()V

    .line 198
    :cond_21
    if-eqz v13, :cond_22

    .line 199
    invoke-virtual {v13}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 201
    :cond_22
    if-eqz v4, :cond_23

    .line 202
    invoke-virtual {v4}, Lcom/tencent/tinker/commons/ziputil/TinkerZipFile;->close()V

    .line 205
    :cond_23
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->largeModMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;

    .line 206
    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo$LargeModeInfo;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_d

    .line 207
    :cond_24
    throw v3

    .line 209
    :cond_25
    iget-object v2, v6, Lcom/tencent/tinker/loader/shareutil/ShareResPatchInfo;->resArscMd5:Ljava/lang/String;

    invoke-static {v9, v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->checkResourceArscMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v2

    .line 211
    if-nez v2, :cond_26

    .line 212
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v4, "check final new resource file fail path:%s, entry count:%d, size:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    invoke-static {v9}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 214
    invoke-virtual {v11}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v7

    const-string v10, "resources.apk"

    move-object/from16 v8, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 215
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 218
    :cond_26
    const-string v2, "Tinker.ResDiffPatchInternal"

    const-string v4, "final new resource file:%s, entry count:%d, size:%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    .line 223
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 195
    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    move-object v5, v7

    goto/16 :goto_3

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v5

    move-object v5, v14

    goto/16 :goto_3

    :catchall_3
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v5

    move-object v5, v14

    goto/16 :goto_3

    :cond_27
    move v2, v3

    goto/16 :goto_5
.end method

.method private static patchResourceExtractViaResourceDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchVersionDirectory"    # Ljava/lang/String;
    .param p2, "meta"    # Ljava/lang/String;
    .param p3, "patchFile"    # Ljava/io/File;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    const/4 v4, 0x7

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->extractResourceDiffInternals(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "Tinker.ResDiffPatchInternal"

    const-string v1, "patch recover, extractDiffInternals fail"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v6

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static tryRecoverResourceFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z
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

    .line 55
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isEnabledForResource()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "Tinker.ResDiffPatchInternal"

    const-string v2, "patch recover, resource is not enabled"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 70
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "assets/res_meta.txt"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 62
    :cond_1
    const-string v0, "Tinker.ResDiffPatchInternal"

    const-string v2, "patch recover, resource is not contained"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 63
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 67
    invoke-static {p2, p3, v0, p4, p5}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->patchResourceExtractViaResourceDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 69
    const-string v4, "Tinker.ResDiffPatchInternal"

    const-string v5, "recover resource result:%b, cost:%d, isNewPatch:%b"

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
