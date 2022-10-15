.class public Lcom/tencent/tinker/lib/tinker/TinkerInstaller;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerInstaller"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPatch(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 88
    return-void
.end method

.method public static install(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 2
    .param p0, "applicationLike"    # Lcom/tencent/tinker/loader/app/ApplicationLike;

    .prologue
    .line 47
    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->create(Lcom/tencent/tinker/lib/tinker/Tinker;)V

    .line 49
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public static install(Lcom/tencent/tinker/loader/app/ApplicationLike;Lcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V
    .locals 2
    .param p0, "applicationLike"    # Lcom/tencent/tinker/loader/app/ApplicationLike;
    .param p1, "loadReporter"    # Lcom/tencent/tinker/lib/reporter/LoadReporter;
    .param p2, "patchReporter"    # Lcom/tencent/tinker/lib/reporter/PatchReporter;
    .param p3, "listener"    # Lcom/tencent/tinker/lib/listener/PatchListener;
    .param p5, "upgradePatchProcessor"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .param p6, "repairPatchProcessor"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/loader/app/ApplicationLike;",
            "Lcom/tencent/tinker/lib/reporter/LoadReporter;",
            "Lcom/tencent/tinker/lib/reporter/PatchReporter;",
            "Lcom/tencent/tinker/lib/listener/PatchListener;",
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
    .line 68
    .local p4, "resultServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/tinker/lib/service/AbstractResultService;>;"
    new-instance v0, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getTinkerFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerFlags(I)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->loadReport(Lcom/tencent/tinker/lib/reporter/LoadReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p3}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->listener(Lcom/tencent/tinker/lib/listener/PatchListener;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p2}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->patchReporter(Lcom/tencent/tinker/lib/reporter/PatchReporter;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getTinkerLoadVerifyFlag()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->tinkerLoadVerifyFlag(Ljava/lang/Boolean;)Lcom/tencent/tinker/lib/tinker/Tinker$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker$Builder;->build()Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->create(Lcom/tencent/tinker/lib/tinker/Tinker;)V

    .line 76
    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getTinkerResultIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5, p6}, Lcom/tencent/tinker/lib/tinker/Tinker;->install(Landroid/content/Intent;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    .line 79
    return-void
.end method

.method public static loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 171
    :cond_0
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "libName or context is null!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isEnabledForNativeLib()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string v0, "lib/armeabi"

    invoke-static {p0, v0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 192
    :cond_0
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "libName or context is null!"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isEnabledForNativeLib()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "lib/armeabi-v7a"

    invoke-static {p0, v0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "libname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v2

    .line 132
    const-string v0, "lib"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :goto_0
    const-string v0, ".so"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->isEnabledForNativeLib()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    move-result-object v4

    .line 139
    iget-object v0, v4, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libs:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, v4, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libraryDirectory:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 143
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoadVerify()Z

    move-result v8

    .line 147
    if-eqz v8, :cond_3

    iget-object v8, v4, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->libs:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->verifyFileMd5(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 148
    invoke-virtual {v2}, Lcom/tencent/tinker/lib/tinker/Tinker;->getLoadReporter()Lcom/tencent/tinker/lib/reporter/LoadReporter;

    move-result-object v0

    const/4 v6, 0x6

    invoke-interface {v0, v7, v6}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    goto :goto_2

    .line 132
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0

    .line 133
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".so"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1

    .line 150
    :cond_3
    invoke-static {v6}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 151
    const-string v0, "Tinker.TinkerInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibraryFromTinker success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    const/4 v0, 0x1

    .line 160
    :goto_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public static onReceiveRepairPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchLocation"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchListener()Lcom/tencent/tinker/lib/listener/PatchListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/tencent/tinker/lib/listener/PatchListener;->onPatchReceived(Ljava/lang/String;Z)I

    .line 109
    return-void
.end method

.method public static onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchLocation"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchListener()Lcom/tencent/tinker/lib/listener/PatchListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/tencent/tinker/lib/listener/PatchListener;->onPatchReceived(Ljava/lang/String;Z)I

    .line 98
    return-void
.end method

.method public static setLogIml(Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;)V
    .locals 0
    .param p0, "imp"    # Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/tencent/tinker/lib/util/TinkerLog;->setTinkerLogImp(Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;)V

    .line 118
    return-void
.end method
