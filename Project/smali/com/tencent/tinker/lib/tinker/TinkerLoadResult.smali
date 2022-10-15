.class public Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLoadResult"


# instance fields
.field public costTime:J

.field public currentVersion:Ljava/lang/String;

.field public dexDirectory:Ljava/io/File;

.field public dexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public libraryDirectory:Ljava/io/File;

.field public libs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loadCode:I

.field public packageConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

.field public patchVersionDirectory:Ljava/io/File;

.field public patchVersionFile:Ljava/io/File;

.field public resourceDirectory:Ljava/io/File;

.field public resourceFile:Ljava/io/File;

.field public versionChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackageConfigByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->packageConfig:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->packageConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseTinkerResult(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intentResult"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-static {p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v1

    .line 70
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentReturnCode(Landroid/content/Intent;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    .line 71
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "parseTinkerResult loadCode:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchCostTime(Landroid/content/Intent;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->costTime:J

    .line 75
    const-string v0, "intent_patch_old_version"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v0, "intent_patch_new_version"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchDirectory()Ljava/io/File;

    move-result-object v4

    .line 80
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchInfoFile()Ljava/io/File;

    move-result-object v5

    .line 82
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess()Z

    move-result v6

    .line 85
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 86
    if-eqz v6, :cond_2

    .line 87
    iput-object v3, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    .line 92
    :goto_0
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v7, "parseTinkerResult oldVersion:%s, newVersion:%s, current:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v0, v7, v8}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 97
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    .line 98
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    invoke-static {v8}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    .line 99
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v8, "dex"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v8, "lib"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    .line 101
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const-string v8, "res"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    .line 102
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    const-string v8, "resources.apk"

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    .line 104
    :cond_0
    new-instance v0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    sget-object v7, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v7}, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->versionChanged:Z

    .line 109
    :cond_1
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchException(Landroid/content/Intent;)Ljava/lang/Exception;

    move-result-object v7

    .line 110
    if-eqz v7, :cond_4

    .line 111
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "Tinker load have exception loadCode:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    const/4 v0, -0x1

    .line 113
    iget v2, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_2
    :pswitch_0
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    invoke-interface {v1, v7, v0}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadException(Ljava/lang/Throwable;I)V

    .line 131
    const/4 v0, 0x0

    .line 322
    :goto_3
    return v0

    .line 89
    :cond_2
    iput-object v2, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 115
    :pswitch_1
    const/4 v0, -0x1

    .line 116
    goto :goto_2

    .line 118
    :pswitch_2
    const/4 v0, -0x2

    .line 119
    goto :goto_2

    .line 121
    :pswitch_3
    const/4 v0, -0x5

    .line 122
    goto :goto_2

    .line 124
    :pswitch_4
    const/4 v0, -0x3

    .line 125
    goto :goto_2

    .line 127
    :pswitch_5
    const/4 v0, -0x4

    goto :goto_2

    .line 134
    :cond_4
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    sparse-switch v0, :sswitch_data_0

    .line 322
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 136
    :sswitch_0
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "can\'t get the right intent return code"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "can\'t get the right intent return code"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :sswitch_1
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "tinker is disable, just return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 147
    :sswitch_2
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "can\'t find patch file, is ok, just return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 151
    :sswitch_3
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v4, "path info corrupted"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    invoke-interface {v0, v2, v3, v5}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_4

    .line 156
    :sswitch_4
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "path info blank, wait main process to restart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 160
    :sswitch_5
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch version directory not found, current version:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto :goto_4

    .line 166
    :sswitch_6
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch version file not found, current version:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    if-nez v0, :cond_5

    .line 168
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "error load patch version file not exist, but file is null"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_5
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 174
    :sswitch_7
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch package check fail"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    if-nez v0, :cond_6

    .line 176
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "error patch package check fail , but file is null"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_6
    const-string v0, "intent_patch_package_patch_check"

    const/16 v2, -0x2710

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    invoke-interface {v1, v2, v0}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPackageCheckFail(Ljava/io/File;I)V

    goto/16 :goto_4

    .line 182
    :sswitch_8
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    if-eqz v0, :cond_7

    .line 183
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch dex file directory not found:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexDirectory:Ljava/io/File;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 188
    :cond_7
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch dex file directory not found, warning why the path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch dex file directory not found, warning why the path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :sswitch_9
    const-string v0, "intent_patch_missing_dex_path"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_8

    .line 197
    const-string v2, "Tinker.TinkerLoadResult"

    const-string v3, "patch dex file not found:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 202
    :cond_8
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch dex file not found, but path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch dex file not found, but path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :sswitch_a
    const-string v0, "intent_patch_missing_dex_path"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_9

    .line 213
    const-string v2, "Tinker.TinkerLoadResult"

    const-string v3, "patch dex opt file not found:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 218
    :cond_9
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch dex opt file not found, but path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch dex opt file not found, but path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :sswitch_b
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v0, :cond_a

    .line 226
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch lib file directory not found:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 231
    :cond_a
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch lib file directory not found, warning why the path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch lib file directory not found, warning why the path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :sswitch_c
    const-string v0, "intent_patch_missing_lib_path"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_b

    .line 244
    const-string v2, "Tinker.TinkerLoadResult"

    const-string v3, "patch lib file not found:%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 248
    :cond_b
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch lib file not found, but path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch lib file not found, but path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :sswitch_d
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch dex load fail, classloader is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 258
    :sswitch_e
    const-string v0, "intent_patch_mismatch_dex_path"

    invoke-static {p2, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    if-nez v0, :cond_c

    .line 261
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch dex file md5 is mismatch, but path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch dex file md5 is mismatch, but path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_c
    const-string v2, "Tinker.TinkerLoadResult"

    const-string v3, "patch dex file md5 is mismatch: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-interface {v1, v2, v0}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    goto/16 :goto_4

    .line 270
    :sswitch_f
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v4, "rewrite patch info file corrupted"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    invoke-interface {v0, v2, v3, v5}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_4

    .line 274
    :sswitch_10
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v0, :cond_d

    .line 275
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch resource file directory not found:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceDirectory:Ljava/io/File;

    const/4 v2, 0x7

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 280
    :cond_d
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch resource file directory not found, warning why the path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch resource file directory not found, warning why the path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :sswitch_11
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    if-eqz v0, :cond_e

    .line 286
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch resource file not found:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    goto/16 :goto_4

    .line 291
    :cond_e
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "patch resource file not found, warning why the path is null!!!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patch resource file not found, warning why the path is null!!!!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :sswitch_12
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    if-nez v0, :cond_f

    .line 297
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v1, "resource file md5 mismatch, but patch resource file not found!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "resource file md5 mismatch, but patch resource file not found!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_f
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v2, "patch resource file md5 is mismatch: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->resourceFile:Ljava/io/File;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    goto/16 :goto_4

    .line 306
    :sswitch_13
    const-string v0, "Tinker.TinkerLoadResult"

    const-string v5, "oh yeah, tinker load all success"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->setTinkerLoaded(Z)V

    .line 309
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchDexPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->dexes:Ljava/util/HashMap;

    .line 310
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPatchLibsPaths(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libs:Ljava/util/HashMap;

    .line 312
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getIntentPackageConfig(Landroid/content/Intent;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->packageConfig:Ljava/util/HashMap;

    .line 314
    if-eqz v6, :cond_10

    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->versionChanged:Z

    if-eqz v0, :cond_10

    .line 316
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    iput-object v5, v0, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    .line 317
    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 320
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 113
    :pswitch_data_0
    .packed-switch -0x18
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 134
    :sswitch_data_0
    .sparse-switch
        -0x2710 -> :sswitch_0
        -0x17 -> :sswitch_12
        -0x15 -> :sswitch_11
        -0x14 -> :sswitch_10
        -0x12 -> :sswitch_f
        -0x11 -> :sswitch_c
        -0x10 -> :sswitch_b
        -0xd -> :sswitch_e
        -0xc -> :sswitch_d
        -0xb -> :sswitch_a
        -0xa -> :sswitch_9
        -0x9 -> :sswitch_8
        -0x8 -> :sswitch_7
        -0x7 -> :sswitch_6
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_13
    .end sparse-switch
.end method
