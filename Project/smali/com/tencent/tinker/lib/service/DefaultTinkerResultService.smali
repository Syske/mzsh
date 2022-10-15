.class public Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;
.super Lcom/tencent/tinker/lib/service/AbstractResultService;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.DefaultTinkerResultService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/AbstractResultService;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfNeedKill(Lcom/tencent/tinker/lib/service/PatchResult;)Z
    .locals 2
    .param p1, "result"    # Lcom/tencent/tinker/lib/service/PatchResult;

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    iget-object v0, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->currentVersion:Ljava/lang/String;

    .line 77
    iget-object v1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->patchVersion:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPatchResult(Lcom/tencent/tinker/lib/service/PatchResult;)V
    .locals 5
    .param p1, "result"    # Lcom/tencent/tinker/lib/service/PatchResult;

    .prologue
    const/4 v4, 0x0

    .line 41
    if-nez p1, :cond_1

    .line 42
    const-string v0, "Tinker.DefaultTinkerResultService"

    const-string v1, "DefaultTinkerResultService received null result!!!!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    const-string v0, "Tinker.DefaultTinkerResultService"

    const-string v1, "DefaultTinkerResultService received a result:%s "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->killTinkerPatchServiceProcess(Landroid/content/Context;)V

    .line 52
    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isUpgradePatch:Z

    if-eqz v0, :cond_3

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-string v1, "Tinker.DefaultTinkerResultService"

    const-string v2, "save delete raw patch file"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 58
    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->checkIfNeedKill(Lcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 66
    :cond_3
    :goto_1
    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isUpgradePatch:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    goto :goto_0

    .line 61
    :cond_4
    const-string v0, "Tinker.DefaultTinkerResultService"

    const-string v1, "I have already install the newly patch version!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
