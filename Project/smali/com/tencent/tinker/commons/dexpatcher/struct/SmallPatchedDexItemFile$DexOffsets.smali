.class final Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DexOffsets"
.end annotation


# instance fields
.field annotationSetRefListsOffset:I

.field annotationSetsOffset:I

.field annotationsDirectoriesOffset:I

.field annotationsOffset:I

.field classDataItemsOffset:I

.field classDefsOffset:I

.field codeItemsOffset:I

.field debugInfoItemsOffset:I

.field dexSize:I

.field encodedArraysOffset:I

.field fieldIdsOffset:I

.field mapListOffset:I

.field methodIdsOffset:I

.field protoIdsOffset:I

.field stringDataItemsOffset:I

.field stringIdsOffset:I

.field typeIdsOffset:I

.field typeListsOffset:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringIdsOffset:I

    .line 81
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeIdsOffset:I

    .line 82
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->protoIdsOffset:I

    .line 83
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->fieldIdsOffset:I

    .line 84
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->methodIdsOffset:I

    .line 85
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDefsOffset:I

    .line 86
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->mapListOffset:I

    .line 87
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->typeListsOffset:I

    .line 88
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsOffset:I

    .line 89
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetsOffset:I

    .line 90
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationSetRefListsOffset:I

    .line 91
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->annotationsDirectoriesOffset:I

    .line 92
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->classDataItemsOffset:I

    .line 93
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->codeItemsOffset:I

    .line 94
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->stringDataItemsOffset:I

    .line 95
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->debugInfoItemsOffset:I

    .line 96
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->encodedArraysOffset:I

    .line 97
    iput v0, p0, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;->dexSize:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$1;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/tencent/tinker/commons/dexpatcher/struct/SmallPatchedDexItemFile$DexOffsets;-><init>()V

    return-void
.end method
