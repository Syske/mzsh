.class public Lcom/tencent/bugly/beta/Beta;
.super Lcom/tencent/bugly/a;
.source "BUGLY"


# static fields
.field public static final TAG_CANCEL_BUTTON:Ljava/lang/String; = "beta_cancel_button"

.field public static final TAG_CONFIRM_BUTTON:Ljava/lang/String; = "beta_confirm_button"

.field public static final TAG_IMG_BANNER:Ljava/lang/String; = "beta_upgrade_banner"

.field public static final TAG_TIP_MESSAGE:Ljava/lang/String; = "beta_tip_message"

.field public static final TAG_TITLE:Ljava/lang/String; = "beta_title"

.field public static final TAG_UPGRADE_FEATURE:Ljava/lang/String; = "beta_upgrade_feature"

.field public static final TAG_UPGRADE_INFO:Ljava/lang/String; = "beta_upgrade_info"

.field private static a:Lcom/tencent/bugly/beta/download/DownloadTask;

.field public static autoCheckUpgrade:Z

.field public static autoDownloadOnWifi:Z

.field public static autoInit:Z

.field public static canNotShowUpgradeActs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public static canShowApkInfo:Z

.field public static canShowUpgradeActs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field public static defaultBannerId:I

.field public static downloadManager:Lcom/tencent/bugly/beta/download/b;

.field public static enableHotfix:Z

.field public static enableNotification:Z

.field public static initDelay:J

.field public static initProcessName:Ljava/lang/String;

.field public static instance:Lcom/tencent/bugly/beta/Beta;

.field public static largeIconId:I

.field public static showInterruptedStrategy:Z

.field public static smallIconId:I

.field public static storageDir:Ljava/io/File;

.field public static strNetworkTipsCancelBtn:Ljava/lang/String;

.field public static strNetworkTipsConfirmBtn:Ljava/lang/String;

.field public static strNetworkTipsMessage:Ljava/lang/String;

.field public static strNetworkTipsTitle:Ljava/lang/String;

.field public static strNotificationClickToContinue:Ljava/lang/String;

.field public static strNotificationClickToInstall:Ljava/lang/String;

.field public static strNotificationClickToRetry:Ljava/lang/String;

.field public static strNotificationClickToView:Ljava/lang/String;

.field public static strNotificationDownloadError:Ljava/lang/String;

.field public static strNotificationDownloadSucc:Ljava/lang/String;

.field public static strNotificationDownloading:Ljava/lang/String;

.field public static strNotificationHaveNewVersion:Ljava/lang/String;

.field public static strToastCheckUpgradeError:Ljava/lang/String;

.field public static strToastCheckingUpgrade:Ljava/lang/String;

.field public static strToastYourAreTheLatestVersion:Ljava/lang/String;

.field public static strUpgradeDialogCancelBtn:Ljava/lang/String;

.field public static strUpgradeDialogContinueBtn:Ljava/lang/String;

.field public static strUpgradeDialogFeatureLabel:Ljava/lang/String;

.field public static strUpgradeDialogFileSizeLabel:Ljava/lang/String;

.field public static strUpgradeDialogInstallBtn:Ljava/lang/String;

.field public static strUpgradeDialogRetryBtn:Ljava/lang/String;

.field public static strUpgradeDialogUpdateTimeLabel:Ljava/lang/String;

.field public static strUpgradeDialogUpgradeBtn:Ljava/lang/String;

.field public static strUpgradeDialogVersionLabel:Ljava/lang/String;

.field public static tipsDialogLayoutId:I

.field public static upgradeCheckPeriod:J

.field public static upgradeDialogLayoutId:I

.field public static upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/bugly/beta/ui/UILifecycleListener",
            "<",
            "Lcom/tencent/bugly/beta/UpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

