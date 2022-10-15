.class public Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/lib/reporter/LoadReporter;


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.DefaultLoadReporter"


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
    iput-object p1, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method public onLoadException(Ljava/lang/Throwable;I)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    packed-switch p2, :pswitch_data_0

    .line 240
    :goto_0
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "tinker load exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "tinker load exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->setTinkerDisable()V

    .line 244
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 245
    return-void

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkDexInstall failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "Tinker.DefaultLoadReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tinker dex check fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :goto_1
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V

    .line 216
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "dex exception disable tinker forever with sp"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 213
    :cond_0
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load dex exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 219
    :pswitch_1
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load parallel dex opt exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkResInstall failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "Tinker.DefaultLoadReporter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tinker res check fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    :goto_2
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V

    .line 228
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "res exception disable tinker forever with sp"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 225
    :cond_1
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load resource exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 231
    :pswitch_3
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load unCatch exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V

    .line 233
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "unCaught exception disable tinker forever with sp"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 236
    :pswitch_4
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load unknown exception: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 208
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onLoadFileMd5Mismatch(Ljava/io/File;I)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileType"    # I

    .prologue
    .line 156
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch file md5 mismatch file: %s, fileType:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 159
    return-void
.end method

.method public onLoadFileNotFound(Ljava/io/File;IZ)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileType"    # I
    .param p3, "isDirectory"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 125
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch file not found: %s, fileType:%d, isDirectory:%b"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    if-eq p2, v7, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isPatchProcess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getTinkerLoadResultIfPresent()Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/lib/tinker/TinkerLoadResult;->patchVersionFile:Ljava/io/File;

    .line 133
    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveRepairPatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    if-eq p2, v5, :cond_3

    if-ne p2, v6, :cond_1

    .line 138
    :cond_3
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    goto :goto_0
.end method

.method public onLoadPackageCheckFail(Ljava/io/File;I)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "errorCode"    # I

    .prologue
    .line 264
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "load patch package check fail file path:%s, errorCode:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 266
    return-void
.end method

.method public onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "patchInfoFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch info file damage: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch info file damage from version: %s to version: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    aput-object p2, v2, v5

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->cleanPatch()V

    .line 176
    return-void
.end method

.method public onLoadPatchListenerReceiveFail(Ljava/io/File;IZ)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "errorCode"    # I
    .param p3, "isUpgrade"    # Z

    .prologue
    .line 62
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load Reporter: patch receive fail:%s, code:%d, isUpgrade:%b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "patchDirectoryFile"    # Ljava/io/File;
    .param p4, "currentPatchName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 79
    const-string v1, "Tinker.DefaultLoadReporter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "patch version change from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 106
    :cond_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-string v1, "Tinker.DefaultLoadReporter"

    const-string v2, "try kill all other process"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killAllOtherProcess(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_0

    .line 99
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 102
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->deleteDir(Ljava/io/File;)Z

    .line 99
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onLoadResult(Ljava/io/File;IJ)V
    .locals 5
    .param p1, "patchDirectory"    # Ljava/io/File;
    .param p2, "loadCode"    # I
    .param p3, "cost"    # J

    .prologue
    .line 188
    const-string v0, "Tinker.DefaultLoadReporter"

    const-string v1, "patch load result, path:%s, code:%d, cost:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method
