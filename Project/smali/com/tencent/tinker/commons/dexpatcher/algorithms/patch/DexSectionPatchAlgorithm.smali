.class public abstract Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;
.super Ljava/lang/Object;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

.field protected final oldDex:Lcom/tencent/tinker/android/dex/Dex;

.field private final oldDexSignStr:Ljava/lang/String;

.field private final oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

.field protected final patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

.field private smallPatchedDexItemChooser:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;


# direct methods
.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;)V
    .locals 6
    .param p1, "patchFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
    .param p2, "oldDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p3, "oldToFullPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p4, "fullPatchedToSmallPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;

    .prologue
    .line 59
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;-><init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;Lcom/tencent/tinker/android/dex/Dex;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/android/dx/util/IndexMap;Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;)V
    .locals 1
    .param p1, "patchFile"    # Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;
    .param p2, "oldDex"    # Lcom/tencent/tinker/android/dex/Dex;
    .param p3, "oldToFullPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p4, "fullPatchedToSmallPatchedIndexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p5, "smallPatchedDexItemChooser"    # Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    .prologue
    .line 68
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->smallPatchedDexItemChooser:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    .line 69
    iput-object p1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    .line 70
    iput-object p2, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    .line 71
    iput-object p3, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 72
    iput-object p4, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/tencent/tinker/android/dex/Dex;->computeSignature(Z)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tinker/android/dx/util/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDexSignStr:Ljava/lang/String;

    .line 74
    iput-object p5, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->smallPatchedDexItemChooser:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    .line 75
    return-void
.end method