.field public static upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 69
    const-string/jumbo v0, "\u4f60\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u4e86"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strToastYourAreTheLatestVersion:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "\u68c0\u67e5\u65b0\u7248\u672c\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "\u6b63\u5728\u68c0\u67e5\uff0c\u8bf7\u7a0d\u5019..."

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strToastCheckingUpgrade:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, "\u6b63\u5728\u4e0b\u8f7d"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloading:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, "\u70b9\u51fb\u67e5\u770b"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToView:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, "\u70b9\u51fb\u5b89\u88c5"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToInstall:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "\u70b9\u51fb\u91cd\u8bd5"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToRetry:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationClickToContinue:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, "\u4e0b\u8f7d\u5b8c\u6210"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloadSucc:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "\u4e0b\u8f7d\u5931\u8d25"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationDownloadError:Ljava/lang/String;

    .line 79
    const-string/jumbo v0, "\u6709\u65b0\u7248\u672c"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNotificationHaveNewVersion:Ljava/lang/String;

    .line 80
    const-string/jumbo v0, "\u4f60\u5df2\u5207\u6362\u5230\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u7ee7\u7eed\u5f53\u524d\u4e0b\u8f7d\uff1f"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsMessage:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "\u7f51\u7edc\u63d0\u793a"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsTitle:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "\u7ee7\u7eed\u4e0b\u8f7d"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsConfirmBtn:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "\u53d6\u6d88"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strNetworkTipsCancelBtn:Ljava/lang/String;

    .line 84
    const-string/jumbo v0, "\u7248\u672c"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogVersionLabel:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, "\u5305\u5927\u5c0f"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFileSizeLabel:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "\u66f4\u65b0\u65f6\u95f4"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpdateTimeLabel:Ljava/lang/String;

    .line 87
    const-string/jumbo v0, "\u66f4\u65b0\u8bf4\u660e"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogFeatureLabel:Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "\u7acb\u5373\u66f4\u65b0"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogUpgradeBtn:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "\u5b89\u88c5"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogInstallBtn:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "\u91cd\u8bd5"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogRetryBtn:Ljava/lang/String;

    .line 91
    const-string/jumbo v0, "\u7ee7\u7eed"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogContinueBtn:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "\u4e0b\u6b21\u518d\u8bf4"

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->strUpgradeDialogCancelBtn:Ljava/lang/String;

    .line 95
    sput-object v3, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    .line 96
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    .line 97
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    .line 98
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->autoCheckUpgrade:Z

    .line 99
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->showInterruptedStrategy:Z

    .line 106
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->autoInit:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    .line 114
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    .line 115
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->enableNotification:Z

    .line 116
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoDownloadOnWifi:Z

    .line 117
    sput-boolean v2, Lcom/tencent/bugly/beta/Beta;->canShowApkInfo:Z

    .line 119
    new-instance v0, Lcom/tencent/bugly/beta/Beta;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/Beta;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    .line 582
    sput-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/bugly/a;-><init>()V

    return-void
.end method

.method public static applyTinkerPatch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchFile"    # Ljava/lang/String;

    .prologue
    .line 736
    invoke-static {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->applyPatch(Landroid/content/Context;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public static cancelDownload()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 564
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v6

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Boolean;

    .line 567
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-boolean v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    if-eq v0, v1, :cond_1

    .line 568
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0xe

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v4, v3, v5

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v4, v3, v6

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-boolean v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->g:Z

    .line 571
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    .line 573
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->i:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/d;->run()V

    .line 574
    return-void
.end method

.method public static checkUpgrade()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/Beta;->checkUpgrade(ZZ)V

    .line 138
    return-void
.end method

.method public static checkUpgrade(ZZ)V
    .locals 7
    .param p0, "isManual"    # Z
    .param p1, "isSilence"    # Z

    .prologue
    const/4 v6, 0x3

    .line 149
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 152
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x13

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    :goto_1
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    :try_start_3
    const-string v0, "wait error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 211
    :catch_1
    move-exception v0

    .line 212
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 164
    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 169
    :cond_3
    if-nez p0, :cond_4

    .line 170
    :try_start_6
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    const-string v0, "[beta] BetaModule is uninitialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 190
    :cond_4
    :goto_2
    if-eqz p0, :cond_0

    .line 191
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    const-string v0, "[beta] BetaModule is uninitialized"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_8

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x12

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 195
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 173
    :cond_5
    const-string v0, "st.bch"

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    invoke-static {v0, v1}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 176
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v1, :cond_6

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->e:J

    sub-long/2addr v2, v4

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-wide v4, v1, Lcom/tencent/bugly/beta/global/e;->c:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_6

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    iget v0, v0, Lcom/tencent/bugly/proguard/y;->p:I

    if-ne v0, v6, :cond_7

    .line 180
    :cond_6
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZI)V

    goto :goto_2

    .line 183
    :cond_7
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V

    goto :goto_2

    .line 197
    :cond_8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->strToastCheckUpgradeError:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 201
    :cond_9
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZI)V

    .line 202
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    if-eqz v0, :cond_a

    .line 203
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x12

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 206
    :cond_a
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->strToastCheckingUpgrade:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0
.end method

