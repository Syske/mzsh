.class public Lcom/tencent/bugly/beta/tinker/TinkerResultService;
.super Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.SampleResultService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/bugly/beta/tinker/TinkerResultService;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/bugly/beta/tinker/TinkerResultService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->restartProcess()V

    return-void
.end method

.method private restartProcess()V
    .locals 3

    .prologue
    .line 91
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "app is background now, i can kill quietly"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 94
    return-void
.end method


# virtual methods
.method public onPatchResult(Lcom/tencent/tinker/lib/service/PatchResult;)V
    .locals 5
    .param p1, "result"    # Lcom/tencent/tinker/lib/service/PatchResult;

    .prologue
    const/4 v4, 0x0

    .line 30
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;->onPatchResult(Lcom/tencent/tinker/lib/service/PatchResult;)V

    .line 34
    :cond_0
    if-nez p1, :cond_2

    .line 35
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "SampleResultService received null result!!!!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_1
    :goto_0
    return-void

    .line 38
    :cond_2
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "SampleResultService receive result: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->killTinkerPatchServiceProcess(Landroid/content/Context;)V

    .line 44
    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz v0, :cond_5

    .line 45
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onApplySuccess(Ljava/lang/String;)V

    .line 52
    :goto_1
    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isUpgradePatch:Z

    if-eqz v0, :cond_4

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v1, "Tinker.SampleResultService"

    const-string v2, "save delete raw patch file"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 60
    :cond_3
    invoke-virtual {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->checkIfNeedKill(Lcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 61
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->isBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 62
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "it is in background, just restart process"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->restartProcess()V

    .line 81
    :cond_4
    :goto_2
    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/tencent/tinker/lib/service/PatchResult;->isUpgradePatch:Z

    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    goto :goto_0

    .line 47
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/tinker/lib/service/PatchResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->onApplyFailure(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_6
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "tinker wait screen to restart process"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;

    invoke-virtual {p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/tencent/bugly/beta/tinker/TinkerResultService$1;

    invoke-direct {v2, p0}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$1;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerResultService;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState;-><init>(Landroid/content/Context;Lcom/tencent/bugly/beta/tinker/TinkerResultService$ScreenState$IOnScreenOff;)V

    goto :goto_2

    .line 76
    :cond_7
    const-string v0, "Tinker.SampleResultService"

    const-string v1, "I have already install the newly patch version!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method
