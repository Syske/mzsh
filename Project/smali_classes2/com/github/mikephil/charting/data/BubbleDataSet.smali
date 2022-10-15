.class public Lcom/github/mikephil/charting/data/BubbleDataSet;
.super Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;
.source "BubbleDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet",
        "<",
        "Lcom/github/mikephil/charting/data/BubbleEntry;",
        ">;",
        "Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;"
    }
.end annotation


# instance fields
.field private mHighlightCircleWidth:F

.field protected mMaxSize:F

.field protected mXMax:F

.field protected mXMin:F


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/github/mikephil/charting/data/BubbleEntry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/BarLineScatterCandleBubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 20
    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    .line 24
    return-void
.end method

.method private largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v0

    return v0
.end method

.method private xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method

.method private yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F
    .locals 1
    .param p1, "entry"    # Lcom/github/mikephil/charting/data/BubbleEntry;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v0

    return v0
.end method


# virtual methods
.method public calcMinMax(II)V
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 39
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    if-nez v8, :cond_1

    .line 89
    :cond_0
    return-void

    .line 42
    :cond_1
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_0

    .line 47
    if-eqz p2, :cond_2

    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt p2, v8, :cond_8

    .line 48
    :cond_2
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    .line 52
    .local v0, "endValue":I
    :goto_0
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    .line 53
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-direct {p0, v8}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v8

    iput v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    .line 57
    move v2, p1

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 59
    iget-object v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 61
    .local v1, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v7

    .line 62
    .local v7, "ymin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->yMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v6

    .line 64
    .local v6, "ymax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_3

    .line 65
    iput v7, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMin:F

    .line 68
    :cond_3
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_4

    .line 69
    iput v6, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYMax:F

    .line 72
    :cond_4
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMin(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v5

    .line 73
    .local v5, "xmin":F
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->xMax(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v4

    .line 75
    .local v4, "xmax":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_5

    .line 76
    iput v5, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    .line 79
    :cond_5
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 80
    iput v4, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    .line 83
    :cond_6
    invoke-direct {p0, v1}, Lcom/github/mikephil/charting/data/BubbleDataSet;->largestSize(Lcom/github/mikephil/charting/data/BubbleEntry;)F

    move-result v3

    .line 85
    .local v3, "size":F
    iget v8, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    cmpl-float v8, v3, v8

    if-lez v8, :cond_7

    .line 86
    iput v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    .line 57
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 50
    .end local v0    # "endValue":I
    .end local v1    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v2    # "i":I
    .end local v3    # "size":F
    .end local v4    # "xmax":F
    .end local v5    # "xmin":F
    .end local v6    # "ymax":F
    .end local v7    # "ymin":F
    :cond_8
    move v0, p2

    .restart local v0    # "endValue":I
    goto :goto_0
.end method

.method public copy()Lcom/github/mikephil/charting/data/DataSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/mikephil/charting/data/DataSet",
            "<",
            "Lcom/github/mikephil/charting/data/BubbleEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "yVals":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BubbleEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mYVals:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/data/BubbleEntry;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BubbleEntry;->copy()Lcom/github/mikephil/charting/data/BubbleEntry;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Lcom/github/mikephil/charting/data/BubbleDataSet;

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/BubbleDataSet;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/github/mikephil/charting/data/BubbleDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 101
    .local v0, "copied":Lcom/github/mikephil/charting/data/BubbleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mColors:Ljava/util/List;

    iput-object v3, v0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mColors:Ljava/util/List;

    .line 102
    iget v3, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighLightColor:I

    iput v3, v0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighLightColor:I

    .line 104
    return-object v0
.end method

.method public getHighlightCircleWidth()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    return v0
.end method

.method public getMaxSize()F
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mMaxSize:F

    return v0
.end method

.method public getXMax()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMax:F

    return v0
.end method

.method public getXMin()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mXMin:F

    return v0
.end method

.method public setHighlightCircleWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 28
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/BubbleDataSet;->mHighlightCircleWidth:F

    .line 29
    return-void
.end method
