.class public Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/lib/tinker/Tinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private listener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field private loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field private final mainProcess:Z

.field private patchDirectory:Ljava/io/File;

.field private patchInfoFile:Ljava/io/File;

.field private final patchProcess:Z

.field private patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field private status:I

.field private tinkerLoadVerifyFlag:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    .line 327
    invoke-static {p1}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->isInMainProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->mainProcess:Z

    .line 328
    invoke-static {p1}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->isInTinkerPatchServiceProcess(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchProcess:Z

    .line 329
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    .line 330
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    if-nez v0, :cond_1

    .line 331
    const-string v0, "Tinker.Tinker"

    const-string v1, "patchDirectory is null!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchInfoFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoFile:Ljava/io/File;

    .line 335
    const-string v0, "Tinker.Tinker"

    const-string v1, "tinker patch directory: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/tencent/tinker/lib/tinker/Tinker;
    .locals 12

    .prologue
    .line 391
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 392
    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-nez v0, :cond_1

    .line 396
    new-instance v0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-nez v0, :cond_2

    .line 400
    new-instance v0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    if-nez v0, :cond_3

    .line 404
    new-instance v0, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/listener/DefaultPatchListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    .line 407
    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 408
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    .line 411
    :cond_4
    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker;

    iget-object v1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    iget-object v3, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iget-object v4, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    iget-object v5, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    iget-object v6, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchDirectory:Ljava/io/File;

    iget-object v7, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchInfoFile:Ljava/io/File;

    iget-boolean v8, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->mainProcess:Z

    iget-boolean v9, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchProcess:Z

    iget-object v10, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    .line 412
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/tencent/tinker/lib/tinker/Tinker;-><init>(Landroid/content/Context;ILcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/io/File;Ljava/io/File;ZZZLcom/tencent/tinker/lib/tinker/Tinker$1;)V

    .line 411
    return-object v0
.end method

.method public listener(Lcom/tencent/tinker/lib/listener/PatchListener;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2
    .param p1, "listener"    # Lcom/tencent/tinker/lib/listener/PatchListener;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "listener is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener:Lcom/tencent/tinker/lib/listener/PatchListener;

    .line 387
    return-object p0
.end method

.method public loadReport(Lcom/tencent/tinker/lib/reporter/LoadReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2
    .param p1, "loadReporter"    # Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .prologue
    .line 358
    if-nez p1, :cond_0

    .line 359
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "loadReporter must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_1

    .line 362
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "loadReporter is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .line 365
    return-object p0
.end method

.method public patchReporter(Lcom/tencent/tinker/lib/reporter/PatchReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2
    .param p1, "patchReporter"    # Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patchReporter must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_1

    .line 373
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "patchReporter is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .line 376
    return-object p0
.end method

.method public tinkerFlags(I)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2
    .param p1, "tinkerFlags"    # I

    .prologue
    .line 339
    iget v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 340
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "tinkerFlag is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iput p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->status:I

    .line 343
    return-object p0
.end method

.method public tinkerLoadVerifyFlag(Ljava/lang/Boolean;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;
    .locals 2
    .param p1, "verifyMd5WhenLoad"    # Ljava/lang/Boolean;

    .prologue
    .line 347
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "tinkerLoadVerifyFlag must not be null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 351
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "tinkerLoadVerifyFlag is already set."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_1
    iput-object p1, p0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag:Ljava/lang/Boolean;

    .line 354
    return-object p0
.end method
