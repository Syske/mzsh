.class public Lcom/tencent/tinker/loader/TinkerLoader;
.super Lcom/tencent/tinker/loader/AbstractTinkerLoader;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLoader"


# instance fields
.field private patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tencent/tinker/loader/AbstractTinkerLoader;-><init>()V

    return-void
.end method

.method private checkSafeModeCount(Lcom/tencent/tinker/loader/app/TinkerApplication;)Z
    .locals 8
    .param p1, "application"    # Lcom/tencent/tinker/loader/app/TinkerApplication;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 244
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tinker_own_config_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p1, v2, v0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 248
    const-string v4, "safe_mode_count"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 249
    const-string v5, "Tinker.TinkerLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tinker safe mode preferName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " count:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v2, 0x3

    if-lt v4, v2, :cond_0

    .line 251
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "safe_mode_count"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    :goto_0
    return v0

    .line 254
    :cond_0
    invoke-virtual {p1, v1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->setUseSafeMode(Z)V

    .line 255
    add-int/lit8 v0, v4, 0x1

    .line 256
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "safe_mode_count"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    const-string v2, "Tinker.TinkerLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after tinker safe mode count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 258
    goto :goto_0
.end method

.method private tryLoadPatchFilesInternal(Lcom/tencent/tinker/loader/app/TinkerApplication;IZLandroid/content/Intent;)V
    .locals 14
    .param p1, "app"    # Lcom/tencent/tinker/loader/app/TinkerApplication;
    .param p2, "tinkerFlag"    # I
    .param p3, "tinkerLoadVerifyFlag"    # Z
    .param p4, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 240
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 69
    if-nez v2, :cond_1

    .line 70
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:getPatchDirectory == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v2, -0x2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 78
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 79
    const-string v2, "Tinker.TinkerLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryLoadPatchFiles:patch dir not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v2, -0x2

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 88
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    const-string v2, "Tinker.TinkerLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryLoadPatchFiles:patch info not exist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v2, -0x3

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 97
    invoke-static {v6, v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->readAndCheckPropertyWithLock(Ljava/io/File;Ljava/io/File;)Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    .line 98
    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    if-nez v2, :cond_4

    .line 99
    const/4 v2, -0x4

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    :cond_4
    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v3, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    .line 106
    if-eqz v3, :cond_5

    if-nez v2, :cond_6

    .line 108
    :cond_5
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onPatchInfoCorrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, -0x4

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 113
    :cond_6
    const-string v4, "intent_patch_old_version"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v4, "intent_patch_new_version"

    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isInMainProcess(Landroid/content/Context;)Z

    move-result v8

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    .line 120
    :goto_1
    if-eqz v4, :cond_15

    if-eqz v8, :cond_15

    .line 123
    :goto_2
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 124
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:version is blank, wait main process to restart"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v2, -0x5

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 117
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 130
    :cond_8
    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_9

    .line 137
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onPatchVersionDirectoryNotFound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v2, -0x6

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 144
    :cond_9
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    .line 147
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onPatchVersionFileNotFound"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v2, -0x7

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 153
    :cond_a
    new-instance v3, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    invoke-direct {v3, p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    .line 155
    move/from16 v0, p2

    invoke-static {p1, v0, v9, v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v9

    .line 156
    if-eqz v9, :cond_b

    .line 157
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:checkTinkerPackage"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v2, "intent_patch_package_patch_check"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const/4 v2, -0x8

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 163
    :cond_b
    const-string v9, "intent_patch_package_config"

    invoke-virtual {v3}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getPackagePropertiesIfPresent()Ljava/util/HashMap;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 165
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v9

    .line 167
    if-eqz v9, :cond_c

    .line 169
    move-object/from16 v0, p4

    invoke-static {v5, v3, v0}, Lcom/tencent/tinker/loader/TinkerDexLoader;->checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v10

    .line 170
    if-nez v10, :cond_c

    .line 172
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:dex check fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 177
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v10

    .line 179
    if-eqz v10, :cond_d

    .line 181
    move-object/from16 v0, p4

    invoke-static {v5, v3, v0}, Lcom/tencent/tinker/loader/TinkerSoLoader;->checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v10

    .line 182
    if-nez v10, :cond_d

    .line 184
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:native lib check fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 190
    :cond_d
    invoke-static/range {p2 .. p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v10

    .line 191
    const-string v11, "Tinker.TinkerLoader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "tryLoadPatchFiles:isEnabledForResource:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    if-eqz v10, :cond_e

    .line 193
    move-object/from16 v0, p4

    invoke-static {p1, v5, v3, v0}, Lcom/tencent/tinker/loader/TinkerResourceLoader;->checkComplete(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z

    move-result v3

    .line 194
    if-nez v3, :cond_e

    .line 196
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:resource check fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :cond_e
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->fingerPrint:Ljava/lang/String;

    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isSystemOTA(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    .line 204
    :goto_3
    if-nez v3, :cond_f

    if-eqz v8, :cond_11

    if-eqz v4, :cond_11

    .line 206
    :cond_f
    iget-object v4, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iput-object v2, v4, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    .line 208
    iget-object v2, p0, Lcom/tencent/tinker/loader/TinkerLoader;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    invoke-static {v6, v2, v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->rewritePatchInfoFileWithLock(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 209
    const/16 v2, -0x12

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 210
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onReWritePatchInfoCorrupted"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    .line 214
    :cond_11
    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/TinkerLoader;->checkSafeModeCount(Lcom/tencent/tinker/loader/app/TinkerApplication;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 215
    const-string v2, "intent_patch_exception"

    new-instance v3, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v4, "checkSafeModeCount fail"

    invoke-direct {v3, v4}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    const/16 v2, -0x18

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 217
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:checkSafeModeCount fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 221
    :cond_12
    if-eqz v9, :cond_13

    .line 222
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v5, v1, v3}, Lcom/tencent/tinker/loader/TinkerDexLoader;->loadTinkerJars(Landroid/app/Application;ZLjava/lang/String;Landroid/content/Intent;Z)Z

    move-result v2

    .line 223
    if-nez v2, :cond_13

    .line 224
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onPatchLoadDexesFail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 230
    :cond_13
    if-eqz v10, :cond_14

    .line 231
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v0, v5, v1}, Lcom/tencent/tinker/loader/TinkerResourceLoader;->loadTinkerResources(Landroid/content/Context;ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    .line 232
    if-nez v2, :cond_14

    .line 233
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles:onPatchLoadResourcesFail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 239
    const-string v2, "Tinker.TinkerLoader"

    const-string v3, "tryLoadPatchFiles: load end, ok!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_15
    move-object v2, v3

    goto/16 :goto_2
.end method


# virtual methods
.method public tryLoad(Lcom/tencent/tinker/loader/app/TinkerApplication;IZ)Landroid/content/Intent;
    .locals 6
    .param p1, "app"    # Lcom/tencent/tinker/loader/app/TinkerApplication;
    .param p2, "tinkerFlag"    # I
    .param p3, "tinkerLoadVerifyFlag"    # Z

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/tinker/loader/TinkerLoader;->tryLoadPatchFilesInternal(Lcom/tencent/tinker/loader/app/TinkerApplication;IZLandroid/content/Intent;)V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 58
    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentPatchCostTime(Landroid/content/Intent;J)V

    .line 59
    return-object v0
.end method
