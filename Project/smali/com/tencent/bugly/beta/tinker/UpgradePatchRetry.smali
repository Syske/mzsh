.class public Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;
    }
.end annotation


# static fields
.field private static final RETRY_COUNT_PROPERTY:Ljava/lang/String; = "times"

.field private static final RETRY_FILE_MD5_PROPERTY:Ljava/lang/String; = "md5"

.field private static final RETRY_INFO_NAME:Ljava/lang/String; = "patch.retry"

.field private static final RETRY_MAX_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Tinker.UpgradePatchRetry"

.field private static final TEMP_PATCH_NAME:Ljava/lang/String; = "temp.apk"

.field private static sInstance:Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;


# instance fields
.field private context:Landroid/content/Context;

.field private isRetryEnable:Z

.field private retryInfoFile:Ljava/io/File;

.field private tempPatchFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->isRetryEnable:Z

    .line 55
    iput-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    .line 56
    iput-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    .line 58
    iput-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->context:Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->context:Landroid/content/Context;

    .line 68
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "patch.retry"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "temp.apk"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    .line 70
    return-void
.end method

.method private copyToTempFile(Ljava/io/File;)V
    .locals 5
    .param p1, "patchFile"    # Ljava/io/File;

    .prologue
    .line 112
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "try copy file: %s to %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-static {p1, v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->copyFileUsingStream(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    sget-object v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->sInstance:Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->sInstance:Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    .line 76
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->sInstance:Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    return-object v0
.end method


# virtual methods
.method public onPatchRetryLoad()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->isRetryEnable:Z

    if-nez v0, :cond_0

    .line 81
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchRetryLoad retry disabled, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchRetryLoad retry is not main process, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 92
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchRetryLoad retry info not exist, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/TinkerServiceInternals;->isTinkerPatchServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchRetryLoad tinker service is running, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 103
    :cond_4
    const-string v1, "Tinker.UpgradePatchRetry"

    const-string v2, "onPatchRetryLoad patch file: %s is not exist, just return"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_5
    const-string v1, "Tinker.UpgradePatchRetry"

    const-string v2, "onPatchRetryLoad patch file: %s is exist, retry to patch"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onReportRetryPatch()V

    goto :goto_0
.end method

.method public onPatchServiceResult(Z)V
    .locals 3
    .param p1, "isUpgradePatch"    # Z

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->isRetryEnable:Z

    if-nez v0, :cond_1

    .line 191
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceResult retry disabled, just return"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    if-nez p1, :cond_2

    .line 196
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceResult is not upgrade patch, just return"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    goto :goto_0
.end method

.method public onPatchServiceStart(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->isRetryEnable:Z

    if-nez v0, :cond_0

    .line 125
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart retry disabled, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 129
    :cond_0
    if-nez p1, :cond_1

    .line 130
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart intent is null, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchUpgradeExtra(Landroid/content/Intent;)Z

    move-result v0

    .line 136
    if-nez v0, :cond_2

    .line 137
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart is not upgrade patch, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchPathExtra(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 143
    if-nez v0, :cond_3

    .line 144
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart patch path is null, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getMD5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-nez v2, :cond_4

    .line 153
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart patch md5 is null, just return"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 158
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->readRetryProperty(Ljava/io/File;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;

    move-result-object v0

    .line 159
    iget-object v3, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->md5:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->times:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 160
    :cond_5
    invoke-direct {p0, v1}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->copyToTempFile(Ljava/io/File;)V

    .line 161
    iput-object v2, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->md5:Ljava/lang/String;

    .line 162
    const-string v1, "1"

    iput-object v1, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->times:Ljava/lang/String;

    .line 180
    :goto_1
    iget-object v1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-static {v1, v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->writeRetryProperty(Ljava/io/File;Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;)V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v1, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->times:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 165
    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 166
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->retryInfoFile:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 167
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->tempPatchFile:Ljava/io/File;

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 168
    const-string v0, "Tinker.UpgradePatchRetry"

    const-string v1, "onPatchServiceStart retry more than max count, delete retry info file!"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 171
    :cond_7
    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;->times:Ljava/lang/String;

    goto :goto_1

    .line 176
    :cond_8
    invoke-direct {p0, v1}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->copyToTempFile(Ljava/io/File;)V

    .line 177
    new-instance v0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;

    const-string v1, "1"

    invoke-direct {v0, v2, v1}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry$RetryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setRetryEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->isRetryEnable:Z

    .line 212
    return-void
.end method
