.class final Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/loader/TinkerParallelDexOptimizer$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal;->patchDexExtractViaDexDiff(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$isUpgradePatch:Z

.field final synthetic val$manager:Lcom/tencent/tinker/lib/tinker/Tinker;

.field final synthetic val$optimizeDexDirectory:Ljava/lang/String;

.field final synthetic val$patchFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/lib/tinker/Tinker;Ljava/io/File;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$manager:Lcom/tencent/tinker/lib/tinker/Tinker;

    iput-object p2, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$patchFile:Ljava/io/File;

    iput-object p3, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$optimizeDexDirectory:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$isUpgradePatch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/io/File;Ljava/io/File;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "dexFile"    # Ljava/io/File;
    .param p2, "optimizedDir"    # Ljava/io/File;
    .param p3, "thr"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->safeDeleteFile(Ljava/io/File;)Z

    .line 105
    iget-object v0, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$manager:Lcom/tencent/tinker/lib/tinker/Tinker;

    invoke-virtual {v0}, Lcom/tencent/tinker/lib/tinker/Tinker;->getPatchReporter()Lcom/tencent/tinker/lib/reporter/PatchReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$patchFile:Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$optimizeDexDirectory:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, p0, Lcom/tencent/tinker/lib/patch/DexDiffPatchInternal$1;->val$isUpgradePatch:Z

    move-object v2, p1

    move-object v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/tencent/tinker/lib/reporter/PatchReporter;->onPatchDexOptFail(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 106
    return-void
.end method

.method public onSuccess(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "dexFile"    # Ljava/io/File;
    .param p2, "optimizedDir"    # Ljava/io/File;

    .prologue
    .line 100
    return-void
.end method
