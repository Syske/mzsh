.class public Lcom/tencent/tinker/lib/service/TinkerPatchService;
.super Landroid/app/IntentService;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/lib/service/TinkerPatchService$InnerService;
    }
.end annotation


# static fields
.field private static final PATCH_NEW_EXTRA:Ljava/lang/String; = "patch_new_extra"

.field private static final PATCH_PATH_EXTRA:Ljava/lang/String; = "patch_path_extra"

.field private static final RESULT_CLASS_EXTRA:Ljava/lang/String; = "patch_result_class"

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerPatchService"

.field private static notificationId:I

.field private static repairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

.field private static resultServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;"
        }
    .end annotation
.end field

.field private static upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    sput-object v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 48
    sput-object v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->repairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 49
    const v0, -0x42bfb85d

    sput v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    .line 50
    sput-object v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->resultServiceClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    return v0
.end method

.method public static getPatchPathExtra(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "getPatchPathExtra, but intent is null"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    const-string v0, "patch_path_extra"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPatchResultExtra(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "getPatchResultExtra, but intent is null"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    const-string v0, "patch_result_class"

    invoke-static {p0, v0}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPatchUpgradeExtra(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    if-nez p0, :cond_0

    .line 95
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "getPatchUpgradeExtra, but intent is null"

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    const-string v0, "patch_new_extra"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private increasingPriority()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    const-string v0, "Tinker.TinkerPatchService"

    const-string v1, "try to increase patch process priority"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :try_start_0
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 177
    sget v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->startForeground(ILandroid/app/Notification;)V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    sget v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    invoke-virtual {p0, v1, v0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->startForeground(ILandroid/app/Notification;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/tinker/lib/service/TinkerPatchService$InnerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "Tinker.TinkerPatchService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try to increase patch process priority error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static runPatchService(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isUpgradePatch"    # Z

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/tinker/lib/service/TinkerPatchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const-string v1, "patch_path_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v1, "patch_new_extra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 63
    const-string v1, "patch_result_class"

    sget-object v2, Lcom/tencent/tinker/lib/service/TinkerPatchService;->resultServiceClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    return-void
.end method

.method public static setPatchProcessor(Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;Ljava/lang/Class;)V
    .locals 1
    .param p0, "upgradePatch"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .param p1, "repairPatch"    # Lcom/tencent/tinker/lib/patch/AbstractPatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            "Lcom/tencent/tinker/lib/patch/AbstractPatch;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tinker/lib/service/AbstractResultService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/tinker/lib/service/AbstractResultService;>;"
    sput-object p0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 69
    sput-object p1, Lcom/tencent/tinker/lib/service/TinkerPatchService;->repairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 70
    sput-object p2, Lcom/tencent/tinker/lib/service/TinkerPatchService;->resultServiceClass:Ljava/lang/Class;

    .line 73
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setTinkerNotificationId(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 105
    sput p0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->notificationId:I

    .line 106
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 111
    invoke-static {v7}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v8

    .line 112
    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchServiceStart(Landroid/content/Intent;)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string v0, "Tinker.TinkerPatchService"

    const-string v1, "TinkerPatchService received a null intent, ignoring."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchPathExtra(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v9

    .line 119
    if-nez v9, :cond_1

    .line 120
    const-string v0, "Tinker.TinkerPatchService"

    const-string v1, "TinkerPatchService can\'t get the path extra, ignoring."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchUpgradeExtra(Landroid/content/Intent;)Z

    move-result v6

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 130
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->increasingPriority()V

    .line 133
    new-instance v10, Lcom/tencent/tinker/lib/service/PatchResult;

    invoke-direct {v10}, Lcom/tencent/tinker/lib/service/PatchResult;-><init>()V

    .line 135
    if-eqz v6, :cond_3

    .line 136
    :try_start_0
    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "upgradePatchProcessor is null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v1

    invoke-interface {v1, v2, v0, v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V

    .line 154
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v4, v12, v4

    .line 155
    invoke-virtual {v8}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v1

    .line 156
    invoke-interface/range {v1 .. v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchResult(Ljava/io/File;ZJZ)V

    .line 158
    iput-boolean v3, v10, Lcom/tencent/tinker/lib/service/PatchResult;->isSuccess:Z

    .line 159
    iput-boolean v6, v10, Lcom/tencent/tinker/lib/service/PatchResult;->isUpgradePatch:Z

    .line 160
    iput-object v9, v10, Lcom/tencent/tinker/lib/service/PatchResult;->rawPatchFilePath:Ljava/lang/String;

    .line 161
    iput-wide v4, v10, Lcom/tencent/tinker/lib/service/PatchResult;->costTime:J

    .line 162
    iput-object v0, v10, Lcom/tencent/tinker/lib/service/PatchResult;->e:Ljava/lang/Throwable;

    .line 164
    invoke-static {p1}, Lcom/tencent/tinker/lib/service/TinkerPatchService;->getPatchResultExtra(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v10, v0}, Lcom/tencent/tinker/lib/service/AbstractResultService;->runResultService(Landroid/content/Context;Lcom/tencent/tinker/lib/service/PatchResult;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    :try_start_1
    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->upgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    invoke-virtual {v0, v7, v9, v10}, Lcom/tencent/tinker/lib/patch/AbstractPatch;->tryPatch(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/lib/service/PatchResult;)Z

    move-result v0

    :goto_2
    move v3, v0

    move-object v0, v1

    .line 152
    goto :goto_1

    .line 143
    :cond_3
    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->repairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-nez v0, :cond_4

    .line 144
    new-instance v0, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v1, "upgradePatchProcessor is null."

    invoke-direct {v0, v1}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_4
    sget-object v0, Lcom/tencent/tinker/lib/service/TinkerPatchService;->repairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    invoke-virtual {v0, v7, v9, v10}, Lcom/tencent/tinker/lib/patch/AbstractPatch;->tryPatch(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/tinker/lib/service/PatchResult;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_2
.end method
