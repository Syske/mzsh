.class public Lcom/tencent/bugly/b;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static a:Z

.field public static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/bugly/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Z

.field private static d:Lcom/tencent/bugly/proguard/ap;

.field private static e:Lcom/tencent/bugly/proguard/aj;

.field private static f:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private static g:Lcom/tencent/bugly/proguard/ah;

.field private static h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 71
    const-class v0, Lcom/tencent/bugly/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit v0

    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V
    .locals 3

    .prologue
    .line 81
    const-class v1, Lcom/tencent/bugly/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/tencent/bugly/b;->h:Z

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit v1

    return-void

    .line 85
    :cond_0
    if-nez p0, :cond_1

    .line 86
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string v2, "[init] context of init() is null, check it."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 89
    :cond_1
    :try_start_2
    invoke-static {p0}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v2

    .line 99
    if-nez v2, :cond_3

    .line 100
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string v2, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_3
    iget-boolean v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->z:Z

    invoke-static {p0, v2, v0, p1}, Lcom/tencent/bugly/b;->a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/bugly/BuglyStrategy;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 117
    const-class v2, Lcom/tencent/bugly/b;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/tencent/bugly/b;->h:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v0, "[init] initial Multi-times, ignore this."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit v2

    return-void

    .line 121
    :cond_0
    if-nez p0, :cond_1

    .line 122
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string v1, "[init] context is null, check it."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 126
    :cond_1
    if-nez p1, :cond_2

    .line 127
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/proguard/as;->b:Ljava/lang/String;

    const-string v1, "init arg \'crashReportAppID\' should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/b;->h:Z

    .line 131
    if-eqz p2, :cond_3

    .line 133
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/b;->c:Z

    .line 134
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/proguard/as;->c:Z

    .line 135
    const-string v1, "Bugly debug\u6a21\u5f0f\u5f00\u542f\uff0c\u8bf7\u5728\u53d1\u5e03\u65f6\u628aisDebug\u5173\u95ed\u3002 -- Running in debug model for \'isDebug\' is enabled. Please disable it when you release."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 137
    const-string v1, "--------------------------------------------------------------------------------------------"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 139
    const-string v1, "Bugly debug\u6a21\u5f0f\u5c06\u6709\u4ee5\u4e0b\u884c\u4e3a\u7279\u6027 -- The following list shows the behaviour of debug model: "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 141
    const-string v1, "[1] \u8f93\u51fa\u8be6\u7ec6\u7684Bugly SDK\u7684Log -- More detailed log of Bugly SDK will be output to logcat;"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 143
    const-string v1, "[2] \u6bcf\u4e00\u6761Crash\u90fd\u4f1a\u88ab\u7acb\u5373\u4e0a\u62a5 -- Every crash caught by Bugly will be uploaded immediately."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 145
    const-string v1, "[3] \u81ea\u5b9a\u4e49\u65e5\u5fd7\u5c06\u4f1a\u5728Logcat\u4e2d\u8f93\u51fa -- Custom log will be output to logcat."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 146
    const-string v1, "--------------------------------------------------------------------------------------------"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 148
    const-string v1, "[init] Open debug mode of Bugly."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 151
    :cond_3
    const-string v1, "[init] Bugly version: v%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "2.4.0"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 152
    const-string v1, " crash report start initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 153
    const-string v1, "[init] Bugly start initializing..."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 154
    const-string v1, "[init] Bugly complete version: v%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "2.4.0(1.2.1)"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 156
    invoke-static {p0}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 159
    invoke-static {v3}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->t()Ljava/lang/String;

    .line 162
    invoke-static {v3}, Lcom/tencent/bugly/proguard/at;->a(Landroid/content/Context;)V

    .line 163
    sget-object v4, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/aj;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/proguard/aj;

    move-result-object v4

    sput-object v4, Lcom/tencent/bugly/b;->e:Lcom/tencent/bugly/proguard/aj;

    .line 164
    invoke-static {v3}, Lcom/tencent/bugly/proguard/ap;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ap;

    move-result-object v4

    sput-object v4, Lcom/tencent/bugly/b;->d:Lcom/tencent/bugly/proguard/ap;

    .line 165
    sget-object v4, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-static {v3, v4}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Landroid/content/Context;Ljava/util/List;)Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v4

    sput-object v4, Lcom/tencent/bugly/b;->f:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 166
    invoke-static {v3}, Lcom/tencent/bugly/proguard/ah;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/ah;

    move-result-object v4

    sput-object v4, Lcom/tencent/bugly/b;->g:Lcom/tencent/bugly/proguard/ah;

    .line 169
    invoke-static {v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/crashreport/common/info/a;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/bugly/b;->a:Z

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-virtual {v1, p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Ljava/lang/String;)V

    .line 175
    const-string v4, "[param] Set APP ID:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 177
    invoke-static {p3, v1}, Lcom/tencent/bugly/b;->a(Lcom/tencent/bugly/BuglyStrategy;Lcom/tencent/bugly/crashreport/common/info/a;)V

    .line 179
    invoke-static {v3, p3}, Lcom/tencent/bugly/crashreport/biz/b;->a(Landroid/content/Context;Lcom/tencent/bugly/BuglyStrategy;)V

    move v1, v0

    .line 182
    :goto_1
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-ge v1, v0, :cond_6

    .line 184
    :try_start_3
    sget-object v4, Lcom/tencent/bugly/b;->g:Lcom/tencent/bugly/proguard/ah;

    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    iget v0, v0, Lcom/tencent/bugly/a;->id:I

    invoke-virtual {v4, v0}, Lcom/tencent/bugly/proguard/ah;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/a;

    invoke-virtual {v0, v3, p2, p3}, Lcom/tencent/bugly/a;->init(Landroid/content/Context;ZLcom/tencent/bugly/BuglyStrategy;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 182
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    :try_start_4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 189
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 195
    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/tencent/bugly/BuglyStrategy;->getAppReportDelay()J

    move-result-wide v0

    .line 196
    :goto_3
    sget-object v3, Lcom/tencent/bugly/b;->f:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v3, v0, v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(J)V

    .line 198
    const-string v0, "[init] Bugly initialization finished."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 195
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_3
.end method

.method private static a(Lcom/tencent/bugly/BuglyStrategy;Lcom/tencent/bugly/crashreport/common/info/a;)V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x64

    const/4 v7, 0x0

    .line 203
    if-nez p0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_a

    .line 210
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v2, "appVersion %s length is over limit %d substring to %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    aput-object v0, v3, v10

    .line 211
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 216
    :goto_1
    iput-object v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->o:Ljava/lang/String;

    .line 217
    const-string v0, "[param] Set App version: %s"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 222
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->isReplaceOldChannel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getAppChannel()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_9

    .line 227
    const/4 v0, 0x0

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v2, "appChannel %s length is over limit %d substring to %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    const/16 v4, 0x64

    .line 229
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v0, v3, v1

    .line 228
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move-object v6, v0

    .line 232
    :goto_2
    sget-object v0, Lcom/tencent/bugly/b;->e:Lcom/tencent/bugly/proguard/aj;

    const/16 v1, 0x22c

    const-string v2, "app_channel"

    .line 233
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/tencent/bugly/proguard/aj;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/ai;Z)Z

    .line 234
    iput-object v6, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    .line 247
    :cond_2
    :goto_3
    const-string v0, "[param] Set App channel: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_8

    .line 258
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v2, "appPackageName %s length is over limit %d substring to %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 260
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    aput-object v0, v3, v10

    .line 259
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 264
    :goto_5
    iput-object v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 265
    const-string v0, "[param] Set App package: %s"

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    :cond_4
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_5

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_7

    .line 272
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v2, "deviceId %s length is over limit %d substring to %s"

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 274
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v9

    aput-object v0, v3, v10

    .line 273
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    :goto_6
    invoke-virtual {p1, v0}, Lcom/tencent/bugly/crashreport/common/info/a;->c(Ljava/lang/String;)V

    .line 278
    const-string v1, "s[param] Set device ID: %s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 282
    :cond_5
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->isUploadProcess()Z

    move-result v0

    iput-boolean v0, p1, Lcom/tencent/bugly/crashreport/common/info/a;->g:Z

    .line 285
    invoke-virtual {p0}, Lcom/tencent/bugly/BuglyStrategy;->isBuglyLogUpload()Z

    move-result v0

    .line 286
    sput-boolean v0, Lcom/tencent/bugly/proguard/at;->a:Z

    goto/16 :goto_0

    .line 237
    :cond_6
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/b;->e:Lcom/tencent/bugly/proguard/aj;

    const/16 v1, 0x22c

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 238
    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/aj;->a(ILcom/tencent/bugly/proguard/ai;Z)Ljava/util/Map;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    .line 240
    const-string v1, "app_channel"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 241
    if-eqz v0, :cond_2

    .line 242
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p1, Lcom/tencent/bugly/crashreport/common/info/a;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 248
    :catch_0
    move-exception v0

    .line 249
    sget-boolean v1, Lcom/tencent/bugly/b;->c:Z

    if-eqz v1, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    goto :goto_6

    :cond_8
    move-object v0, v1

    goto :goto_5

    :cond_9
    move-object v6, v1

    goto/16 :goto_2

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/a;)V
    .locals 2

    .prologue
    .line 295
    const-class v1, Lcom/tencent/bugly/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/tencent/bugly/b;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    monitor-exit v1

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/tencent/bugly/crashreport/common/info/a;)Z
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/common/info/a;->t:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bugly"

    .line 64
    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_1
    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, ""

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
