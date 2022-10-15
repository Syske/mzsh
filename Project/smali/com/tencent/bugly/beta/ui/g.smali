.class public Lcom/tencent/bugly/beta/ui/g;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/beta/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/beta/global/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tencent/bugly/beta/global/d;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Landroid/os/Handler;

.field private static e:Lcom/tencent/bugly/beta/global/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/ui/g;->a:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/ui/g;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/beta/ui/g;->c:Ljava/util/Map;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 184
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 185
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->u:Ljava/lang/String;

    .line 205
    :goto_0
    return-object v0

    .line 187
    :cond_0
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v1, "activity"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 190
    if-eqz v0, :cond_1

    .line 191
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v0, "\u65e0\u6cd5\u83b7\u53d6Activity\u4fe1\u606f\uff0c\u8bf7\u5728AndroidManifest.xml\u4e2d\u6dfb\u52a0GET_TASKS\u6743\u9650\uff1a\n<uses-permission android:name=\"android.permission.GET_TASKS\" />\n"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 205
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    .line 201
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/beta/ui/b;Z)V
    .locals 4

    .prologue
    .line 51
    const-class v1, Lcom/tencent/bugly/beta/ui/g;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_1

    .line 52
    const/4 v0, 0x0

    const-wide/16 v2, 0x1388

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    const-string v2, "activity"

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 59
    if-eqz v0, :cond_0

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    const-wide/16 v2, 0x1388

    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-static {p0, p1, v0, v2, v3}, Lcom/tencent/bugly/beta/ui/g;->a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_2
    :try_start_3
    const-string/jumbo v0, "\u65e0\u6cd5\u83b7\u53d6GET_TASK\u6743\u9650\uff0c\u5c06\u5728\u901a\u77e5\u680f\u63d0\u9192\u5347\u7ea7\uff0c\u5982\u9700\u5f39\u7a97\u63d0\u9192\uff0c\u8bf7\u5728AndroidManifest.xml\u4e2d\u6dfb\u52a0GET_TASKS\u6743\u9650\uff1a\n<uses-permission android:name=\"android.permission.GET_TASKS\" />\n"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v0, v0, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lcom/tencent/bugly/beta/ui/c;->a:Lcom/tencent/bugly/beta/ui/c;

    sget-object v2, Lcom/tencent/bugly/beta/upgrade/c;->a:Lcom/tencent/bugly/beta/upgrade/c;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/c;->b:Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;

    iget-object v2, v2, Lcom/tencent/bugly/beta/upgrade/BetaGrayStrategy;->a:Lcom/tencent/bugly/proguard/y;

    invoke-virtual {v0, v2, p0}, Lcom/tencent/bugly/beta/ui/c;->a(Lcom/tencent/bugly/proguard/y;Lcom/tencent/bugly/beta/ui/b;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lcom/tencent/bugly/beta/ui/b;ZZJ)V
    .locals 9

    .prologue
    const/4 v6, 0x2

    .line 93
    const-class v4, Lcom/tencent/bugly/beta/ui/g;

    monitor-enter v4

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/b;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 175
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 96
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/b;->hashCode()I

    move-result v3

    .line 98
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    if-nez v2, :cond_2

    .line 99
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    .line 103
    :cond_2
    instance-of v2, p0, Lcom/tencent/bugly/beta/ui/h;

    if-eqz v2, :cond_6

    .line 105
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->e:Lcom/tencent/bugly/beta/global/d;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    move-object v0, p0

    check-cast v0, Lcom/tencent/bugly/beta/ui/h;

    move-object v2, v0

    iget-object v2, v2, Lcom/tencent/bugly/beta/ui/h;->o:Lcom/tencent/bugly/proguard/y;

    iget-byte v2, v2, Lcom/tencent/bugly/proguard/y;->g:B

    if-ne v2, v6, :cond_3

    .line 107
    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v5, 0xf

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    .line 108
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 109
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    aput-object v8, v6, v7

    invoke-direct {v2, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    sput-object v2, Lcom/tencent/bugly/beta/ui/g;->e:Lcom/tencent/bugly/beta/global/d;

    .line 110
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->e:Lcom/tencent/bugly/beta/global/d;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    :cond_3
    if-nez p1, :cond_5

    invoke-static {}, Lcom/tencent/bugly/beta/ui/g;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 114
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/global/d;

    .line 115
    if-nez v2, :cond_4

    .line 116
    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v5, 0xb

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    .line 117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 118
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v2, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 119
    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_4
    sget-object v3, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    sget-object v3, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2

    .line 125
    :cond_5
    :try_start_2
    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->b:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    :cond_6
    if-nez p2, :cond_8

    sget-object v2, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v2, v2, Lcom/tencent/bugly/beta/global/e;->s:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/bugly/proguard/au;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 131
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/beta/global/d;

    .line 132
    if-nez v2, :cond_7

    .line 133
    new-instance v2, Lcom/tencent/bugly/beta/global/d;

    const/16 v5, 0xb

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    .line 134
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 135
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v2, v5, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 136
    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_7
    sget-object v3, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    sget-object v3, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    invoke-virtual {v3, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 142
    :cond_8
    sget-object v5, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->c:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    new-instance v5, Lcom/tencent/bugly/beta/global/d;

    const/16 v2, 0x11

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/tencent/bugly/beta/ui/g;->a:Ljava/util/Map;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x2

    aput-object p0, v6, v3

    invoke-direct {v5, v2, v6}, Lcom/tencent/bugly/beta/global/d;-><init>(I[Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p0}, Lcom/tencent/bugly/beta/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 150
    if-eqz v3, :cond_a

    .line 151
    instance-of v2, v3, Lcom/tencent/bugly/beta/ui/BetaActivity;

    if-eqz v2, :cond_9

    .line 152
    move-object v0, v3

    check-cast v0, Lcom/tencent/bugly/beta/ui/BetaActivity;

    move-object v2, v0

    iput-object v5, v2, Lcom/tencent/bugly/beta/ui/BetaActivity;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 156
    :goto_1
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 154
    :cond_9
    sget-object v2, Lcom/tencent/bugly/beta/ui/g;->d:Landroid/os/Handler;

    const-wide/16 v6, 0x190

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 158
    :cond_a
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized b()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 213
    const-class v4, Lcom/tencent/bugly/beta/ui/g;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/tencent/bugly/beta/ui/g;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 214
    const/4 v0, 0x0

    .line 216
    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    .line 220
    :goto_0
    :try_start_2
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    if-eqz v5, :cond_2

    .line 222
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 223
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    move v0, v1

    .line 241
    :goto_1
    monitor-exit v4

    return v0

    .line 217
    :catch_0
    move-exception v3

    .line 218
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 228
    goto :goto_1

    .line 229
    :cond_3
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 230
    if-eqz v5, :cond_6

    .line 231
    sget-object v0, Lcom/tencent/bugly/beta/global/e;->E:Lcom/tencent/bugly/beta/global/e;

    iget-object v0, v0, Lcom/tencent/bugly/beta/global/e;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 232
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    move v0, v2

    .line 233
    goto :goto_1

    :cond_6
    move v0, v1

    .line 237
    goto :goto_1

    :cond_7
    move v0, v1

    .line 241
    goto :goto_1

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method
