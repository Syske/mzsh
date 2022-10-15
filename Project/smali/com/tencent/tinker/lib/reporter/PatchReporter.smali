.class public interface abstract Lcom/tencent/tinker/lib/reporter/PatchReporter;
.super Ljava/lang/Object;
.source "BUGLY"


# virtual methods
.method public abstract onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
.end method

.method public abstract onPatchException(Ljava/io/File;Ljava/lang/Throwable;Z)V
.end method

.method public abstract onPatchInfoCorrupted(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onPatchPackageCheckFail(Ljava/io/File;ZI)V
.end method

.method public abstract onPatchResult(Ljava/io/File;ZJZ)V
.end method

.method public abstract onPatchServiceStart(Landroid/content/Intent;)V
.end method

.method public abstract onPatchTypeExtractFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;IZ)V
.end method

.method public abstract onPatchVersionCheckFail(Ljava/io/File;Lcom/tencent/tinker/loader/shareutil/SharePatchInfo;Ljava/lang/String;Z)V
.end method
