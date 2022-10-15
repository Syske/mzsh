.class public Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;
.super Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerLoadReporter"


# instance fields
.field private handler:Landroid/os/Handler;

.field private final userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->handler:Landroid/os/Handler;

    .line 46
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onLoadException(Ljava/lang/Throwable;I)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "errorCode"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadException(Ljava/lang/Throwable;I)V

    .line 109
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadException(Ljava/lang/Throwable;I)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p1, p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoadException(Ljava/lang/Throwable;I)V

    goto :goto_0
.end method

.method public onLoadFileMd5Mismatch(Ljava/io/File;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileType"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    .line 120
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileMd5Mismatch(Ljava/io/File;I)V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoadFileMisMatch(I)V

    goto :goto_0
.end method

.method public onLoadFileNotFound(Ljava/io/File;IZ)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "fileType"    # I
    .param p3, "isDirectory"    # Z

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    .line 131
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadFileNotFound(Ljava/io/File;IZ)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoadFileNotFound(I)V

    goto :goto_0
.end method

.method public onLoadPackageCheckFail(Ljava/io/File;I)V
    .locals 1
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "errorCode"    # I

    .prologue
    .line 140
    invoke-super {p0, p1, p2}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadPackageCheckFail(Ljava/io/File;I)V

    .line 142
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPackageCheckFail(Ljava/io/File;I)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoadPackageCheckFail(I)V

    goto :goto_0
.end method

.method public onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "patchInfoFile"    # Ljava/io/File;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 153
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchInfoCorrupted(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoadInfoCorrupted()V

    goto :goto_0
.end method

.method public onLoadPatchListenerReceiveFail(Ljava/io/File;IZ)V
    .locals 4
    .param p1, "patchFile"    # Ljava/io/File;
    .param p2, "errorCode"    # I
    .param p3, "isUpgrade"    # Z

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadPatchListenerReceiveFail(Ljava/io/File;IZ)V

    .line 53
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchListenerReceiveFail(Ljava/io/File;IZ)V

    .line 82
    :goto_0
    return-void

    .line 58
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 81
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {p2}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onTryApplyFail(I)V

    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "Tinker.TinkerLoadReporter"

    const-string v1, "patch file is not exist"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 66
    :pswitch_2
    if-eqz p3, :cond_1

    .line 67
    const-string v0, "Tinker.TinkerLoadReporter"

    const-string v1, "patch retry delay 60 * 1000"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$1;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;Ljava/io/File;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 77
    :pswitch_3
    const-string v0, "Tinker.TinkerLoadReporter"

    const-string v1, "rom space is not enough"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 58
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .param p1, "oldVersion"    # Ljava/lang/String;
    .param p2, "newVersion"    # Ljava/lang/String;
    .param p3, "patchDirectoryFile"    # Ljava/io/File;
    .param p4, "currentPatchName"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadPatchVersionChanged(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public onLoadResult(Ljava/io/File;IJ)V
    .locals 3
    .param p1, "patchDirectory"    # Ljava/io/File;
    .param p2, "loadCode"    # I
    .param p3, "cost"    # J

    .prologue
    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/DefaultLoadReporter;->onLoadResult(Ljava/io/File;IJ)V

    .line 88
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/tinker/lib/reporter/LoadReporter;->onLoadResult(Ljava/io/File;IJ)V

    .line 104
    :goto_0
    return-void

    .line 93
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 98
    :goto_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$2;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter$2;-><init>(Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-static {p3, p4}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onLoaded(J)V

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