.method public static cleanTinkerPatch()V
    .locals 0

    .prologue
    .line 771
    invoke-static {}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->cleanPatch()V

    .line 772
    return-void
.end method

.method public static getInstance()Lcom/tencent/bugly/beta/Beta;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const/16 v1, 0x3ea

    iput v1, v0, Lcom/tencent/bugly/beta/Beta;->id:I

    .line 128
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const-string v1, "1.2.1"

    iput-object v1, v0, Lcom/tencent/bugly/beta/Beta;->version:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    const-string v1, "G10"

    iput-object v1, v0, Lcom/tencent/bugly/beta/Beta;->versionKey:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    return-object v0
.end method

.method public static getStrategyTask()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-object v0
.end method

.method public static getUpgradeInfo()Lcom/tencent/bugly/beta/UpgradeInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 225
    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    .line 226
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/tencent/bugly/beta/UpgradeInfo;

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-direct {v0, v2}, Lcom/tencent/bugly/beta/UpgradeInfo;-><init>(Lcom/tencent/bugly/proguard/y;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-object v0

    .line 229
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 232
    goto :goto_0
.end method

.method public static declared-synchronized getUpgradeStrategy()Lcom/tencent/bugly/proguard/y;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 699
    const-class v2, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/upgrade/c;->a(Lcom/tencent/bugly/proguard/y;)Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    .line 702
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v0}, Lcom/tencent/bugly/proguard/y;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/y;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :goto_0
    monitor-exit v2

    return-object v0

    .line 704
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 707
    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDebug"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 242
    const-class v1, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v1

    :try_start_0
    const-string v0, "Beta init start...."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 243
    invoke-static {}, Lcom/tencent/bugly/proguard/ah;->a()Lcom/tencent/bugly/proguard/ah;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    iget v2, v2, Lcom/tencent/bugly/beta/Beta;->id:I

    sget v3, Lcom/tencent/bugly/beta/global/e;->a:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/tencent/bugly/beta/global/e;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/ah;->a(II)V

    .line 246
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    .line 249
    :cond_0
    const-string v0, "Beta will init at: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 252
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->e:Ljava/lang/String;

    .line 253
    const-string v2, "current process: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 254
    sget-object v2, Lcom/tencent/bugly/beta/Beta;->initProcessName:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 433
    :goto_0
    monitor-exit v1

    return-void

    .line 258
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 259
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 260
    const-string v0, "Beta has been initialized [apkMD5 : %s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->v:Ljava/lang/String;

    aput-object v2, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 265
    :cond_2
    :try_start_2
    const-string v0, "current upgrade sdk version:1.2.1"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 268
    iput-boolean p1, v2, Lcom/tencent/bugly/beta/global/e;->D:Z

    .line 270
    sget-wide v4, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_a

    .line 271
    const-string v0, "upgradeCheckPeriod cannot be negative"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    :goto_1
    sget-wide v4, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    cmp-long v0, v4, v8

    if-gez v0, :cond_b

    .line 278
    const-string v0, "initDelay cannot be negative"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 285
    :goto_2
    sget v0, Lcom/tencent/bugly/beta/Beta;->smallIconId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 287
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 288
    sget v0, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    iput v0, v2, Lcom/tencent/bugly/beta/global/e;->f:I

    .line 289
    const-string v0, "setted smallIconId: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/bugly/beta/Beta;->smallIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    :cond_3
    :goto_3
    :try_start_4
    sget v0, Lcom/tencent/bugly/beta/Beta;->largeIconId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_4

    .line 299
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 300
    sget v0, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    iput v0, v2, Lcom/tencent/bugly/beta/global/e;->g:I

    .line 301
    const-string v0, "setted largeIconId: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/bugly/beta/Beta;->largeIconId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 309
    :cond_4
    :goto_4
    :try_start_6
    sget v0, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_5

    .line 311
    :try_start_7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 312
    sget v0, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    iput v0, v2, Lcom/tencent/bugly/beta/global/e;->h:I

    .line 313
    const-string v0, "setted defaultBannerId: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/bugly/beta/Beta;->defaultBannerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    :cond_5
    :goto_5
    :try_start_8
    sget v0, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_6

    .line 323
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 324
    sget v0, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    iput v0, v2, Lcom/tencent/bugly/beta/global/e;->i:I

    .line 325
    const-string v0, "setted upgradeDialogLayoutId: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLayoutId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    :cond_6
    :goto_6
    :try_start_a
    sget v0, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_7

    .line 335
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 336
    sget v0, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    iput v0, v2, Lcom/tencent/bugly/beta/global/e;->j:I

    .line 337
    const-string v0, "setted tipsDialogLayoutId: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/tencent/bugly/beta/Beta;->tipsDialogLayoutId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 345
    :cond_7
    :goto_7
    :try_start_c
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_8

    .line 347
    :try_start_d
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->k:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setted upgradeDialogLifecycleListener:%s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeDialogLifecycleListener:Lcom/tencent/bugly/beta/ui/UILifecycleListener;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 355
    :cond_8
    :goto_8
    :try_start_e
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 356
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 357
    if-eqz v0, :cond_9

    .line 358
    iget-object v4, v2, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 273
    :cond_a
    sget-wide v4, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    iput-wide v4, v2, Lcom/tencent/bugly/beta/global/e;->c:J

    .line 274
    const-string v0, "setted upgradeCheckPeriod: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Lcom/tencent/bugly/beta/Beta;->upgradeCheckPeriod:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 280
    :cond_b
    sget-wide v4, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    iput-wide v4, v2, Lcom/tencent/bugly/beta/global/e;->b:J

    .line 281
    const-string v0, "setted initDelay: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-wide v6, Lcom/tencent/bugly/beta/Beta;->initDelay:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    const-string v3, "smallIconId is not available:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 303
    :catch_1
    move-exception v0

    .line 304
    const-string v3, "largeIconId is not available:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 315
    :catch_2
    move-exception v0

    .line 316
    const-string v3, "defaultBannerId is not available:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 327
    :catch_3
    move-exception v0

    .line 328
    const-string v3, "upgradeDialogLayoutId is not available:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 339
    :catch_4
    move-exception v0

    .line 340
    const-string v3, "tipsDialogLayoutId is not available:\n %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 349
    :catch_5
    move-exception v0

    .line 350
    const-string v3, "upgradeDialogLifecycleListener is not available:\n %"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 361
    :cond_c
    const-string v0, "setted canShowUpgradeActs: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 365
    :cond_d
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 366
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->canNotShowUpgradeActs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 367
    if-eqz v0, :cond_e

    .line 368
    iget-object v4, v2, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 371
    :cond_f
    const-string v0, "setted canNotShowUpgradeActs: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v2, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 375
    :cond_10
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoCheckUpgrade:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->d:Z

    .line 376
    const-string v3, "autoCheckUpgrade %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->d:Z

    if-eqz v0, :cond_16

    const-string v0, "is opened"

    :goto_b
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 378
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->showInterruptedStrategy:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->e:Z

    .line 379
    const-string v3, "showInterruptedStrategy %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->e:Z

    if-eqz v0, :cond_17

    const-string v0, "is opened"

    :goto_c
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 382
    const-string v3, "isDIY %s"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    if-eqz v0, :cond_18

    const-string v0, "is opened"

    :goto_d
    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 384
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    if-eqz v0, :cond_11

    .line 385
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_19

    .line 386
    const-string v0, "storageDir is not exists: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 395
    :cond_11
    :goto_e
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    if-nez v0, :cond_12

    .line 396
    sget-object v0, Lcom/tencent/bugly/proguard/s;->a:Lcom/tencent/bugly/proguard/s;

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    .line 399
    :cond_12
    iget-object v0, v2, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 400
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    .line 404
    :cond_13
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableNotification:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->P:Z

    .line 406
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoDownloadOnWifi:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->Q:Z

    .line 408
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->canShowApkInfo:Z

    iput-boolean v0, v2, Lcom/tencent/bugly/beta/global/e;->R:Z

    .line 410
    invoke-virtual {v2, p0}, Lcom/tencent/bugly/beta/global/e;->a(Landroid/content/Context;)V

    .line 413
    const-string v0, "rb.bch"

    sget-object v3, Lcom/tencent/bugly/beta/global/ResBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v3}, Lcom/tencent/bugly/beta/global/a;->a(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/beta/global/ResBean;

    sput-object v0, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 414
    sget-object v0, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    if-nez v0, :cond_14

    .line 415
    new-instance v0, Lcom/tencent/bugly/beta/global/ResBean;

    invoke-direct {v0}, Lcom/tencent/bugly/beta/global/ResBean;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/global/ResBean;->a:Lcom/tencent/bugly/beta/global/ResBean;

    .line 418
    :cond_14
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeListener:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    iput-object v3, v0, Lcom/tencent/bugly/beta/upgrade/c;->e:Lcom/tencent/bugly/beta/upgrade/UpgradeListener;

    .line 419
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->upgradeStateListener:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    iput-object v3, v0, Lcom/tencent/bugly/beta/upgrade/c;->f:Lcom/tencent/bugly/beta/upgrade/UpgradeStateListener;

    .line 421
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->enableHotfix:Z

    if-eqz v0, :cond_15

    .line 423
    invoke-static {p0}, Lcom/tencent/bugly/proguard/r;->a(Landroid/content/Context;)V

    .line 427
    :cond_15
    invoke-static {}, Lcom/tencent/bugly/proguard/ar;->a()Lcom/tencent/bugly/proguard/ar;

    move-result-object v0

    new-instance v3, Lcom/tencent/bugly/beta/global/d;

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iget-wide v4, v2, Lcom/tencent/bugly/beta/global/e;->b:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;J)Z

    .line 431
    invoke-static {}, Lcom/tencent/bugly/proguard/ah;->a()Lcom/tencent/bugly/proguard/ah;

    move-result-object v0

    sget-object v2, Lcom/tencent/bugly/beta/Beta;->instance:Lcom/tencent/bugly/beta/Beta;

    iget v2, v2, Lcom/tencent/bugly/beta/Beta;->id:I

    sget v3, Lcom/tencent/bugly/beta/global/e;->a:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/tencent/bugly/beta/global/e;->a:I

    invoke-virtual {v0, v2, v3}, Lcom/tencent/bugly/proguard/ah;->a(II)V

    .line 432
    const-string v0, "Beta init finished..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 376
    :cond_16
    const-string v0, "is closed"

    goto/16 :goto_b

    .line 379
    :cond_17
    const-string v0, "is closed"

    goto/16 :goto_c

    .line 382
    :cond_18
    const-string v0, "is closed"

    goto/16 :goto_d

    .line 388
    :cond_19
    sget-object v0, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    iput-object v0, v2, Lcom/tencent/bugly/beta/global/e;->l:Ljava/io/File;

    .line 389
    const-string v0, "setted storageDir: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/tencent/bugly/beta/Beta;->storageDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_e
