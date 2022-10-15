.class public abstract Lcom/tencent/tinker/loader/app/ApplicationLike;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/loader/app/ApplicationLifeCycle;


# instance fields
.field private final application:Landroid/app/Application;

.field private final applicationStartElapsedTime:J

.field private final applicationStartMillisTime:J

.field private assetManager:[Landroid/content/res/AssetManager;

.field private classLoader:[Ljava/lang/ClassLoader;

.field private resources:[Landroid/content/res/Resources;

.field private final tinkerFlags:I

.field private final tinkerLoadVerifyFlag:Z

.field private final tinkerResultIntent:Landroid/content/Intent;


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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->application:Landroid/app/Application;

    .line 44
    iput p2, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerFlags:I

    .line 45
    iput-boolean p3, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerLoadVerifyFlag:Z

    .line 46
    iput-wide p4, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->applicationStartElapsedTime:J

    .line 47
    iput-wide p6, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->applicationStartMillisTime:J

    .line 48
    iput-object p8, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerResultIntent:Landroid/content/Intent;

    .line 49
    iput-object p9, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->resources:[Landroid/content/res/Resources;

    .line 50
    iput-object p10, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->classLoader:[Ljava/lang/ClassLoader;

    .line 51
    iput-object p11, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->assetManager:[Landroid/content/res/AssetManager;

    .line 52
    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->application:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationStartElapsedTime()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->applicationStartElapsedTime:J

    return-wide v0
.end method

.method public getApplicationStartMillisTime()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->applicationStartMillisTime:J

    return-wide v0
.end method

.method public final getTinkerFlags()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerFlags:I

    return v0
.end method

.method public final getTinkerLoadVerifyFlag()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerLoadVerifyFlag:Z

    return v0
.end method

.method public final getTinkerResultIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->tinkerResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public onBaseContextAttached(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 118
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 113
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 103
    return-void
.end method

.method public setAssetManager(Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->assetManager:[Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 60
    return-void
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->classLoader:[Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 64
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/tinker/loader/app/ApplicationLike;->resources:[Landroid/content/res/Resources;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 56
    return-void
.end method
