.class public Lcom/github/mikephil/charting/buffer/BarBuffer;
.super Lcom/github/mikephil/charting/buffer/AbstractBuffer;
.source "BarBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/buffer/AbstractBuffer",
        "<",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;",
        ">;"
    }
.end annotation


# instance fields
.field protected mBarSpace:F

.field protected mContainsStacks:Z

.field protected mDataSetCount:I

.field protected mDataSetIndex:I

.field protected mGroupSpace:F

.field protected mInverted:Z


# direct methods
.method public constructor <init>(IFIZ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "groupspace"    # F
    .param p3, "dataSetCount"    # I
    .param p4, "containsStacks"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/buffer/AbstractBuffer;-><init>(I)V

    .line 9
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 10
    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 11
    iput v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 13
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 14
    iput-boolean v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 18
    iput p2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    .line 19
    iput p3, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    .line 20
    iput-boolean p4, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected addBar(FFFF)V
    .locals 3
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 37
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p1, v0, v1

    .line 38
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p2, v0, v1

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p3, v0, v1

    .line 40
    iget-object v0, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    iget v1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->index:I

    aput p4, v0, v1

    .line 41
    return-void
.end method

.method public feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V
    .locals 23
    .param p1, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .prologue
    .line 46
    invoke-interface/range {p1 .. p1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseX:F

    move/from16 v21, v0

    mul-float v13, v20, v21

    .line 48
    .local v13, "size":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetCount:I

    move/from16 v20, v0

    add-int/lit8 v4, v20, -0x1

    .line 49
    .local v4, "dataSetOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v1, v20, v21

    .line 50
    .local v1, "barSpaceHalf":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v6, v20, v21

    .line 51
    .local v6, "groupSpaceHalf":F
    const/high16 v2, 0x3f000000    # 0.5f

    .line 53
    .local v2, "barWidth":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v20, v13

    if-gez v20, :cond_f

    .line 55
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v5

    check-cast v5, Lcom/github/mikephil/charting/data/BarEntry;

    .line 58
    .local v5, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v20

    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v21

    mul-int v21, v21, v4

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mGroupSpace:F

    move/from16 v21, v0

    .line 59
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    add-float v20, v20, v21

    add-float v17, v20, v6

    .line 60
    .local v17, "x":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v18

    .line 61
    .local v18, "y":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v15

    .line 63
    .local v15, "vals":[F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mContainsStacks:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    if-nez v15, :cond_8

    .line 65
    :cond_0
    sub-float v20, v17, v2

    add-float v9, v20, v1

    .line 66
    .local v9, "left":F
    add-float v20, v17, v2

    sub-float v12, v20, v1

    .line 68
    .local v12, "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 69
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_2

    move/from16 v3, v18

    .line 70
    .local v3, "bottom":F
    :goto_1
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_3

    move/from16 v14, v18

    .line 77
    .local v14, "top":F
    :goto_2
    const/16 v20, 0x0

    cmpl-float v20, v14, v20

    if-lez v20, :cond_7

    .line 78
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 82
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 53
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 69
    .restart local v9    # "left":F
    .restart local v12    # "right":F
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 70
    .restart local v3    # "bottom":F
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 72
    .end local v3    # "bottom":F
    :cond_4
    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-ltz v20, :cond_5

    move/from16 v14, v18

    .line 73
    .restart local v14    # "top":F
    :goto_4
    const/16 v20, 0x0

    cmpg-float v20, v18, v20

    if-gtz v20, :cond_6

    move/from16 v3, v18

    .restart local v3    # "bottom":F
    :goto_5
    goto :goto_2

    .line 72
    .end local v3    # "bottom":F
    .end local v14    # "top":F
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 73
    .restart local v14    # "top":F
    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 80
    .restart local v3    # "bottom":F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v3, v3, v20

    goto :goto_3

    .line 86
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_8
    const/4 v11, 0x0

    .line 87
    .local v11, "posY":F
    invoke-virtual {v5}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v20

    move/from16 v0, v20

    neg-float v10, v0

    .line 88
    .local v10, "negY":F
    const/16 v19, 0x0

    .line 91
    .local v19, "yStart":F
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_6
    array-length v0, v15

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_1

    .line 93
    aget v16, v15, v8

    .line 95
    .local v16, "value":F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-ltz v20, :cond_9

    .line 96
    move/from16 v18, v11

    .line 97
    add-float v19, v11, v16

    .line 98
    move/from16 v11, v19

    .line 105
    :goto_7
    sub-float v20, v17, v2

    add-float v9, v20, v1

    .line 106
    .restart local v9    # "left":F
    add-float v20, v17, v2

    sub-float v12, v20, v1

    .line 108
    .restart local v12    # "right":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 109
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_a

    move/from16 v3, v18

    .line 110
    .restart local v3    # "bottom":F
    :goto_8
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_b

    move/from16 v14, v18

    .line 117
    .restart local v14    # "top":F
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v14, v14, v20

    .line 118
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/buffer/BarBuffer;->phaseY:F

    move/from16 v20, v0

    mul-float v3, v3, v20

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v12, v3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->addBar(FFFF)V

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 100
    .end local v3    # "bottom":F
    .end local v9    # "left":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    :cond_9
    move/from16 v18, v10

    .line 101
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v19, v10, v20

    .line 102
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v20

    add-float v10, v10, v20

    goto :goto_7

    .restart local v9    # "left":F
    .restart local v12    # "right":F
    :cond_a
    move/from16 v3, v19

    .line 109
    goto :goto_8

    .restart local v3    # "bottom":F
    :cond_b
    move/from16 v14, v19

    .line 110
    goto :goto_9

    .line 112
    .end local v3    # "bottom":F
    :cond_c
    cmpl-float v20, v18, v19

    if-ltz v20, :cond_d

    move/from16 v14, v18

    .line 113
    .restart local v14    # "top":F
    :goto_a
    cmpg-float v20, v18, v19

    if-gtz v20, :cond_e

    move/from16 v3, v18

    .restart local v3    # "bottom":F
    :goto_b
    goto :goto_9

    .end local v3    # "bottom":F
    .end local v14    # "top":F
    :cond_d
    move/from16 v14, v19

    .line 112
    goto :goto_a

    .restart local v14    # "top":F
    :cond_e
    move/from16 v3, v19

    .line 113
    goto :goto_b

    .line 125
    .end local v5    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "k":I
    .end local v9    # "left":F
    .end local v10    # "negY":F
    .end local v11    # "posY":F
    .end local v12    # "right":F
    .end local v14    # "top":F
    .end local v15    # "vals":[F
    .end local v16    # "value":F
    .end local v17    # "x":F
    .end local v18    # "y":F
    .end local v19    # "yStart":F
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->reset()V

    .line 126
    return-void
.end method

.method public bridge synthetic feed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7
    check-cast p1, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    return-void
.end method

.method public setBarSpace(F)V
    .locals 0
    .param p1, "barspace"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mBarSpace:F

    .line 25
    return-void
.end method

.method public setDataSet(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mDataSetIndex:I

    .line 29
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/github/mikephil/charting/buffer/BarBuffer;->mInverted:Z

    .line 33
    return-void
.end method
