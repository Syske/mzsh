.class public Lcom/tencent/bugly/Bugly;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static a:Z

.field public static applicationContext:Landroid/content/Context;

.field public static enable:Z

.field public static isDev:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getAppChannel()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    const-class v2, Lcom/tencent/bugly/Bugly;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 95
    :goto_0
    monitor-exit v2

    return-object v0

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    invoke-static {}, Lcom/tencent/bugly/proguard/aj;->a()Lcom/tencent/bugly/proguard/aj;

    move-result-object v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_1
    const/16 v3, 0x22c

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 86
    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/bugly/proguard/aj;->a(ILcom/tencent/bugly/proguard/ai;Z)Ljava/util/Map;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    const-string v3, "app_channel"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 89
    if-eqz v0, :cond_2

    .line 90
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/bugly/Bugly;->init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V

    .line 39
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "isDebug"    # Z
    .param p3, "strategy"    # Lcom/tencent/bugly/BuglyStrategy;

    .prologue
    .line 51
    const-class v1, Lcom/tencent/bugly/Bugly;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    monitor-exit v1

    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/tencent/bugly/Bugly;->a:Z

    .line 55
    invoke-static {p0}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 57
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string v2, "init arg \'context\' should not be null!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 61
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/tencent/bugly/CrashModule;->getInstance()Lcom/tencent/bugly/CrashModule;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 62
    invoke-static {}, Lcom/tencent/bugly/beta/Beta;->getInstance()Lcom/tencent/bugly/beta/Beta;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/a;)V

    .line 63
    sget-boolean v0, Lcom/tencent/bugly/Bugly;->enable:Z

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    .line 64
    sget-object v0, Lcom/tencent/bugly/Bugly;->applicationContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setIsDevelopmentDevice(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isDevelopmentDevice"    # Z

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/tencent/bugly/crashreport/CrashReport;->setIsDevelopmentDevice(Landroid/content/Context;Z)V

    .line 106
    return-void
.end method
