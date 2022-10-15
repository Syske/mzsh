.class public Lcom/tencent/tinker/lib/patch/RepairPatch;
.super Lcom/tencent/tinker/lib/patch/AbstractPatch;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.RepairPatch"


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
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tempPatchPath"    # Ljava/lang/String;
    .param p3, "patchResult"    # Lcom/tencent/tinker/lib/service/PatchResult;

    .prologue
    const/4 v5, 0x0

    .line 45
    invoke-static {p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 47
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnableWithSharedPreferences(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    :cond_0
    const-string v0, "Tinker.RepairPatch"

    const-string v1, "RepairPatch tryPatch:patch is disabled, just return"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return v5

    .line 54
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 55
    :cond_2
    const-string v0, "Tinker.RepairPatch"

    const-string v1, "RepairPatch tryPatch:patch file is not found, just return"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 59
    :cond_3
    new-instance v1, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;

    invoke-direct {v1, p1}, Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerFlags()I

    move-result v2

    invoke-static {p1, v2, v4, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->checkTinkerPackage(Landroid/content/Context;ILjava/io/File;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;)I

    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    const-string v1, "Tinker.RepairPatch"

    const-string v3, "RepairPatch tryPatch:onPatchPackageCheckFail"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    invoke-interface {v0, v4, v5, v2}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchInfo:Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;

    .line 71
    invoke-static {v4}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 74
    iput-object v3, p3, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    .line 76
    if-nez v2, :cond_5

    .line 77
    const-string v1, "Tinker.RepairPatch"

    const-string v6, "OldPatchProcessor tryPatch:onPatchVersionCheckFail, oldInfo is null"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V

    goto :goto_0

    .line 81
    :cond_5
    iget-object v6, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    if-nez v6, :cond_7

    .line 82
    :cond_6
    const-string v1, "Tinker.RepairPatch"

    const-string v3, "RepairPatch tryPatch:onPatchInfoCorrupted"

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v6}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    iget-object v1, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    iget-object v2, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v5}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 87
    :cond_7
    iget-object v6, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->oldVersion:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, v2, Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;->newVersion:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 88
    :cond_8
    const-string v1, "Tinker.RepairPatch"

    const-string v6, "RepairPatch tryPatch:onPatchVersionCheckFail"

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 95
    :cond_9
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, p1

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->tryRecoverDexFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_a

    .line 102
    const-string v0, "Tinker.RepairPatch"

    const-string v1, "RepairPatch tryPatch:try patch dex failed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    move-object v2, p1

    .line 106
    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/lib/patch/BsDiffPatchInternal;->tryRecoverLibraryFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v2

    if-nez v2, :cond_b

    .line 107
    const-string v0, "Tinker.RepairPatch"

    const-string v1, "RepairPatch tryPatch:try patch library failed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_b
    move-object v2, p1

    .line 111
    invoke-static/range {v0 .. v5}, Lcom/tencent/tinker/lib/patch/ResDiffPatchInternal;->tryRecoverResourceFiles(Lcom/tencent/tinker/lib/tinker/Tinker;Lcom/tencent/tinker/loader/shareutil/ShareSecurityCheck;Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 112
    const-string v0, "Tinker.RepairPatch"

    const-string v1, "RepairPatch tryPatch:try patch resource failed"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 115
    :cond_c
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
