.class public Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/bugly/crashreport/a;


# static fields
.field private static a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

.field private static l:Z

.field private static m:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final d:Lcom/tencent/bugly/proguard/ar;

.field private e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

.field private f:Ljava/lang/String;

.field private final g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private n:Ljava/lang/String;

.field private o:Lcom/tencent/bugly/crashreport/crash/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 62
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/ar;ZLjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "comInfo"    # Lcom/tencent/bugly/crashreport/common/info/a;
    .param p3, "crashHandler"    # Lcom/tencent/bugly/crashreport/crash/b;
    .param p4, "strategyManager"    # Lcom/tencent/bugly/crashreport/common/strategy/a;
    .param p5, "asyncHandler"    # Lcom/tencent/bugly/proguard/ar;
    .param p6, "isDebug"    # Z
    .param p7, "tombPath"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SdCardPath"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    .line 50
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 52
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 54
    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->n:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/tencent/bugly/proguard/au;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    .line 124
    :try_start_0
    invoke-static {p7}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 133
    .end local p7    # "tombPath":Ljava/lang/String;
    :goto_0
    iput-object p3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Lcom/tencent/bugly/crashreport/crash/b;

    .line 134
    iput-object p7, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 136
    iput-object p5, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/proguard/ar;

    .line 137
    iput-boolean p6, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    .line 138
    return-void

    .line 127
    .restart local p7    # "tombPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v0, "bugly"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p7

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->d:Ljava/lang/String;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/app_bugly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const-string v0, "[Native] Check extra jni for Bugly NDK v%s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 87
    const-string v0, "2.1.1"

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v0, "2.3.0"

    const-string v2, "."

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string v0, "."

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v3, v1, :cond_1

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    .line 99
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_2
    :goto_1
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-eqz v0, :cond_4

    .line 106
    const-string v0, "[Native] Info setting jni can be accessed."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 110
    :goto_2
    sget-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-eqz v0, :cond_5

    .line 111
    const-string v0, "[Native] Extra jni can be accessed."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 115
    :goto_3
    return-void

    .line 92
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_4
    const-string v0, "[Native] Info setting jni can not be accessed."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_5
    const-string v0, "[Native] Extra jni can not be accessed."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3

    .line 102
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(ILjava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 649
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    if-nez v1, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->setNativeInfo(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 654
    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :catch_0
    move-exception v1

    .line 656
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->m:Z

    goto :goto_0

    .line 658
    :catch_1
    move-exception v1

    .line 659
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 402
    .line 404
    :try_start_0
    const-string v1, "[Native] Trying to load so: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 405
    if-eqz p2, :cond_0

    .line 406
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    :try_start_1
    const-string v1, "[Native] Successfully loaded SO: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :goto_1
    return v0

    .line 408
    :cond_0
    :try_start_2
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    move-object v2, v1

    move v1, v3

    .line 413
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 414
    const-string v2, "[Native] Failed to load so: %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_1

    .line 412
    :catch_1
    move-exception v1

    move-object v2, v1

    move v1, v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/common/info/a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized c(Z)V
    .locals 4

    .prologue
    .line 542
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eq v0, p1, :cond_0

    .line 543
    const-string v0, "user change native %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 544
    iput-boolean p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    :cond_0
    monitor-exit p0

    return-void

    .line 542
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)Lcom/tencent/bugly/crashreport/crash/b;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Lcom/tencent/bugly/crashreport/crash/b;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    .locals 2

    .prologue
    .line 164
    const-class v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/ar;ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cominfoManager"    # Lcom/tencent/bugly/crashreport/common/info/a;
    .param p2, "crashHandler"    # Lcom/tencent/bugly/crashreport/crash/b;
    .param p3, "strategyManager"    # Lcom/tencent/bugly/crashreport/common/strategy/a;
    .param p4, "asyncHandler"    # Lcom/tencent/bugly/proguard/ar;
    .param p5, "isDebug"    # Z
    .param p6, "tombPath"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v8, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Lcom/tencent/bugly/proguard/ar;ZLjava/lang/String;)V

    sput-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    .line 160
    :cond_0
    sget-object v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a:Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method protected declared-synchronized a()V
    .locals 7

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-nez v0, :cond_0

    .line 424
    const-string v0, "[Native] Native crash report has already unregistered."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_0
    monitor-exit p0

    return-void

    .line 428
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->unregist()Ljava/lang/String;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_1

    .line 430
    const-string v0, "[Native] Successfully closed native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v0

    .line 435
    :try_start_2
    const-string v0, "[Native] Failed to close native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    :cond_1
    :try_start_3
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "enableHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 440
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 439
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 442
    const-string v0, "[Native] Successfully closed native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 444
    :catch_1
    move-exception v0

    .line 445
    :try_start_4
    const-string v0, "[Native] Failed to close native crash report."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Z)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    .line 260
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "[Native] Native crash report has already registered."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    monitor-exit p0

    return-void

    .line 265
    :cond_0
    :try_start_1
    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/a;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->o:Lcom/tencent/bugly/crashreport/crash/b;

    .line 266
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/tencent/bugly/crashreport/crash/jni/a;-><init>(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    .line 268
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 270
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->regist(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_1

    .line 272
    const-string v1, "[Native] Native Crash Report enable."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 273
    invoke-static {v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->s:Ljava/lang/String;

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    :try_start_3
    const-string v0, "[Native] Failed to load Bugly SO file."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 313
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    :cond_2
    :try_start_4
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_1

    .line 283
    :try_start_5
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "registNativeExceptionHandler2"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 287
    invoke-static {v7}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    .line 288
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->J()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 283
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 289
    if-nez v0, :cond_3

    .line 290
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "registNativeExceptionHandler"

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 294
    invoke-static {v7}, Lcom/tencent/bugly/crashreport/common/info/b;->a(Z)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x2

    .line 295
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/info/a;->J()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    .line 290
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 298
    :cond_3
    if-eqz v0, :cond_1

    .line 299
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    .line 300
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iput-object v0, v1, Lcom/tencent/bugly/crashreport/common/info/a;->s:Ljava/lang/String;

    .line 301
    const-string v0, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v1, "enableHandler"

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 303
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    .line 301
    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-boolean v0, Lcom/tencent/bugly/b;->c:Z

    if-eqz v0, :cond_4

    move v0, v6

    .line 305
    :goto_2
    const-string v1, "com.tencent.feedback.eup.jni.NativeExceptionUpload"

    const-string v2, "setLogMode"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    .line 305
    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 309
    :catch_1
    move-exception v0

    goto/16 :goto_1

    .line 304
    :cond_4
    const/4 v0, 0x5

    goto :goto_2
.end method

.method public appendLogToNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "log"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 595
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v1, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v0

    .line 598
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 602
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v1

    .line 604
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    goto :goto_0

    .line 606
    :catch_1
    move-exception v1

    .line 607
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected native appendNativeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native appendWholeNativeLog(Ljava/lang/String;)Z
.end method

.method protected b()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v2, 0x0

    .line 472
    invoke-static {}, Lcom/tencent/bugly/proguard/au;->b()J

    move-result-wide v0

    sget-wide v4, Lcom/tencent/bugly/crashreport/crash/c;->f:J

    sub-long v4, v0, v4

    .line 473
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 476
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const-string v6, "tomb_"

    .line 481
    const-string v7, ".txt"

    .line 482
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    .line 485
    array-length v9, v3

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v9, :cond_4

    aget-object v10, v3, v1

    .line 486
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 487
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 489
    :try_start_0
    invoke-virtual {v11, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 490
    if-lez v12, :cond_3

    .line 491
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 492
    cmp-long v11, v12, v4

    if-ltz v11, :cond_3

    .line 485
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 496
    :catch_0
    move-exception v12

    .line 497
    const-string v12, "[Native] Tomb file format error, delete %s"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v11, v13, v2

    invoke-static {v12, v13}, Lcom/tencent/bugly/proguard/as;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 501
    :cond_3
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 506
    :cond_4
    const-string v1, "[Native] Clean tombs %d"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/as;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected declared-synchronized b(Z)V
    .locals 1

    .prologue
    .line 524
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 525
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->startNativeMonitor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    monitor-exit p0

    return-void

    .line 527
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDumpFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeExceptionHandler()Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->e:Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;

    return-object v0
.end method

.method protected native getNativeKeyValueList()Ljava/lang/String;
.end method

.method protected native getNativeLog()Ljava/lang/String;
.end method

.method public declared-synchronized isUserOpened()Z
    .locals 1

    .prologue
    .line 535
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStrategyChanged(Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;)V
    .locals 6
    .param p1, "newStrategy"    # Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v2, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    iget-boolean v3, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v2, v3, :cond_0

    .line 574
    const-string v2, "server native changed to %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p1, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 578
    :cond_0
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->k:Z

    if-eqz v2, :cond_2

    .line 579
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v1, :cond_1

    .line 580
    const-string v1, "native changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v0, v1

    .line 578
    goto :goto_0

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putKeyValueToNative(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 622
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    if-nez v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 629
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    sput-boolean v0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->l:Z

    goto :goto_0

    .line 633
    :catch_1
    move-exception v1

    .line 634
    invoke-static {v1}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 635
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected native putNativeKeyValue(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected native regist(Ljava/lang/String;ZI)Ljava/lang/String;
.end method

.method protected native removeNativeKeyValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public declared-synchronized setDumpFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "dumpFilePath"    # Ljava/lang/String;

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNativeAppChannel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appChannel"    # Ljava/lang/String;

    .prologue
    .line 683
    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNativeAppPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appPackage"    # Ljava/lang/String;

    .prologue
    .line 693
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNativeAppVersion(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 673
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected native setNativeInfo(ILjava/lang/String;)V
.end method

.method public setNativeIsAppForeground(Z)Z
    .locals 2
    .param p1, "isAppForeground"    # Z

    .prologue
    .line 713
    if-eqz p1, :cond_0

    const-string v0, "true"

    .line 714
    :goto_0
    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 713
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public setNativeLaunchTime(J)Z
    .locals 3
    .param p1, "launchTime"    # J

    .prologue
    .line 725
    const/16 v0, 0xf

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 730
    :goto_0
    return v0

    .line 726
    :catch_0
    move-exception v0

    .line 727
    invoke-static {v0}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 728
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 730
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNativeUserId(Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 703
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setUserOpened(Z)V
    .locals 5
    .param p1, "isUserOpened"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c(Z)V

    .line 555
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->isUserOpened()Z

    move-result v2

    .line 556
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object v3

    .line 557
    if-eqz v3, :cond_2

    .line 558
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v2, :cond_1

    .line 560
    :goto_0
    iget-boolean v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->j:Z

    if-eq v0, v1, :cond_0

    .line 561
    const-string v1, "native changed to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/as;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 558
    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized startNativeMonitor()V
    .locals 4

    .prologue
    .line 321
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_2

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 327
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "NativeRQD"

    move-object v2, v0

    .line 328
    :goto_1
    const-string v0, "Bugly"

    .line 329
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 333
    :goto_2
    iget-object v1, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v1, v1, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/au;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    .line 334
    :goto_3
    sget-boolean v3, Lcom/tencent/bugly/crashreport/crash/c;->b:Z

    if-eqz v3, :cond_a

    .line 335
    if-nez v1, :cond_4

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-rqd"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    .line 340
    iget-boolean v2, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-nez v2, :cond_5

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    .line 347
    :cond_5
    :goto_4
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->h:Z

    if-eqz v0, :cond_1

    .line 351
    :cond_6
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->g:Z

    invoke-virtual {p0, v0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Z)V

    .line 353
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->d:Lcom/tencent/bugly/proguard/ar;

    new-instance v1, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler$1;

    invoke-direct {v1, p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler$1;-><init>(Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;)V

    invoke-virtual {v0, v1}, Lcom/tencent/bugly/proguard/ar;->a(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 327
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    move-object v2, v0

    goto/16 :goto_1

    .line 332
    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->c:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v0, v0, Lcom/tencent/bugly/crashreport/common/info/a;->r:Ljava/lang/String;

    goto :goto_2

    .line 333
    :cond_9
    const/4 v1, 0x0

    goto :goto_3

    .line 344
    :cond_a
    invoke-direct {p0, v0, v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method protected native testCrash()V
.end method

.method public testNativeCrash()V
    .locals 2

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->i:Z

    if-nez v0, :cond_0

    .line 457
    const-string v0, "[Native] Bugly SO file has not been load."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/proguard/as;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 462
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->testCrash()V

    goto :goto_0
.end method

.method protected native unregist()Ljava/lang/String;
.end method
