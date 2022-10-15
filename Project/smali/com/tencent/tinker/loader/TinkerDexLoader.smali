.class public Lcom/tencent/tinker/loader/TinkerDexLoader;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final DEX_MEAT_FILE:Ljava/lang/String; = "assets/dex_meta.txt"

.field private static final DEX_OPTIMIZE_PATH:Ljava/lang/String; = "odex"

.field private static final DEX_PATH:Ljava/lang/String; = "dex"

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerDexLoader"

.field private static final dexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static parallelOTAResult:Z

.field private static parallelOTAThrowable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAResult:Z

    return p0
.end method

.method static synthetic access$102(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    sput-object p0, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAThrowable:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static checkComplete(Ljava/lang/String;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Intent;)Z
    .locals 9
    .param p0, "directory"    # Ljava/lang/String;
    .param p1, "securityCheck"    # Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;
    .param p2, "intentResult"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;->getMetaContentMap()Ljava/util/HashMap;

    move-result-object v0

    const-string v3, "assets/dex_meta.txt"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    if-nez v0, :cond_0

    move v0, v1

    .line 216
    :goto_0
    return v0

    .line 163
    :cond_0
    sget-object v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 164
    sget-object v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->parseDexDiffPatchInfo(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 166
    sget-object v0, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 167
    goto :goto_0

    .line 170
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 172
    sget-object v0, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    .line 174
    invoke-static {v0}, Lcom/tencent/tinker/loader/TinkerDexLoader;->isJustArtSupportDex(Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 177
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->checkDexDiffPatchInfo(Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 178
    const-string v0, "intent_patch_package_patch_check"

    const/4 v1, -0x3

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const/4 v0, -0x8

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    move v0, v2

    .line 180
    goto :goto_0

    .line 182
    :cond_3
    iget-object v5, v0, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->realName:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 185
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "dex"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 187
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6

    .line 190
    :cond_5
    const/16 v0, -0x9

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    move v0, v2

    .line 191
    goto/16 :goto_0

    .line 194
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "odex"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 199
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 201
    const-string v0, "intent_patch_missing_dex_path"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/16 v0, -0xa

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    move v0, v2

    .line 203
    goto/16 :goto_0

    .line 206
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-static {v7, v5}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->optimizedPathFor(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_7

    .line 208
    const-string v1, "intent_patch_missing_dex_path"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const/16 v0, -0xb

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    move v0, v2

    .line 210
    goto/16 :goto_0

    .line 215
    :cond_9
    const-string v0, "intent_patch_dexes_path"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move v0, v1

    .line 216
    goto/16 :goto_0
.end method

.method private static isJustArtSupportDex(Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z
    .locals 3
    .param p0, "dexDiffPatchInfo"    # Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    iget-object v1, p0, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    .line 226
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadTinkerJars(Landroid/app/Application;ZLjava/lang/String;Landroid/content/Intent;Z)Z
    .locals 16
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "tinkerLoadVerifyFlag"    # Z
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "intentResult"    # Landroid/content/Intent;
    .param p4, "isSystemOTA"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 66
    sget-object v2, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "Tinker.TinkerDexLoader"

    const-string v3, "there is no dex to load"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x1

    .line 147
    :goto_0
    return v2

    .line 71
    :cond_0
    const-class v2, Lcom/tencent/tinker/loader/TinkerDexLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    check-cast v2, Ldalvik/system/PathClassLoader;

    .line 72
    if-eqz v2, :cond_2

    .line 73
    const-string v3, "Tinker.TinkerDexLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "classloader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ldalvik/system/PathClassLoader;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    new-instance v5, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "odex"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v7

    .line 87
    sget-object v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->dexList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;

    .line 89
    invoke-static {v3}, Lcom/tencent/tinker/loader/TinkerDexLoader;->isJustArtSupportDex(Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 92
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->realName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 93
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 95
    if-eqz p1, :cond_5

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 97
    if-eqz v7, :cond_3

    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InArt:Ljava/lang/String;

    .line 98
    :goto_2
    invoke-static {v10, v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyDexFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 100
    const/16 v2, -0xd

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 101
    const-string v2, "intent_patch_mismatch_dex_path"

    .line 102
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 101
    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 75
    :cond_2
    const-string v2, "Tinker.TinkerDexLoader"

    const-string v3, "classloader is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v2, -0xc

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 77
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 97
    :cond_3
    iget-object v3, v3, Lcom/tencent/tinker/loader/shareutil/ShareDexDiffPatchInfo;->destMd5InDvm:Ljava/lang/String;

    goto :goto_2

    .line 105
    :cond_4
    const-string v3, "Tinker.TinkerDexLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "verify dex file:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " md5, use time: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 110
    :cond_6
    if-eqz p4, :cond_7

    .line 111
    const/4 v3, 0x1

    sput-boolean v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAResult:Z

    .line 112
    const/4 v3, 0x0

    sput-object v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAThrowable:Ljava/lang/Throwable;

    .line 113
    const-string v3, "Tinker.TinkerDexLoader"

    const-string v4, "systemOTA, try parallel oat dexes!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v3, Lcom/tencent/tinker/loader/TinkerDexLoader$1;

    invoke-direct {v3}, Lcom/tencent/tinker/loader/TinkerDexLoader$1;-><init>()V

    invoke-static {v6, v5, v3}, Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer;->optimizeAll(Ljava/util/Collection;Ljava/io/File;Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;)Z

    .line 129
    sget-boolean v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAResult:Z

    if-nez v3, :cond_7

    .line 130
    const-string v2, "Tinker.TinkerDexLoader"

    const-string v3, "parallel oat dexes failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const-string v2, "intent_patch_exception"

    sget-object v3, Lcom/tencent/tinker/loader/TinkerDexLoader;->parallelOTAThrowable:Ljava/lang/Throwable;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 132
    const/16 v2, -0xf

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 133
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 137
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v2, v5, v6}, Lcom/tencent/tinker/loader/SystemClassLoaderAdder;->installDexes(Landroid/app/Application;Ldalvik/system/PathClassLoader;Ljava/io/File;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    const-string v2, "Tinker.TinkerDexLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after loaded classloader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v2

    .line 139
    const-string v3, "Tinker.TinkerDexLoader"

    const-string v4, "install dexes failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v3, "intent_patch_exception"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 142
    const/16 v2, -0xe

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 143
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
