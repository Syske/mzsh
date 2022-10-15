.class public Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;
.super Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;
.source "BUGLY"


# instance fields
.field private final userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;-><init>(Landroid/content/Context;)V

    .line 41
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .line 42
    return-void
.end method


# virtual methods
.method public onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 7
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "dexFile"    # Ljava/io/File;
    .param p3, "optDirectory"    # Ljava/lang/String;
    .param p4, "dexName"    # Ljava/lang/String;
    .param p5, "t"    # Ljava/lang/Throwable;
    .param p6, "isUpgradePatch"    # Z

    .prologue
    .line 59
    invoke-super/range {p0 .. p6}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 61
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p5}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyDexOptFail(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "isUpgradePatch"    # Z

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V

    .line 73
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyCrash(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "oldVersion"    # Ljava/lang/String;
    .param p3, "newVersion"    # Ljava/lang/String;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyInfoCorrupted()V

    goto :goto_0
.end method

.method public onPatchPackageCheckFail(Ljava/io/File;ZI)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "isUpgradePatch"    # Z
    .param p3, "errorCode"    # I

    .prologue
    .line 95
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V

    .line 97
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchPackageCheckFail(Ljava/io/File;ZI)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static {p3}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyPackageCheckFail(I)V

    goto :goto_0
.end method

.method public onPatchResult(Ljava/io/File;ZJZ)V
    .locals 7
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "success"    # Z
    .param p3, "cost"    # J
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 107
    invoke-super/range {p0 .. p5}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchResult(Ljava/io/File;ZJZ)V

    .line 109
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchResult(Ljava/io/File;ZJZ)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-static {p5, p3, p4, p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplied(ZJZ)V

    .line 115
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->onPatchServiceResult(Z)V

    goto :goto_0
.end method

.method public onPatchServiceStart(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyPatchServiceStart()V

    .line 54
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->onPatchServiceStart(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "extractTo"    # Ljava/io/File;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "fileType"    # I
    .param p5, "isUpgradePatch"    # Z

    .prologue
    .line 120
    invoke-super/range {p0 .. p5}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 122
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V

    .line 128
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p4}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyExtractFail(I)V

    goto :goto_0
.end method

.method public onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "oldPatchInfo"    # Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;
    .param p3, "patchFileVersion"    # Ljava/lang/String;
    .param p4, "isUpgradePatch"    # Z

    .prologue
    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultPatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V

    .line 134
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onApplyVersionCheckFail()V

    goto :goto_0
.end method
