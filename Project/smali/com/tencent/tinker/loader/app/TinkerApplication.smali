.class public abstract Lcom/tencent/tinker/loader/app/TinkerApplication;
.super Landroid/app/Application;
.source "BUGLY"


# static fields
.field private static final INTENT_PATCH_EXCEPTION:Ljava/lang/String; = "intent_patch_exception"

.field private static final TINKER_DISABLE:I = 0x0

.field private static final TINKER_LOADER_METHOD:Ljava/lang/String; = "tryLoad"


# instance fields
.field private applicationStartElapsedTime:J

.field private applicationStartMillisTime:J

.field private assetManager:[Landroid/content/res/AssetManager;

.field private classLoader:[Ljava/lang/ClassLoader;

.field private delegate:Ljava/lang/Object;

.field private final delegateClassName:Ljava/lang/String;

.field private final loaderClassName:Ljava/lang/String;

.field private resources:[Landroid/content/res/Resources;

.field private final tinkerFlags:I

.field private final tinkerLoadVerifyFlag:Z

.field private tinkerResultIntent:Landroid/content/Intent;

.field private useSafeMode:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 3
    .param p1, "tinkerFlags"    # I

    .prologue
    .line 85
    const-string v0, "com.tencent.tinker.loader.app.DefaultApplicationLike"

    const-class v1, Lcom/tencent/tinker/loader/TinkerLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "tinkerFlags"    # I
    .param p2, "delegateClassName"    # Ljava/lang/String;

    .prologue
    .line 102
    const-class v0, Lcom/tencent/tinker/loader/TinkerLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/tinker/loader/app/TinkerApplication;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "tinkerFlags"    # I
    .param p2, "delegateClassName"    # Ljava/lang/String;
    .param p3, "loaderClassName"    # Ljava/lang/String;
    .param p4, "tinkerLoadVerifyFlag"    # Z

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    .line 74
    new-array v0, v1, [Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->resources:[Landroid/content/res/Resources;

    .line 75
    new-array v0, v1, [Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->classLoader:[Ljava/lang/ClassLoader;

    .line 76
    new-array v0, v1, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->assetManager:[Landroid/content/res/AssetManager;

    .line 94
    iput p1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    .line 95
    iput-object p2, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateClassName:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->loaderClassName:Ljava/lang/String;

    .line 97
    iput-boolean p4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    .line 99
    return-void
.end method

.method private createDelegate()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateClassName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 110
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Application;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Landroid/content/Intent;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, [Landroid/content/res/Resources;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-class v3, [Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-class v3, [Landroid/content/res/AssetManager;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 112
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->applicationStartElapsedTime:J

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->applicationStartMillisTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->resources:[Landroid/content/res/Resources;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->classLoader:[Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->assetManager:[Landroid/content/res/AssetManager;

    aput-object v3, v1, v2

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "createDelegate failed"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private delegateConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :cond_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "onConfigurationChanged method not found"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private delegateMethod(Ljava/lang/String;)V
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "%s method not found"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private delegateTrimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const-string v1, "onTrimMemory"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "onTrimMemory method not found"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized ensureDelegate()V
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->createDelegate()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadTinker()V
    .locals 5

    .prologue
    .line 159
    iget v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->loaderClassName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    const-string v1, "tryLoad"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/tencent/tinker/loader/app/TinkerApplication;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 168
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 169
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerLoadVerifyFlag:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    const/16 v2, -0x13

    invoke-static {v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareIntentUtil;->setIntentReturnCode(Landroid/content/Intent;I)V

    .line 173
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->tinkerResultIntent:Landroid/content/Intent;

    const-string v2, "intent_patch_exception"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private onBaseContextAttached(Landroid/content/Context;)V
    .locals 6
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->applicationStartElapsedTime:J

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->applicationStartMillisTime:J

    .line 134
    invoke-direct {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->loadTinker()V

    .line 135
    invoke-direct {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->ensureDelegate()V

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const-string v1, "onBaseContextAttached"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/tencent/tinker/loader/shareutil/ShareReflectUtil;->findMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegate:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-boolean v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useSafeMode:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-static {p0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tinker_own_config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p0, v0, v5}, Lcom/tencent/tinker/loader/app/TinkerApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "safe_mode_count"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Lcom/tencent/tinker/loader/TinkerRuntimeException;

    const-string v2, "onBaseContextAttached method not found"

    invoke-direct {v1, v2, v0}, Lcom/tencent/tinker/loader/TinkerRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 154
    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->onBaseContextAttached(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->assetManager:[Landroid/content/res/AssetManager;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->assetManager:[Landroid/content/res/AssetManager;

    aget-object v0, v0, v1

    .line 263
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->classLoader:[Ljava/lang/ClassLoader;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->classLoader:[Ljava/lang/ClassLoader;

    aget-object v0, v0, v1

    .line 255
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->resources:[Landroid/content/res/Resources;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->resources:[Landroid/content/res/Resources;

    aget-object v0, v0, v1

    .line 247
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    return-void
.end method

.method public final onCreate()V
    .locals 1

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 191
    invoke-direct {p0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->ensureDelegate()V

    .line 192
    const-string v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateMethod(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 204
    const-string v0, "onLowMemory"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateMethod(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public final onTerminate()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 198
    const-string v0, "onTerminate"

    invoke-direct {p0, v0}, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateMethod(Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 222
    invoke-direct {p0, p1}, Lcom/tencent/tinker/loader/app/TinkerApplication;->delegateTrimMemory(I)V

    .line 223
    return-void
.end method

.method public setUseSafeMode(Z)V
    .locals 0
    .param p1, "useSafeMode"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/tencent/tinker/loader/app/TinkerApplication;->useSafeMode:Z

    .line 268
    return-void
.end method
