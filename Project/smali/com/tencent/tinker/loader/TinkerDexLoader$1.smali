.class final Lcom/tencent/tinker/loader/TinkerDexLoader$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/loader/TinkerDexLoader;->loadTinkerJars(Landroid/app/Application;ZLjava/lang/String;Landroid/content/Intent;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "dexFile"    # Ljava/io/File;
    .param p2, "optimizedDir"    # Ljava/io/File;
    .param p3, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/tinker/loader/TinkerDexLoader;->access$002(Z)Z

    .line 125
    invoke-static {p3}, Lcom/tencent/tinker/loader/TinkerDexLoader;->access$102(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 126
    return-void
.end method

.method public onSuccess(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "dexFile"    # Ljava/io/File;
    .param p2, "optimizedDir"    # Ljava/io/File;

    .prologue
    .line 121
    return-void
.end method