.end method

.method public static installTinker(Ljava/lang/Object;)V
    .locals 0
    .param p0, "applicationLike"    # Ljava/lang/Object;

    .prologue
    .line 745
    invoke-static {p0}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;)V

    .line 746
    return-void
.end method

.method public static installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "applicationLike"    # Ljava/lang/Object;
    .param p1, "loadReporter"    # Ljava/lang/Object;
    .param p2, "patchReporter"    # Ljava/lang/Object;
    .param p3, "patchListener"    # Ljava/lang/Object;
    .param p4, "tinkerPatchResultListener"    # Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;
    .param p5, "upgradePatchProcessor"    # Ljava/lang/Object;
    .param p6, "repairPatchProcessor"    # Ljava/lang/Object;

    .prologue
    .line 763
    invoke-static/range {p0 .. p6}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->installTinker(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/bugly/beta/tinker/TinkerManager$TinkerPatchResultListener;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 765
    return-void
.end method

.method public static loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 781
    invoke-static {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 782
    return-void
.end method

.method public static loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "libName"    # Ljava/lang/String;

    .prologue
    .line 791
    invoke-static {p0, p1}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 6
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 810
    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    .line 813
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    :cond_0
    const-string v0, "libName is invalid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 867
    :goto_0
    return-void

    .line 818
    :cond_1
    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "lib"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 819
    :cond_2
    const-string v0, ".so"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".so"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 821
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "you pass libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 823
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, "LoadSoFileResult"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 825
    if-eqz v0, :cond_a

    .line 826
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LoadSoFileResult"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 829
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 830
    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    const-string v3, "PatchResult"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 832
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_9

    .line 833
    const-string v2, "armeabi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arch:armeabi,libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 835
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/beta/Beta;->loadArmLibrary(Landroid/content/Context;Ljava/lang/String;)V

    .line 855
    :goto_1
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "LoadSoFileResult"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 865
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->A:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LoadSoFileResult"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 836
    :cond_4
    :try_start_1
    const-string v2, "armeabi-v7a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arch:armeabi-v7a,libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 838
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/tencent/bugly/beta/Beta;->loadArmV7Library(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 839
    :cond_5
    const-string/jumbo v2, "x86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arch:x86,libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 841
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v2, "lib/x86"

    invoke-static {v0, v2, p0}, Lcom/tencent/bugly/beta/Beta;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 842
    :cond_6
    const-string/jumbo v2, "x86_64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arch:x86_64,libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 844
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v2, "lib/x86_64"

    invoke-static {v0, v2, p0}, Lcom/tencent/bugly/beta/Beta;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 845
    :cond_7
    const-string v2, "arm64-v8a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arch:arm64-v8a,libName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 847
    iget-object v0, v1, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v2, "lib/arm64-v8a"

    invoke-static {v0, v2, p0}, Lcom/tencent/bugly/beta/Beta;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 849
    :cond_8
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 852
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 857
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 860
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->cleanTinkerPatch()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "relativePath"    # Ljava/lang/String;
    .param p2, "libname"    # Ljava/lang/String;

    .prologue
    .line 802
    invoke-static {p0, p1, p2}, Lcom/tencent/bugly/beta/tinker/TinkerManager;->loadLibraryFromTinker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    return-void
.end method

.method public static declared-synchronized onUpgradeReceived(Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IIJLjava/lang/String;ZZILjava/lang/String;J)V
    .locals 27
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "upgradeType"    # I
    .param p2, "newFeature"    # Ljava/lang/String;
    .param p3, "publishTime"    # J
    .param p5, "buildNo"    # I
    .param p6, "versioncode"    # I
    .param p7, "versionName"    # Ljava/lang/String;
    .param p8, "downloadUrl"    # Ljava/lang/String;
    .param p9, "fileSize"    # J
    .param p11, "fileMd5"    # Ljava/lang/String;
    .param p12, "bannerUrl"    # Ljava/lang/String;
    .param p13, "dialogStyle"    # I
    .param p14, "popTimes"    # I
    .param p15, "popInterval"    # J
    .param p17, "strategyId"    # Ljava/lang/String;
    .param p18, "isManual"    # Z
    .param p19, "isSilence"    # Z
    .param p20, "result"    # I
    .param p21, "errMsg"    # Ljava/lang/String;
    .param p22, "updateTime"    # J

    .prologue
    .line 678
    const-class v25, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v25

    :try_start_0
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 679
    const-string v2, "IMG_title"

    move-object/from16 v0, v19

    move-object/from16 v1, p12

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    const-string v2, "VAL_style"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    new-instance v26, Lcom/tencent/bugly/proguard/y;

    const/4 v2, 0x0

    new-instance v3, Lcom/tencent/bugly/proguard/v;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v9, ""

    const-wide/16 v10, 0x1

    const-string v12, ""

    const-string v14, ""

    const-string v15, ""

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p5

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v15}, Lcom/tencent/bugly/proguard/v;-><init>(Ljava/lang/String;BILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/bugly/proguard/u;

    const-string v7, ""

    const-string v10, ""

    move-object/from16 v5, p11

    move-object/from16 v6, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v4 .. v10}, Lcom/tencent/bugly/proguard/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move/from16 v0, p1

    int-to-byte v13, v0

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v21, 0x1

    const/16 v24, 0x1

    move-object/from16 v5, v26

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move v10, v2

    move-object v11, v3

    move-object v12, v4

    move/from16 v14, p14

    move-wide/from16 v15, p15

    move-object/from16 v20, p17

    move-wide/from16 v22, p22

    invoke-direct/range {v5 .. v24}, Lcom/tencent/bugly/proguard/y;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/tencent/bugly/proguard/v;Lcom/tencent/bugly/proguard/u;BIJLcom/tencent/bugly/proguard/u;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IJI)V

    .line 689
    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    if-nez p21, :cond_0

    const-string v7, ""

    :goto_0
    move/from16 v3, p18

    move/from16 v4, p19

    move/from16 v5, p20

    move-object/from16 v6, v26

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/bugly/beta/upgrade/c;->a(ZZILcom/tencent/bugly/proguard/y;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    monitor-exit v25

    return-void

    :cond_0
    move-object/from16 v7, p21

    .line 689
    goto :goto_0

    .line 678
    :catchall_0
    move-exception v2

    monitor-exit v25

    throw v2
.end method

.method public static registerDownloadListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V
    .locals 1
    .param p0, "dl"    # Lcom/tencent/bugly/beta/download/DownloadListener;

    .prologue
    .line 526
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iput-object p0, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 528
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v0, p0}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 531
    :cond_0
    return-void
.end method

.method public static declared-synchronized showUpgradeDialog(Ljava/lang/String;ILjava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILcom/tencent/bugly/beta/download/DownloadListener;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 27
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "upgradeType"    # I
    .param p2, "newFeature"    # Ljava/lang/String;
    .param p3, "publishTime"    # J
    .param p5, "buildNo"    # I
    .param p6, "versioncode"    # I
    .param p7, "versionName"    # Ljava/lang/String;
    .param p8, "downloadUrl"    # Ljava/lang/String;
    .param p9, "fileSize"    # J
    .param p11, "fileMd5"    # Ljava/lang/String;
    .param p12, "bannerUrl"    # Ljava/lang/String;
    .param p13, "dialogStyle"    # I
    .param p14, "listener"    # Lcom/tencent/bugly/beta/download/DownloadListener;
    .param p15, "upgradeRunnable"    # Ljava/lang/Runnable;
    .param p16, "cancelRunnable"    # Ljava/lang/Runnable;
    .param p17, "isManual"    # Z

    .prologue
    .line 610
    const-class v25, Lcom/tencent/bugly/beta/Beta;

    monitor-enter v25

    :try_start_0
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 611
    const-string v2, "IMG_title"

    move-object/from16 v0, v19

    move-object/from16 v1, p12

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v2, "VAL_style"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    new-instance v2, Lcom/tencent/bugly/proguard/y;

    const/16 v26, 0x0

    new-instance v3, Lcom/tencent/bugly/proguard/v;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->u:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v9, ""

    const-wide/16 v10, 0x1

    const-string v12, ""

    const-string v14, "1.2.1"

    const-string v15, ""

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p5

    move-object/from16 v13, p11

    invoke-direct/range {v3 .. v15}, Lcom/tencent/bugly/proguard/v;-><init>(Ljava/lang/String;BILjava/lang/String;ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/tencent/bugly/proguard/u;

    const-string v7, ""

    const-string v10, ""

    move-object/from16 v5, p11

    move-object/from16 v6, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v4 .. v10}, Lcom/tencent/bugly/proguard/u;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    move/from16 v0, p1

    int-to-byte v13, v0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x1

    move-object v5, v2

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move/from16 v10, v26

    move-object v11, v3

    move-object v12, v4

    invoke-direct/range {v5 .. v24}, Lcom/tencent/bugly/proguard/y;-><init>(Ljava/lang/String;Ljava/lang/String;JILcom/tencent/bugly/proguard/v;Lcom/tencent/bugly/proguard/u;BIJLcom/tencent/bugly/proguard/u;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IJI)V

    .line 621
    sget-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3}, Lcom/tencent/bugly/beta/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    sget-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/download/DownloadTask;->delete(Z)V

    .line 623
    const/4 v3, 0x0

    sput-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 625
    :cond_0
    sget-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-nez v3, :cond_1

    .line 626
    sget-object v3, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v3, v3, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v4, v2, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v4, v4, Lcom/tencent/bugly/proguard/u;->b:Ljava/lang/String;

    sget-object v5, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v5, v5, Lcom/tencent/bugly/beta/global/e;->t:Ljava/io/File;

    .line 628
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, v2, Lcom/tencent/bugly/proguard/y;->f:Lcom/tencent/bugly/proguard/u;

    iget-object v7, v7, Lcom/tencent/bugly/proguard/u;->a:Ljava/lang/String;

    .line 627
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/tencent/bugly/beta/download/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/beta/download/DownloadTask;

    move-result-object v3

    sput-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    .line 632
    :cond_1
    sget-object v3, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    move-object/from16 v0, p14

    invoke-virtual {v3, v0}, Lcom/tencent/bugly/beta/download/DownloadTask;->addListener(Lcom/tencent/bugly/beta/download/DownloadListener;)V

    .line 633
    sget-object v3, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    sget-object v4, Lcom/tencent/bugly/beta/Beta;->a:Lcom/tencent/bugly/beta/download/DownloadTask;

    invoke-virtual {v3, v2, v4}, Lcom/tencent/bugly/beta/ui/h;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/download/DownloadTask;)V

    .line 634
    sget-object v3, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    move-object/from16 v0, p15

    iput-object v0, v3, Lcom/tencent/bugly/beta/ui/h;->q:Ljava/lang/Runnable;

    .line 635
    sget-object v3, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    move-object/from16 v0, p16

    iput-object v0, v3, Lcom/tencent/bugly/beta/ui/h;->r:Ljava/lang/Runnable;

    .line 637
    sget-object v3, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    sget-object v4, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v4, v4, Lcom/tencent/bugly/beta/global/e;->p:Lcom/tencent/bugly/beta/download/b;

    iget-object v5, v2, Lcom/tencent/bugly/proguard/y;->l:Ljava/util/Map;

    invoke-virtual {v3, v4, v5}, Lcom/tencent/bugly/beta/global/f;->a(Lcom/tencent/bugly/beta/download/b;Ljava/util/Map;)V

    .line 639
    if-eqz p17, :cond_3

    .line 640
    sget-object v3, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    const/4 v8, 0x2

    if-ne v2, v8, :cond_2

    const/4 v2, 0x1

    .line 641
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    const/16 v2, 0xbb8

    .line 640
    invoke-virtual {v3, v4, v2}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    :goto_1
    monitor-exit v25

    return-void

    .line 640
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 644
    :cond_3
    :try_start_1
    sget-object v3, Lcom/tencent/bugly/beta/global/f;->a:Lcom/tencent/bugly/beta/global/f;

    new-instance v4, Lcom/tencent/bugly/beta/global/d;

    const/4 v5, 0x2

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/tencent/bugly/beta/ui/h;->u:Lcom/tencent/bugly/beta/ui/h;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    const/4 v8, 0x2

    if-ne v2, v8, :cond_4

    const/4 v2, 0x1

    .line 645
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 644
    invoke-virtual {v3, v4}, Lcom/tencent/bugly/beta/global/f;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 610
    :catchall_0
    move-exception v2

    monitor-exit v25

    throw v2

    .line 644
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static startDownload()Lcom/tencent/bugly/beta/download/DownloadTask;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 551
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, v5

    sget-object v1, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v1, v1, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eq v0, v1, :cond_1

    .line 553
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    new-instance v1, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0xd

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v4, v4, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-object v5, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v5, v5, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    .line 556
    :cond_1
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->h:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v0}, Lcom/tencent/bugly/beta/global/d;->run()V

    .line 557
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    return-object v0
.end method

