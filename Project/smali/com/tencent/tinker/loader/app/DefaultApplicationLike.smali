.class public Lcom/tencent/tinker/loader/app/DefaultApplicationLike;
.super Lcom/tencent/tinker/loader/app/ApplicationLike;
.source "BUGLY"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tinker.DefaultAppLike"


# direct methods
.method public constructor <init>(Landroid/app/Application;IZJJLandroid/content/Intent;[Landroid/content/res/Resources;[Ljava/lang/ClassLoader;[Landroid/content/res/AssetManager;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "tinkerFlags"    # I
    .param p3, "tinkerLoadVerifyFlag"    # Z
    .param p4, "applicationStartElapsedTime"    # J
    .param p6, "applicationStartMillisTime"    # J
    .param p8, "tinkerResultIntent"    # Landroid/content/Intent;
    .param p9, "resources"    # [Landroid/content/res/Resources;
    .param p10, "classLoader"    # [Ljava/lang/ClassLoader;
    .param p11, "assetManager"    # [Landroid/content/res/AssetManager;

    .prologue
    .line 40
    invoke-direct/range {p0 .. p11}, Lcom/tencent/tinker/loader/app/ApplicationLike;-><init>(Landroid/app/Application;IZJJLandroid/content/Intent;[Landroid/content/res/Resources;[Ljava/lang/ClassLoader;[Landroid/content/res/AssetManager;)V

    .line 41
    return-void
.end method


# virtual methods
.method public onBaseContextAttached(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "Tinker.DefaultAppLike"

    const-string v1, "onBaseContextAttached:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 65
    const-string v0, "Tinker.DefaultAppLike"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "Tinker.DefaultAppLike"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "Tinker.DefaultAppLike"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "Tinker.DefaultAppLike"

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 55
    const-string v0, "Tinker.DefaultAppLike"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrimMemory level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method
