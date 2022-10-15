.class public Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final DALVIK_XPOSED_CRASH:Ljava/lang/String; = "Class ref in pre-verified class resolved to unexpected implementation"

.field public static final MAX_CRASH_COUNT:I = 0x2

.field private static final QUICK_CRASH_ELAPSE:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "Tinker.SampleUncaughtExHandler"


# instance fields
.field private final ueh:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    return-void
.end method

.method private tinkerFastCrashProtect()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-nez v3, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    invoke-static {v2}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->isTinkerLoadSuccess(Lcom/tencent/tinker/loader/app/ApplicationLike;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplicationStartElapsedTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 97
    const-wide/16 v6, 0x2710

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 98
    invoke-static {v2}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->getCurrentVersion(Lcom/tencent/tinker/loader/app/ApplicationLike;)Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-static {v3}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isNullOrNil(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v5, "tinker_share_config"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 104
    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 105
    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 106
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onFastCrashProtect()V

    .line 107
    invoke-static {v2}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->cleanPatch(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    .line 108
    const-string v2, "Tinker.SampleUncaughtExHandler"

    const-string v3, "tinker has fast crash more than %d, we just clean patch!"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 112
    const-string v2, "Tinker.SampleUncaughtExHandler"

    const-string v3, "tinker has fast crash %d times"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tinkerPreVerifiedCrashHandler(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-static {p1}, Lcom/tencent/bugly/beta/tinker/TinkerUtils;->isXposedExists(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->getTinkerApplicationLike()Lcom/tencent/tinker/loader/app/ApplicationLike;

    move-result-object v3

    .line 50
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {v3}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->isTinkerLoadSuccess(Lcom/tencent/tinker/loader/app/ApplicationLike;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-static {}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->isVmArt()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 67
    :goto_1
    if-eqz v0, :cond_0

    .line 68
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerReport;->onXposedCrash()V

    .line 69
    const-string v0, "Tinker.SampleUncaughtExHandler"

    const-string v4, "have xposed: just clean tinker"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v3}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->killAllOtherProcess(Landroid/content/Context;)V

    .line 73
    invoke-static {v3}, Lcom/tencent/tinker/lib/tinker/TinkerApplicationHelper;->cleanPatch(Lcom/tencent/tinker/loader/app/ApplicationLike;)V

    .line 74
    invoke-virtual {v3}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->setTinkerDisableWithSharedPreferences(Landroid/content/Context;)V

    .line 77
    invoke-virtual {v3}, Lcom/tencent/tinker/loader/app/ApplicationLike;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v2, "please uninstall Xposed, illegal modify the app"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 62
    :cond_2
    instance-of v0, p1, Ljava/lang/IllegalAccessError;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Class ref in pre-verified class resolved to unexpected implementation"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 64
    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 34
    const-string v0, "Tinker.SampleUncaughtExHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uncaughtException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/lib/util/TinkerLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-direct {p0}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->tinkerFastCrashProtect()Z

    .line 36
    invoke-direct {p0, p2}, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->tinkerPreVerifiedCrashHandler(Ljava/lang/Throwable;)V

    .line 37
    iget-object v0, p0, Lcom/tencent/bugly/beta/tinker/TinkerUncaughtExceptionHandler;->ueh:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
