.class public Lcom/tencent/tinker/lib/tinker/Tinker;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.Tinker"

.field private static sInstalled:Z

.field private static sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;


# instance fields
.field final context:Landroid/content/Context;

.field final isMainProcess:Z

.field final isPatchProcess:Z

.field final listener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field final loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field private loaded:Z

.field final patchDirectory:Ljava/io/File;

.field final patchInfoFile:Ljava/io/File;

.field final patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field tinkerFlags:I

.field tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

.field final tinkerLoadVerifyFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;ZZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tinkerFlags"    # I
    .param p3, "loadReporter"    # Lcom/tencent/tinker/lib/reporter/LoadReporter;
    .param p4, "patchReporter"    # Lcom/tencent/tinker/lib/reporter/PatchReporter;
    .param p5, "listener"    # Lcom/tencent/tinker/lib/listener/PatchListener;
    .param p6, "patchDirectory"    # Ljava/io/File;
    .param p7, "patchInfoFile"    # Ljava/io/File;
    .param p8, "isInMainProc"    # Z
    .param p9, "isPatchProcess"    # Z
    .param p10, "tinkerLoadVerifyFlag"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    .line 81
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->context:Landroid/content/Context;

    .line 82
    iput-object p5, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    .line 83
    iput-object p3, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .line 84
    iput-object p4, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .line 85
    iput p2, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    .line 86
    iput-object p6, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    .line 87
    iput-object p7, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoFile:Ljava/io/File;

    .line 88
    iput-boolean p8, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess:Z

    .line 89
    iput-boolean p10, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadVerifyFlag:Z

    .line 90
    iput-boolean p9, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isPatchProcess:Z

    .line 91
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;ZZZLcom/tencent/tinker/lib/tinker/Tinker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/tencent/tinker/lib/reporter/LoadReporter;
    .param p4, "x3"    # Lcom/tencent/tinker/lib/reporter/PatchReporter;
    .param p5, "x4"    # Lcom/tencent/tinker/lib/listener/PatchListener;
    .param p6, "x5"    # Ljava/io/File;
    .param p7, "x6"    # Ljava/io/File;
    .param p8, "x7"    # Z
    .param p9, "x8"    # Z
    .param p10, "x9"    # Z
    .param p11, "x10"    # Lcom/tencent/tinker/lib/tinker/Tinker$1;

    .prologue
    .line 46
    invoke-direct/range {p0 .. p10}, Lcom/tencent/tinker/lib/tinker/Tinker;-><init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;ZZZ)V

    return-void
.end method

.method public static create(Lcom/tencent/tinker/lib/tinker/Tinker;)V
    .locals 2
    .param p0, "tinker"    # Lcom/tencent/tinker/lib/tinker/Tinker;

    .prologue
    .line 121
    sget-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    if-eqz v0, :cond_0

    .line 122
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "Tinker instance is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    sput-object p0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    .line 125
    return-void
.end method

.method public static with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string/jumbo v1, "you must install tinker before get tinker sInstance"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    sget-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    if-nez v0, :cond_2

    .line 105
    const-class v1, Lcom/tencent/tinker/lib/tinker/Tinker;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-direct {v0, p0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    sput-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    .line 109
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_2
    sget-object v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstance:Lcom/tencent/tinker/lib/tinker/Tinker;

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cleanPatch()V
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "Tinker.Tinker"

    const-string v1, "it is not safety to clean patch when tinker is loaded, you should kill all your process after clean!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public cleanPatchByVersion(Ljava/io/File;)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchVersionDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-virtual {p0, v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanPatchByVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    return-object v0
.end method

.method public getPatchDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getPatchInfoFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchInfoFile:Ljava/io/File;

    return-object v0
.end method

.method public getPatchListener()Lcom/tencent/tinker/lib/listener/PatchListener;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    return-object v0
.end method

.method public getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    return-object v0
.end method

.method public getTinkerFlags()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    return v0
.end method

.method public getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    return-object v0
.end method

.method public getTinkerRomSpace()J
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    if-nez v0, :cond_0

    .line 286
    const-wide/16 v0, 0x0

    .line 289
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getFileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    goto :goto_0
.end method

.method public install(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intentResult"    # Landroid/content/Intent;

    .prologue
    .line 176
    const-class v0, Lcom/tencent/tinker/lib/service/DefaultTinkerResultService;

    new-instance v1, Lcom/tencent/tinker/lib/patch/UpgradePatch;

    invoke-direct {v1}, Lcom/tencent/tinker/lib/patch/UpgradePatch;-><init>()V

    new-instance v2, Lcom/tencent/tinker/lib/patch/RepairPatch;

    invoke-direct {v2}, Lcom/tencent/tinker/lib/patch/RepairPatch;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    .line 177
    return-void
.end method

.method public install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V
    .locals 7
    .param p1, "intentResult"    # Landroid/content/Intent;
    .param p3, "upgradePatch"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .param p4, "repairPatch"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/tinker/lib/service/AbstractResultService;>;"
    const/4 v6, 0x0

    .line 138
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    .line 139
    invoke-static {p3, p4, p2}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->setPatchProcessor(Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    const-string v0, "Tinker.Tinker"

    const-string v1, "tinker is disabled"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    if-nez p1, :cond_2

    .line 146
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "intentResult must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_2
    new-instance v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    invoke-direct {v0}, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    .line 149
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    invoke-virtual {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->parseTinkerResult(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 151
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->patchDirectory:Ljava/io/File;

    iget-object v2, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    iget v2, v2, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->loadCode:I

    iget-object v3, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadResult:Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    iget-wide v4, v3, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->costTime:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadResult(Ljava/io/File;IJ)V

    .line 153
    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    if-nez v0, :cond_0

    .line 154
    const-string v0, "Tinker.Tinker"

    const-string v1, "tinker load fail!"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnabledForDex()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForDex(I)Z

    move-result v0

    return v0
.end method

.method public isEnabledForNativeLib()Z
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForNativeLib(I)Z

    move-result v0

    return v0
.end method

.method public isEnabledForResource()Z
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabledForResource(I)Z

    move-result v0

    return v0
.end method

.method public isMainProcess()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess:Z

    return v0
.end method

.method public isPatchProcess()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->isPatchProcess:Z

    return v0
.end method

.method public isTinkerEnabled()Z
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isTinkerEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isTinkerInstalled()Z
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/tencent/tinker/lib/tinker/Tinker;->sInstalled:Z

    return v0
.end method

.method public isTinkerLoadVerify()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerLoadVerifyFlag:Z

    return v0
.end method

.method public isTinkerLoaded()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    return v0
.end method

.method public setPatchServiceNotificationId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 164
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->setTinkerNotificationId(I)V

    .line 165
    return-void
.end method

.method public setTinkerDisable()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->tinkerFlags:I

    .line 193
    return-void
.end method

.method public setTinkerLoaded(Z)V
    .locals 0
    .param p1, "isLoaded"    # Z

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker;->loaded:Z

    .line 214
    return-void
.end method
