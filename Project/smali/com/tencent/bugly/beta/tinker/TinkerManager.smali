.class public Lcom/tencent/bugly/beta/tinker/TinkerManager;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;,
        Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;
    }
.end annotation


# static fields
.field public static final MF_FILE:Ljava/lang/String; = "YAPATCH.MF"

.field public static final PATCH_DIR:Ljava/lang/String; = "dex"

.field public static final PATCH_NAME:Ljava/lang/String; = "patch.apk"

.field private static final TAG:Ljava/lang/String; = "Tinker.TinkerManager"

.field public static apkOriginalBuildNum:Ljava/lang/String;

.field private static isInstalled:Z

.field public static patchCurBuildNum:Ljava/lang/String;

.field static patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

.field private static systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

.field public static tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

.field private static uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

.field static userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

.field static userPatchListener:Lcom/tencent/tinker/lib/listener/PatchListener;

.field static userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

.field static userRepairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

.field static userUpgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;


# instance fields
.field private application:Landroid/app/Application;

.field private applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

.field private tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    .line 55
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    .line 64
    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchFilePath"    # Ljava/lang/String;

    .prologue
    .line 309
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    if-nez v0, :cond_0

    .line 310
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "Tinker has not been installed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveUpgradePatch(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cleanPatch()V
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->cleanPatch(Landroid/content/Context;)V

    .line 380
    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->application:Landroid/app/Application;

    return-object v0
.end method

.method public static getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerManager:Lcom/tencent/bugly/beta/tinker/TinkerManager;

    return-object v0
.end method