.method private doFullPatch(Lcom/tencent/tinker/android/dex/Dex$Section;I[I[I[I)V
    .locals 14
    .param p1, "oldSection"    # Lcom/tencent/tinker/android/dex/Dex$Section;
    .param p2, "oldItemCount"    # I
    .param p3, "deletedIndices"    # [I
    .param p4, "addedIndices"    # [I
    .param p5, "replacedIndices"    # [I

    .prologue
    .line 234
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    move-object/from16 v0, p3

    array-length v10, v0

    .line 235
    move-object/from16 v0, p4

    array-length v11, v0

    .line 236
    move-object/from16 v0, p5

    array-length v12, v0

    .line 237
    add-int v1, p2, v11

    sub-int v13, v1, v10

    .line 239
    const/4 v4, 0x0

    .line 240
    const/4 v2, 0x0

    .line 241
    const/4 v1, 0x0

    .line 243
    const/4 v3, 0x0

    .line 244
    const/4 v5, 0x0

    move v7, v1

    move v8, v2

    move v9, v4

    .line 245
    :cond_0
    :goto_0
    move/from16 v0, p2

    if-lt v3, v0, :cond_1

    if-ge v5, v13, :cond_6

    .line 246
    :cond_1
    if-ge v8, v11, :cond_2

    aget v1, p4, v8

    if-ne v1, v5, :cond_2

    .line 247
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v1

    .line 248
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    .line 249
    add-int/lit8 v1, v8, 0x1

    .line 250
    add-int/lit8 v5, v5, 0x1

    move v8, v1

    .line 251
    goto :goto_0

    .line 252
    :cond_2
    if-ge v7, v12, :cond_3

    aget v1, p5, v7

    if-ne v1, v5, :cond_3

    .line 253
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v1

    .line 254
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    .line 255
    add-int/lit8 v1, v7, 0x1

    .line 256
    add-int/lit8 v5, v5, 0x1

    move v7, v1

    .line 257
    goto :goto_0

    .line 258
    :cond_3
    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_4

    .line 259
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v1

    .line 260
    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 263
    invoke-direct {p0, v3, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v1

    .line 260
    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 266
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    .line 267
    goto :goto_0

    .line 268
    :cond_4
    move-object/from16 v0, p5

    invoke-static {v0, v3}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_5

    .line 269
    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v1

    .line 270
    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 273
    invoke-direct {p0, v3, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v1

    .line 270
    invoke-virtual {p0, v2, v3, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V

    .line 275
    add-int/lit8 v3, v3, 0x1

    .line 276
    goto :goto_0

    .line 277
    :cond_5
    move/from16 v0, p2

    if-ge v3, v0, :cond_0

    .line 278
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    invoke-virtual {p0, p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    .line 280
    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    move-result v6

    .line 282
    iget-object v2, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 285
    invoke-direct {p0, v3, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v4

    move-object v1, p0

    .line 282
    invoke-virtual/range {v1 .. v6}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 291
    add-int/lit8 v5, v5, 0x1

    .line 292
    goto/16 :goto_0

    .line 295
    :cond_6
    if-ne v8, v11, :cond_7

    if-ne v9, v10, :cond_7

    if-eq v7, v12, :cond_8

    .line 298
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "bad patch operation sequence. addCounter: %d, addCount: %d, delCounter: %d, delCount: %d, replaceCounter: %d, replaceCount:%d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 303
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 304
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 305
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    .line 306
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 307
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 308
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 299
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_8
    return-void
.end method

.method private doSmallPatch(Lcom/tencent/tinker/android/dex/Dex$Section;I[I[I[I)V
    .locals 20
    .param p1, "oldSection"    # Lcom/tencent/tinker/android/dex/Dex$Section;
    .param p2, "oldItemCount"    # I
    .param p3, "deletedIndices"    # [I
    .param p4, "addedIndices"    # [I
    .param p5, "replacedIndices"    # [I

    .prologue
    .line 321
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    move-object/from16 v0, p3

    array-length v15, v0

    .line 322
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    .line 323
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v17, v0

    .line 324
    add-int v2, p2, v16

    sub-int v18, v2, v15

    .line 326
    const/4 v7, 0x0

    .line 327
    const/4 v3, 0x0

    .line 328
    const/4 v2, 0x0

    .line 330
    const/4 v8, 0x0

    .line 331
    const/4 v4, 0x0

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getFullPatchSectionBase()I

    move-result v5

    .line 333
    const/4 v6, 0x0

    move v12, v2

    move v13, v3

    move v14, v7

    .line 334
    :cond_0
    :goto_0
    move/from16 v0, p2

    if-lt v8, v0, :cond_1

    move/from16 v0, v18

    if-ge v4, v0, :cond_b

    .line 335
    :cond_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_4

    aget v2, p4, v13

    if-ne v2, v4, :cond_4

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v10

    .line 337
    add-int/lit8 v9, v13, 0x1

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->isElementFourByteAligned:Z

    if-eqz v2, :cond_2

    .line 340
    invoke-static {v5}, Lcom/tencent/tinker/android/dex/SizeOf;->roundToTimesOfFour(I)I

    move-result v5

    .line 343
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDexSignStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    .line 345
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    move-result v7

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V

    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 356
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 357
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemSize(Ljava/lang/Comparable;)I

    move-result v2

    add-int/2addr v5, v2

    move v13, v9

    .line 358
    goto :goto_0

    .line 359
    :cond_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    aget v2, p5, v12

    if-ne v2, v4, :cond_7

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v2}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v10

    .line 361
    add-int/lit8 v9, v12, 0x1

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->isElementFourByteAligned:Z

    if-eqz v2, :cond_5

    .line 364
    invoke-static {v5}, Lcom/tencent/tinker/android/dex/SizeOf;->roundToTimesOfFour(I)I

    move-result v5

    .line 367
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDexSignStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    .line 369
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    move-result v7

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V

    .line 377
    add-int/lit8 v6, v6, 0x1

    .line 380
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 381
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemSize(Ljava/lang/Comparable;)I

    move-result v2

    add-int/2addr v5, v2

    move v12, v9

    .line 382
    goto/16 :goto_0

    .line 383
    :cond_7
    move-object/from16 v0, p3

    invoke-static {v0, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_8

    .line 384
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v2

    .line 385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 388
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v2

    .line 385
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V

    .line 390
    add-int/lit8 v8, v8, 0x1

    .line 391
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    .line 392
    goto/16 :goto_0

    .line 393
    :cond_8
    move-object/from16 v0, p5

    invoke-static {v0, v8}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_9

    .line 394
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v2

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 398
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v2

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V

    .line 400
    add-int/lit8 v8, v8, 0x1

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_9
    move/from16 v0, p2

    if-ge v8, v0, :cond_0

    .line 403
    invoke-virtual/range {p0 .. p1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;

    move-result-object v9

    .line 404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v19

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->isElementFourByteAligned:Z

    if-eqz v2, :cond_a

    .line 407
    invoke-static {v5}, Lcom/tencent/tinker/android/dex/SizeOf;->roundToTimesOfFour(I)I

    move-result v5

    .line 410
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDexSignStr:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v2

    .line 414
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->writePatchedItem(Ljava/lang/Comparable;)I

    move-result v7

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V

    .line 422
    add-int/lit8 v6, v6, 0x1

    move v2, v6

    .line 425
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldToFullPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    .line 428
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemOffsetOrIndex(ILjava/lang/Comparable;)I

    move-result v9

    move-object/from16 v6, p0

    move v10, v4

    move v11, v5

    .line 425
    invoke-virtual/range {v6 .. v11}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V

    .line 433
    add-int/lit8 v4, v4, 0x1

    .line 434
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getItemSize(Ljava/lang/Comparable;)I

    move-result v3

    add-int/2addr v5, v3

    .line 436
    add-int/lit8 v8, v8, 0x1

    move v6, v2

    .line 437
    goto/16 :goto_0

    .line 440
    :cond_b
    move/from16 v0, v16

    if-ne v13, v0, :cond_c

    if-ne v14, v15, :cond_c

    move/from16 v0, v17

    if-eq v12, v0, :cond_d

    .line 443
    :cond_c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "bad patch operation sequence. addCounter: %d, addCount: %d, delCounter: %d, delCount: %d, replaceCounter: %d, replaceCount:%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 448
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 449
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 450
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 451
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 452
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 453
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 444
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 457
    :cond_d
    return-void

    :cond_e
    move v2, v6

    goto :goto_1
.end method

.method private getItemOffsetOrIndex(ILjava/lang/Comparable;)I
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    .local p2, "item":Ljava/lang/Comparable;, "TT;"
    instance-of v0, p2, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;

    if-eqz v0, :cond_0

    .line 167
    check-cast p2, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;

    .end local p2    # "item":Ljava/lang/Comparable;, "TT;"
    iget p1, p2, Lcom/tencent/tinker/android/dex/TableOfContents$Section$Item;->off:I

    .line 169
    .end local p1    # "index":I
    :cond_0
    return p1
.end method

.method private readDeltaIndiciesOrOffsets(I)[I
    .locals 4
    .param p1, "count"    # I

    .prologue
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    const/4 v0, 0x0

    .line 149
    new-array v2, p1, [I

    move v1, v0

    .line 151
    :goto_0
    if-ge v0, p1, :cond_0

    .line 152
    iget-object v3, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v3}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readSleb128()I

    move-result v3

    .line 153
    add-int/2addr v1, v3

    .line 154
    aput v1, v2, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object v2
.end method


# virtual methods
.method protected adjustItem(Lcom/tencent/tinker/android/dx/util/IndexMap;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/android/dx/util/IndexMap;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    .local p2, "item":Ljava/lang/Comparable;, "TT;"
    return-object p2
.end method

.method public execute()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 183
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    .line 185
    invoke-direct {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->readDeltaIndiciesOrOffsets(I)[I

    move-result-object v3

    .line 187
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    .line 188
    invoke-direct {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->readDeltaIndiciesOrOffsets(I)[I

    move-result-object v4

    .line 190
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->patchFile:Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;

    invoke-virtual {v1}, Lcom/tencent/tinker/commons/dexpatcher/struct/DexPatchFile;->getBuffer()Lcom/tencent/tinker/android/dex/io/DexDataBuffer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tinker/android/dex/io/DexDataBuffer;->readUleb128()I

    move-result v1

    .line 191
    invoke-direct {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->readDeltaIndiciesOrOffsets(I)[I

    move-result-object v5

    .line 203
    :goto_0
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {p0, v1}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;

    move-result-object v2

    .line 204
    const/4 v1, 0x0

    .line 207
    invoke-virtual {v2}, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 208
    iget-object v1, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->oldDex:Lcom/tencent/tinker/android/dex/Dex;

    invoke-virtual {v1, v2}, Lcom/tencent/tinker/android/dex/Dex;->openSection(Lcom/tencent/tinker/android/dex/TableOfContents$Section;)Lcom/tencent/tinker/android/dex/Dex$Section;

    move-result-object v1

    .line 209
    iget v2, v2, Lcom/tencent/tinker/android/dex/TableOfContents$Section;->size:I

    .line 214
    :goto_1
    iget-object v6, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->fullPatchedToSmallPatchedIndexMap:Lcom/tencent/tinker/android/dx/util/IndexMap;

    if-nez v6, :cond_0

    const/4 v0, 0x1

    .line 216
    :cond_0
    if-eqz v0, :cond_2

    move-object v0, p0

    .line 217
    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->doFullPatch(Lcom/tencent/tinker/android/dex/Dex$Section;I[I[I[I)V

    .line 225
    :goto_2
    return-void

    .line 194
    :cond_1
    new-array v3, v0, [I

    .line 197
    new-array v4, v0, [I

    .line 200
    new-array v5, v0, [I

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 221
    invoke-direct/range {v0 .. v5}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->doSmallPatch(Lcom/tencent/tinker/android/dex/Dex$Section;I[I[I[I)V

    goto :goto_2

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method protected abstract getFullPatchSectionBase()I
.end method

.method protected abstract getItemSize(Ljava/lang/Comparable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract getTocSection(Lcom/tencent/tinker/android/dex/Dex;)Lcom/tencent/tinker/android/dex/TableOfContents$Section;
.end method

.method protected final isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "oldDexSignStr"    # Ljava/lang/String;
    .param p2, "patchedIndex"    # I

    .prologue
    .line 127
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->smallPatchedDexItemChooser:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;->smallPatchedDexItemChooser:Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;

    .line 129
    invoke-interface {v0, p1, p2}, Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm$SmallPatchedDexItemChooser;->isPatchedItemInSmallPatchedDex(Ljava/lang/String;I)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected markDeletedIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;II)V
    .locals 0
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p2, "deletedIndex"    # I
    .param p3, "deletedOffset"    # I

    .prologue
    .line 121
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    return-void
.end method

.method protected abstract nextItem(Lcom/tencent/tinker/android/dex/io/DexDataBuffer;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tinker/android/dex/io/DexDataBuffer;",
            ")TT;"
        }
    .end annotation
.end method

.method protected updateIndexOrOffset(Lcom/tencent/tinker/android/dx/util/IndexMap;IIII)V
    .locals 0
    .param p1, "indexMap"    # Lcom/tencent/tinker/android/dx/util/IndexMap;
    .param p2, "oldIndex"    # I
    .param p3, "oldOffset"    # I
    .param p4, "newIndex"    # I
    .param p5, "newOffset"    # I

    .prologue
    .line 104
    .local p0, "this":Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm;, "Lcom/tencent/tinker/commons/dexpatcher/algorithms/patch/DexSectionPatchAlgorithm<TT;>;"
    return-void
.end method

.method protected abstract writePatchedItem(Ljava/lang/Comparable;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
