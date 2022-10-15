.class public Lcom/github/mikephil/charting/data/CandleDataSet;
.super Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;
.source "CandleDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/CandleEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;"
    }
.end annotation


# instance fields
.field private mBodySpace:F

.field protected mDecreasingColor:I

.field protected mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mIncreasingColor:I

.field protected mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

.field protected mShadowColor:I

.field private mShadowColorSameAsCandle:Z

.field private mShadowWidth:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    const/4 v1, -0x1

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/LineScatterCandleRadarDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 23
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 28
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColorSameAsCandle:Z

    .line 38
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 43
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 48
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    .line 53
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    .line 59
    iput v1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 63
    return-void
.end method


# virtual methods
.method public calcMinMax(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 90
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    if-nez v3, :cond_1

    .line 116
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p2, v3, :cond_5

    .line 99
    :cond_2
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 103
    .local v1, "endValue":I
    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 104
    const v3, -0x800001

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 106
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-gt v2, v1, :cond_0

    .line 108
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 110
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 111
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMin:F

    .line 113
    :cond_3
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iget v4, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 114
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v3

    iput v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYMax:F

    .line 106
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v1    # "endValue":I
    .end local v2    # "i":I
    :cond_5
    move v1, p2

    .restart local v1    # "endValue":I
    goto :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/CandleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/CandleEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/CandleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleEntry;->copy()Lcom/github/mikephil/charting/data/CandleEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/CandleDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/CandleDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/CandleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 75
    .local v0, "copied":Lcom/github/mikephil/charting/data/CandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mColors:Ljava/util/List;

    .line 76
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 77
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 78
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mHighLightColor:I

    .line 79
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 80
    iget-object v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 81
    iget v3, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 83
    return-object v0
.end method

.method public getBodySpace()F
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    return v0
.end method

.method public getDecreasingColor()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    return v0
.end method

.method public getDecreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getIncreasingColor()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    return v0
.end method

.method public getIncreasingPaintStyle()Landroid/graphics/Paint$Style;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    return v0
.end method

.method public getShadowColorSameAsCandle()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColorSameAsCandle:Z

    return v0
.end method

.method public getShadowWidth()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    return v0
.end method

.method public setBodySpace(F)V
    .locals 1
    .param p1, "space"    # F

    .prologue
    .line 126
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 127
    const/4 p1, 0x0

    .line 128
    :cond_0
    const v0, 0x3ee66666    # 0.45f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 129
    const p1, 0x3ee66666    # 0.45f

    .line 131
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mBodySpace:F

    .line 132
    return-void
.end method

.method public setDecreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingColor:I

    .line 173
    return-void
.end method

.method public setDecreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "decreasingPaintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mDecreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 207
    return-void
.end method

.method public setIncreasingColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingColor:I

    .line 188
    return-void
.end method

.method public setIncreasingPaintStyle(Landroid/graphics/Paint$Style;)V
    .locals 0
    .param p1, "paintStyle"    # Landroid/graphics/Paint$Style;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mIncreasingPaintStyle:Landroid/graphics/Paint$Style;

    .line 221
    return-void
.end method

.method public setShadowColor(I)V
    .locals 0
    .param p1, "shadowColor"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColor:I

    .line 235
    return-void
.end method

.method public setShadowColorSameAsCandle(Z)V
    .locals 0
    .param p1, "shadowColorSameAsCandle"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowColorSameAsCandle:Z

    .line 249
    return-void
.end method

.method public setShadowWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 145
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/CandleDataSet;->mShadowWidth:F

    .line 146
    return-void
.end method
