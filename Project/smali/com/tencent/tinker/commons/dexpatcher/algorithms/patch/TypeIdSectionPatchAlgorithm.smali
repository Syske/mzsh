.class public Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;
.super Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private patchedTypeIdSec:Lcom/tencent/tinker/android/dex/Dex$Section;

.field private patchedTypeIdTocSec:Lcom/tencent/tinker/android/dex/TableOfContents$Section;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;)V
    .locals 7
    .param p1, "patchFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
    .param p2, "oldDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p3, "patchedDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p4, "oldToFullPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p5, "fullPatchedToSmallPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p6, "spdItemChooser"    # Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    .prologue
    const/4 v6, 0x0

    .line 69
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;)V

    .line 31
    iput-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdTocSec:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    .line 32
    iput-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdSec:Lcom/tencent/tinker/android/dex/Dex$Section;

    .line 77
    if-eqz p3, :cond_0

    .line 78
    invoke-virtual {p3}, Lcom/tencent/tinker/android/dex/Dex;->getTableOfContents()Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdTocSec:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    .line 79
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdTocSec:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    invoke-virtual {p3, v0}, Lcom/tencent/tinker/android/dex/Dex;->openSection(Lcom/tencent/tinker/android/dex/TableOfContents$Section;)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdSec:Lcom/tencent/tinker/android/dex/Dex$Section;

    .line 81
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V
    .locals 7
    .param p1, "patchFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
    .param p2, "oldDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p3, "patchedDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p4, "oldToFullPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p5, "fullPatchedToSmallPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p6, "extraInfoFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;

    .prologue
    .line 42
    new-instance v6, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm$1;

    invoke-direct {v6, p6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm$1;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected bridge synthetic adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 30
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p2, "item"    # Ljava/lang/Integer;

    .prologue
    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/tencent/tinker/android/dx/util/IndexMap;->adjustStringIndex(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected getFullPatchSectionBase()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v0}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getPatchedTypeIdSectionOffset()I

    move-result v0

    .line 103
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {p0, v0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->off:I

    goto :goto_0
.end method

.method protected bridge synthetic getItemSize(Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->getItemSize(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method protected getItemSize(Ljava/lang/Integer;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Integer;

    .prologue
    .line 95
    const/4 v0, 0x4

    return v0
.end method

.method protected getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;
    .locals 1
    .param p1, "dex"    # Lcom/tencent/tinker/android/dex/Dex;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/Dex;->getTableOfContents()Lcom/tencent/tinker/android/dex/TableOfContents;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/tinker/android/dex/TableOfContents;->typeIds:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    return-object v0
.end method

.method protected markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V
    .locals 0
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p2, "deletedIndex"    # I
    .param p3, "deletedOffset"    # I

    .prologue
    .line 129
    invoke-virtual {p1, p2}, Lcom/tencent/tinker/android/dx/util/IndexMap;->markTypeIdDeleted(I)V

    .line 130
    return-void
.end method

.method protected bridge synthetic nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Integer;
    .locals 1
    .param p1, "section"    # Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V
    .locals 0
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p2, "oldIndex"    # I
    .param p3, "oldOffset"    # I
    .param p4, "newIndex"    # I
    .param p5, "newOffset"    # I

    .prologue
    .line 122
    if-eq p2, p4, :cond_0

    .line 123
    invoke-virtual {p1, p2, p4}, Lcom/tencent/tinker/android/dx/util/IndexMap;->mapTypeIds(II)V

    .line 125
    :cond_0
    return-void
.end method

.method protected bridge synthetic writePatchedItem(Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method protected writePatchedItem(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "patchedItem"    # Ljava/lang/Integer;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdSec:Lcom/tencent/tinker/android/dex/Dex$Section;

    invoke-virtual {v0}, Lcom/tencent/tinker/android/dex/Dex$Section;->position()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdSec:Lcom/tencent/tinker/android/dex/Dex$Section;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/tinker/android/dex/Dex$Section;->writeInt(I)V

    .line 116
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/TypeIdSectionPatchAlgorithm;->patchedTypeIdTocSec:Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    iget v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    .line 117
    return v0
.end method