.method public static unregisterDownloadListener()V
    .locals 2

    .prologue
    .line 538
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    if-eqz v0, :cond_0

    .line 539
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->c:Lcom/tencent/bugly/beta/download/DownloadTask;

    sget-object v1, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v1, v1, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/beta/download/DownloadTask;->removeListener(Lcom/tencent/bugly/beta/download/DownloadListener;)Z

    .line 541
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/bugly/beta/global/e;->q:Lcom/tencent/bugly/beta/download/DownloadListener;

    .line 542
    return-void
.end method


# virtual methods
.method public getTables()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 446
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "dl_1002"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ge_1002"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "st_1002"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public declared-synchronized init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z
    .param p3, "buglyStrategy"    # Lcom/tencent/bugly/BuglyStrategy;

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    const-string v1, "G10"

    const-string v2, "1.2.1"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    sget-boolean v0, Lcom/tencent/bugly/beta/Beta;->autoInit:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-static {p1, p2}, Lcom/tencent/bugly/beta/Beta;->init(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    monitor-exit p0

    return-void

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onDbDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 518
    return-void
.end method

.method public onDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "newVersion"    # I

    .prologue
    const/4 v8, 0x0

    .line 456
    :goto_0
    if-ge p2, p3, :cond_2

    .line 458
    packed-switch p2, :pswitch_data_0

    .line 456
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 463
    :pswitch_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 465
    const-string v1, " CREATE TABLE  IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "st_1002"

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    .line 469
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_tm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "int"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    .line 470
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_dt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "blob"

    .line 471
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",primary key("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    .line 472
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_tp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v1, "create %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_2
    :try_start_1
    const-string v3, "_id = 1002"

    .line 483
    const-string v1, "t_pf"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 484
    if-nez v1, :cond_3

    .line 503
    if-eqz v1, :cond_2

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 513
    :cond_2
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 487
    :cond_3
    :goto_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 488
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 489
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 490
    const-string v2, "_id"

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    :cond_4
    const-string v2, "_tm"

    const-string v3, "_tm"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 493
    const-string v2, "_tp"

    const-string v3, "_tp"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v2, "_dt"

    const-string v3, "_dt"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 495
    const-string v2, "st_1002"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 498
    :catch_1
    move-exception v0

    .line 499
    :goto_4
    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 500
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 503
    :cond_5
    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 503
    :cond_6
    if-eqz v1, :cond_0

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 503
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_7

    .line 504
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 503
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 498
    :catch_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
