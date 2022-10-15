.class Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm$1;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;


# direct methods
.method constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm$1;->val$extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSign"    # Ljava/lang/String;
    .param p2, "patchedItemIndex"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/AnnotationSetSectionPatchAlgorithm$1;->val$extraInfoFile:Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;->isAnnotationSetInSmallPatchedDex(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