.method public static getNewTinkerId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getPackageConfigs(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/util/HashMap;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    const-string v1, "NEW_TINKER_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const-string v1, "tinker_id_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    return-object v0
.end method

.method public static getTinkerId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 333
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->with(Landroid/content/Context;)Lcom/tencent/tinker/lib/tinker/Tinker;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->isTinkerLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getPackageConfigs(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/util/HashMap;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    const-string v1, "TINKER_ID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    const-string v1, "tinker_id_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    .line 343
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getManifestTinkerID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 348
    const-string v1, "tinker_id_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static installDefaultTinker(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 8
    .param p0, "appLike"    # Lcom/tencent/tinker/loader/app/ApplicationLike;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 116
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "install tinker, but has installed, ignore"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :goto_0
    return-void

    .line 120
    :cond_0
    if-nez p0, :cond_1

    .line 121
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "Tinker ApplicationLike is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getInstance()Lcom/tencent/bugly/beta/tinker/TinkerManager;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setTinkerApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    .line 129
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->registJavaCrashHandler()V

    .line 132
    invoke-static {v7}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->setUpgradeRetryEnable(Z)V

    .line 135
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerReport;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerReport;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    .line 138
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerLogger;->getLogger()Lcom/tencent/bugly/beta/tinker/TinkerLogger;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/lib/util/TinkerLog;->setTinkerLogImp(Lcom/tencent/tinker/lib/util/TinkerLog$TinkerLogImp;)V

    .line 151
    new-instance v1, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/bugly/beta/tinker/TinkerLoadReporter;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v2, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/tencent/bugly/beta/tinker/TinkerPatchReporter;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v3, Lcom/tencent/bugly/beta/tinker/TinkerPatchListener;

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/tencent/bugly/beta/tinker/TinkerPatchListener;-><init>(Landroid/content/Context;)V

    .line 154
    new-instance v5, Lcom/tencent/tinker/lib/patch/UpgradePatch;

    invoke-direct {v5}, Lcom/tencent/tinker/lib/patch/UpgradePatch;-><init>()V

    .line 155
    new-instance v6, Lcom/tencent/tinker/lib/patch/RepairPatch;

    invoke-direct {v6}, Lcom/tencent/tinker/lib/patch/RepairPatch;-><init>()V

    .line 158
    const-class v4, Lcom/tencent/bugly/beta/tinker/TinkerResultService;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->install(Lcom/tencent/tinker/loader/app/ApplicationLike;Lcom/tencent/tinker/lib/reporter/LoadReporter;Lcom/tencent/tinker/lib/reporter/PatchReporter;Lcom/tencent/tinker/lib/listener/PatchListener;Ljava/lang/Class;Lcom/tencent/tinker/lib/patch/AbstractPatch;Lcom/tencent/tinker/lib/patch/AbstractPatch;)V

    .line 161
    sput-boolean v7, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    goto :goto_0
.end method

.method public static installTinker(Ljava/lang/Object;)V
    .locals 3
    .param p0, "tinkerApplicationLikeObject"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 170
    if-nez p0, :cond_0

    .line 171
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "Tinker ApplicationLike is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :goto_0
    return-void

    .line 175
    :cond_0
    instance-of v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;

    if-eqz v0, :cond_1

    .line 176
    check-cast p0, Lcom/tencent/tinker/loader/app/ApplicationLike;

    .end local p0    # "tinkerApplicationLikeObject":Ljava/lang/Object;
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installDefaultTinker(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    goto :goto_0

    .line 178
    .restart local p0    # "tinkerApplicationLikeObject":Ljava/lang/Object;
    :cond_1
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT tinker ApplicationLike object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "applicationLike"    # Ljava/lang/Object;
    .param p1, "loadReporter"    # Ljava/lang/Object;
    .param p2, "patchReporter"    # Ljava/lang/Object;
    .param p3, "patchListener"    # Ljava/lang/Object;
    .param p4, "tinkerPatchResultListener"    # Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;
    .param p5, "upgradePatchProcessor"    # Ljava/lang/Object;
    .param p6, "repairPatchProcessor"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 213
    if-eqz p1, :cond_0

    .line 214
    instance-of v0, p1, Lcom/tencent/tinker/lib/reporter/LoadReporter;

    if-eqz v0, :cond_6

    .line 215
    check-cast p1, Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .end local p1    # "loadReporter":Ljava/lang/Object;
    sput-object p1, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userLoadReporter:Lcom/tencent/tinker/lib/reporter/LoadReporter;

    .line 222
    :cond_0
    if-eqz p2, :cond_1

    .line 223
    instance-of v0, p2, Lcom/tencent/tinker/lib/reporter/PatchReporter;

    if-eqz v0, :cond_7

    .line 224
    check-cast p2, Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .end local p2    # "patchReporter":Ljava/lang/Object;
    sput-object p2, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchReporter:Lcom/tencent/tinker/lib/reporter/PatchReporter;

    .line 231
    :cond_1
    if-eqz p3, :cond_2

    .line 232
    instance-of v0, p3, Lcom/tencent/tinker/lib/listener/PatchListener;

    if-eqz v0, :cond_8

    .line 233
    check-cast p3, Lcom/tencent/tinker/lib/listener/PatchListener;

    .end local p3    # "patchListener":Ljava/lang/Object;
    sput-object p3, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userPatchListener:Lcom/tencent/tinker/lib/listener/PatchListener;

    .line 240
    :cond_2
    if-eqz p4, :cond_3

    .line 241
    instance-of v0, p4, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    if-eqz v0, :cond_9

    .line 242
    sput-object p4, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchResultListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;

    .line 249
    :cond_3
    if-eqz p5, :cond_4

    .line 250
    instance-of v0, p5, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-eqz v0, :cond_a

    .line 251
    check-cast p5, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .end local p5    # "upgradePatchProcessor":Ljava/lang/Object;
    sput-object p5, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userUpgradePatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 258
    :cond_4
    if-eqz p6, :cond_5

    .line 259
    instance-of v0, p6, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    if-eqz v0, :cond_b

    .line 260
    check-cast p6, Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .end local p6    # "repairPatchProcessor":Ljava/lang/Object;
    sput-object p6, Lcom/tencent/bugly/beta/tinker/TinkerManager;->userRepairPatchProcessor:Lcom/tencent/tinker/lib/patch/AbstractPatch;

    .line 267
    :cond_5
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;)V

    .line 268
    :goto_0
    return-void

    .line 217
    .restart local p1    # "loadReporter":Ljava/lang/Object;
    .restart local p2    # "patchReporter":Ljava/lang/Object;
    .restart local p3    # "patchListener":Ljava/lang/Object;
    .restart local p5    # "upgradePatchProcessor":Ljava/lang/Object;
    .restart local p6    # "repairPatchProcessor":Ljava/lang/Object;
    :cond_6
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT LoadReporter object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    .end local p1    # "loadReporter":Ljava/lang/Object;
    :cond_7
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT PatchReporter object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 235
    .end local p2    # "patchReporter":Ljava/lang/Object;
    :cond_8
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT PatchListener object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 244
    .end local p3    # "patchListener":Ljava/lang/Object;
    :cond_9
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT TinkerPatchResultListener object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_a
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT AbstractPatch object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 262
    .end local p5    # "upgradePatchProcessor":Ljava/lang/Object;
    :cond_b
    const-string v0, "Tinker.TinkerManager"

    const-string v1, "NOT AbstractPatch object"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isTinkerManagerInstalled()Z
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->isInstalled:Z

    return v0
.end method

.method public static loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public static loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "libname"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-static {p0, p1, p2}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 300
    return-void
.end method

.method public static registJavaCrashHandler()V
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 94
    new-instance v0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    .line 95
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->uncaughtExceptionHandler:Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 97
    :cond_0
    return-void
.end method

.method public static repairPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchFilePath"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p0, p1}, Lcom/tencent/tinker/lib/tinker/TinkerInstaller;->onReceiveRepairPatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method private setTinkerApplicationLike(Lcom/tencent/tinker/loader/app/ApplicationLike;)V
    .locals 1
    .param p1, "applicationLike"    # Lcom/tencent/tinker/loader/app/ApplicationLike;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->application:Landroid/app/Application;

    .line 80
    :cond_0
    return-void
.end method

.method public static setUpgradeRetryEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 106
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->getInstance(Landroid/content/Context;)Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p0}, Lcom/tencent/bugly/beta/tinker/UpgradePatchRetry;->setRetryEnable(Z)V

    .line 108
    return-void
.end method

.method public static unregistJavaCrashHandler()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->systemExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public getPatchDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getPatchDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getTinkerListener()Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    return-object v0
.end method

.method public onApplyFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 548
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onApplyFailure(Ljava/lang/String;)V

    .line 551
    :cond_0
    return-void
.end method

.method public onApplySuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 536
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onApplySuccess(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onCompleted()V

    .line 540
    :cond_0
    return-void
.end method

.method public onDownloadFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onDownloadFailure(Ljava/lang/String;)V

    .line 528
    :cond_0
    return-void
.end method

.method public onDownloadSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "patchFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 418
    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    .line 419
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getNewTinkerId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;

    .line 423
    iget-object v2, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 426
    new-instance v4, Ljava/io/File;

    const-string v3, "patch.apk"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const-string v2, "Tinker.TinkerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldPatch--->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    const/4 v2, 0x0

    .line 431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    move v2, v1

    .line 449
    :goto_0
    if-eqz v2, :cond_9

    .line 450
    const-string v2, "YAPATCH.MF"

    invoke-static {v3, v2}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->readJarEntry(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    .line 451
    if-nez v2, :cond_2

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 434
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_a

    move-object v3, v2

    move v2, v1

    .line 436
    goto :goto_0

    .line 455
    :cond_2
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 459
    invoke-virtual {v2, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 461
    const-string v5, "From"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "To"

    .line 462
    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    .line 463
    :cond_3
    const-string v5, "Tinker.TinkerManager"

    const-string v6, "From/To is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    :cond_4
    sget-object v5, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 468
    const-string v5, "Tinker.TinkerManager"

    const-string v6, "patchCurBuildNum is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_5
    sget-object v5, Lcom/tencent/bugly/beta/tinker/TinkerManager;->apkOriginalBuildNum:Ljava/lang/String;

    const-string v6, "From"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 473
    const-string v5, "To"

    invoke-virtual {v2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/beta/tinker/TinkerManager;->patchCurBuildNum:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 486
    :goto_2
    if-eqz v0, :cond_6

    .line 487
    :try_start_2
    invoke-static {v3, v4}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->copy(Ljava/io/File;Ljava/io/File;)Z

    .line 490
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    if-eqz v3, :cond_7

    .line 496
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applicationLike:Lcom/tencent/tinker/loader/app/ApplicationLike;

    invoke-virtual {v0}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    invoke-interface {v0}, Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;->onDownloadSuccess()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string v0, "Tinker.TinkerManager"

    const-string v2, ""

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 476
    :cond_8
    :try_start_3
    const-string v0, "Tinker.TinkerManager"

    const-string v2, "orign buildno invalid"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v1

    .line 477
    goto :goto_2

    .line 479
    :catch_1
    move-exception v0

    .line 480
    :try_start_4
    const-string v0, "Tinker.TinkerManager"

    const-string v2, "get properties failed"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    .line 481
    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move-object v3, v2

    move v2, v0

    goto/16 :goto_0
.end method

.method public setTinkerListenter(Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;)V
    .locals 0
    .param p1, "tinkerListenter"    # Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerListener:Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerListener;

    .line 393
    return-void
.end method

.method public setTinkerReport(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V
    .locals 1
    .param p1, "reporter"    # Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;

    .prologue
    .line 405
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/tencent/bugly/beta/tinker/TinkerManager;->tinkerReport:Lcom/tencent/bugly/beta/tinker/TinkerReport;

    invoke-virtual {v0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->setReporter(Lcom/tencent/bugly/beta/tinker/TinkerReport$Reporter;)V

    .line 408
    :cond_0
    return-void
.end method
