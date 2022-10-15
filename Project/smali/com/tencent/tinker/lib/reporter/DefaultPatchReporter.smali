.class public Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/lib/reporter/PatchReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.DefaultPatchReporter"


# instance fields
.field protected final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 6
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "dexFile"    # Ljava/io/File;
    .param p3, "optDirectory"    # Ljava/lang/String;
    .param p4, "dexName"    # Ljava/lang/String;
    .param p5, "t"    # Ljava/lang/Throwable;
    .param p6, "isUpgradePatch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 134
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: dex opt fail path:%s, dexPath:%s, optDir:%s, dexName:%s, isUpgrade:%b"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 134
    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "onPatchDexOptFail:"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, p5, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/io/File;)V

    .line 139
    return-void
.end method

.method public onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V
    .locals 6
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "isUpgradePatch"    # Z

    .prologue
    const/4 v5, 0x0

    .line 182
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: patch exception path:%s, throwable:%s, isUpgrade:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "tinker patch exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "tinker patch exception"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, p2, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->setTinkerDisable()V

    .line 192
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/io/File;)V

    .line 193
    return-void
.end method

.method public onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "oldVersion"    # Ljava/lang/String;
    .param p3, "newVersion"    # Ljava/lang/String;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    .line 166
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: patch info is corrupted. old:%s, new:%s, isUpgradeP:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 169
    return-void
.end method

.method public onPatchPackageCheckFail(Ljava/io/File;ZI)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "isUpgradePatch"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 76
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: package check failed. path:%s, isUpgrade:%b, code:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    const/4 v0, -0x4

    if-eq p3, v0, :cond_0

    const/4 v0, -0x8

    if-ne p3, v0, :cond_1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/io/File;)V

    .line 84
    :cond_1
    return-void
.end method

.method public onPatchResult(Ljava/io/File;ZJZ)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "success"    # Z
    .param p3, "cost"    # J
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 151
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: patch all result path:%s, success:%b, cost:%d, isUpgrade:%b"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onPatchServiceStart(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: patch service start"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileType"    # I
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 117
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: file extract fail type:%s, path:%s, extractTo:%s, filename:%s, isUpgrade:%b"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 118
    invoke-static {p4}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getTypeString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 117
    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatchByVersion(Ljava/io/File;)V

    .line 121
    return-void
.end method

.method public onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "oldPatchInfo"    # Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    .param p3, "patchFileVersion"    # Ljava/lang/String;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    .line 97
    const-string v0, "Tinker.DefaultPatchReporter"

    const-string v1, "patchReporter: patch version exist. path:%s, version:%s, isUpgrade:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-void
.end method
