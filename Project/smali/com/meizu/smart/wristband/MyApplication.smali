.class public Lcom/meizu/smart/wristband/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyApplication"


# instance fields
.field private mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 31
    new-instance v0, Lcom/meizu/smart/wristband/MyApplication$1;

    invoke-direct {v0, p0}, Lcom/meizu/smart/wristband/MyApplication$1;-><init>(Lcom/meizu/smart/wristband/MyApplication;)V

    iput-object v0, p0, Lcom/meizu/smart/wristband/MyApplication;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/smart/wristband/MyApplication;Lcom/meizu/smart/wristband/bluetooth/BleService;)Lcom/meizu/smart/wristband/bluetooth/BleService;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/smart/wristband/MyApplication;
    .param p1, "x1"    # Lcom/meizu/smart/wristband/bluetooth/BleService;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/smart/wristband/MyApplication;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    return-object p1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 73
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method public getBleService()Lcom/meizu/smart/wristband/bluetooth/BleService;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/meizu/smart/wristband/MyApplication;->mService:Lcom/meizu/smart/wristband/bluetooth/BleService;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 50
    new-instance v3, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;

    invoke-direct {v3, p0}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;-><init>(Landroid/content/Context;)V

    .line 51
    .local v3, "strategy":Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/meizu/smart/wristband/models/newwork/NetWorkApi1;->RELEASE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/bugly/crashreport/CrashReport$UserStrategy;->setAppChannel(Ljava/lang/String;)Lcom/tencent/bugly/BuglyStrategy;

    .line 54
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/MyApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "0c969253f4"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6, v3}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    .line 55
    sget-object v4, Lcom/tencent/bugly/beta/Beta;->canShowUpgradeActs:Ljava/util/List;

    const-class v5, Lcom/meizu/smart/wristband/meizuUI/main/MainActivity;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/MyApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "strListener":Ljava/lang/String;
    const-string v4, "MyApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strListener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    if-eqz v2, :cond_0

    const-string v4, "com.meizu.smart.wristband/com.meizu.smart.wristband.servers.NotificationReceiverService"

    .line 59
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/meizu/smart/wristband/servers/NotificationReceiverService;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/meizu/smart/wristband/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x2

    invoke-virtual {v1, v0, v4, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 63
    invoke-virtual {v1, v0, v7, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 64
    const-string v4, "MyApplication"

    const-string v5, "setComponentEnabledSetting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method
