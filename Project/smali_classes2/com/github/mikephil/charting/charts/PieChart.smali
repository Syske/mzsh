.class public Lcom/github/mikephil/charting/charts/PieChart;
.super Lcom/github/mikephil/charting/charts/PieRadarChartBase;
.source "PieChart.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/charts/PieRadarChartBase",
        "<",
        "Lcom/github/mikephil/charting/data/PieData;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbsoluteAngles:[F

.field private mCenterText:Ljava/lang/CharSequence;

.field private mCenterTextRadiusPercent:F

.field private mCircleBox:Landroid/graphics/RectF;

.field private mDrawAngles:[F

.field private mDrawCenterText:Z

.field private mDrawHole:Z

.field private mDrawRoundedSlices:Z

.field private mDrawXLabels:Z

.field private mHoleRadiusPercent:F

.field protected mMaxAngle:F

.field protected mTransparentCircleRadiusPercent:F

.field private mUsePercentValues:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 59
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 64
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    .line 75
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 80
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 85
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 89
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 59
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 64
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    .line 75
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 80
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 85
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 89
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    .line 39
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 54
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 59
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 64
    iput-boolean v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    .line 75
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 80
    const/high16 v0, 0x425c0000    # 55.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 85
    iput-boolean v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 87
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 89
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    .line 101
    return-void
.end method

.method private calcAngle(F)F
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 260
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v0, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/github/mikephil/charting/charts/PieChart;->calcAngle(FF)F

    move-result v0

    return v0
.end method

.method private calcAngle(FF)F
    .locals 2
    .param p1, "value"    # F
    .param p2, "yValueSum"    # F

    .prologue
    .line 271
    div-float v0, p1, p2

    iget v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private calcAngles()V
    .locals 9

    .prologue
    .line 200
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v6

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    .line 201
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getYValCount()I

    move-result v6

    new-array v6, v6, [F

    iput-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    .line 203
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getYValueSum()F

    move-result v5

    .line 205
    .local v5, "yValueSum":F
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v1

    .line 207
    .local v1, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    const/4 v0, 0x0

    .line 209
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v6, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/PieData;->getDataSetCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 211
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    .line 213
    .local v4, "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryCount()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 215
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    invoke-interface {v4, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-direct {p0, v7, v5}, Lcom/github/mikephil/charting/charts/PieChart;->calcAngle(FF)F

    move-result v7

    aput v7, v6, v0

    .line 217
    if-nez v0, :cond_0

    .line 218
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    aget v7, v7, v0

    aput v7, v6, v0

    .line 223
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    iget-object v7, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    add-int/lit8 v8, v0, -0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    aget v8, v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v0

    goto :goto_2

    .line 209
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v3    # "j":I
    .end local v4    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;
    :cond_2
    return-void
.end method


# virtual methods
.method protected calcMinMax()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calcMinMax()V

    .line 160
    invoke-direct {p0}, Lcom/github/mikephil/charting/charts/PieChart;->calcAngles()V

    .line 161
    return-void
.end method

.method public calculateOffsets()V
    .locals 9

    .prologue
    .line 135
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->calculateOffsets()V

    .line 138
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v4, :cond_0

    .line 154
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getDiameter()F

    move-result v1

    .line 142
    .local v1, "diameter":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v1, v4

    .line 144
    .local v2, "radius":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 146
    .local v0, "c":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v4, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/PieData;->getDataSet()Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getSelectionShift()F

    move-result v3

    .line 150
    .local v3, "shift":F
    iget-object v4, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v2

    add-float/2addr v5, v3

    iget v6, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v2

    add-float/2addr v6, v3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v2

    sub-float/2addr v7, v3

    iget v8, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v2

    sub-float/2addr v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0
.end method

.method public getAbsoluteAngles()[F
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    return-object v0
.end method

.method public getCenterCircleBox()Landroid/graphics/PointF;
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getCenterText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCenterTextRadiusPercent()F
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    return v0
.end method

.method public getCircleBox()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getDataSetIndexForIndex(I)I
    .locals 3
    .param p1, "xIndex"    # I

    .prologue
    .line 296
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    check-cast v2, Lcom/github/mikephil/charting/data/PieData;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/PieData;->getDataSets()Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 299
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;

    invoke-interface {v2, p1}, Lcom/github/mikephil/charting/interfaces/datasets/IPieDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 298
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getDrawAngles()[F
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    return-object v0
.end method

.method public getHoleRadius()F
    .locals 1

    .prologue
    .line 514
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    return v0
.end method

.method public getIndexForAngle(F)I
    .locals 3
    .param p1, "angle"    # F

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v2

    sub-float v2, p1, v2

    invoke-static {v2}, Lcom/github/mikephil/charting/utils/Utils;->getNormalizedAngle(F)F

    move-result v0

    .line 280
    .local v0, "a":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    .line 285
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 280
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getMarkerPosition(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/highlight/Highlight;)[F
    .locals 12
    .param p1, "e"    # Lcom/github/mikephil/charting/data/Entry;
    .param p2, "highlight"    # Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 166
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getCenterCircleBox()Landroid/graphics/PointF;

    move-result-object v0

    .line 167
    .local v0, "center":Landroid/graphics/PointF;
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRadius()F

    move-result v4

    .line 169
    .local v4, "r":F
    const/high16 v8, 0x41200000    # 10.0f

    div-float v8, v4, v8

    const v9, 0x40666666    # 3.6f

    mul-float v2, v8, v9

    .line 171
    .local v2, "off":F
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->isDrawHoleEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 172
    const/high16 v8, 0x42c80000    # 100.0f

    div-float v8, v4, v8

    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getHoleRadius()F

    move-result v9

    mul-float/2addr v8, v9

    sub-float v8, v4, v8

    div-float v2, v8, v10

    .line 175
    :cond_0
    sub-float/2addr v4, v2

    .line 177
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->getRotationAngle()F

    move-result v5

    .line 179
    .local v5, "rotationAngle":F
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v1

    .line 182
    .local v1, "i":I
    iget-object v8, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawAngles:[F

    aget v8, v8, v1

    div-float v3, v8, v10

    .line 185
    .local v3, "offset":F
    float-to-double v8, v4

    iget-object v10, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    aget v10, v10, v1

    add-float/2addr v10, v5

    sub-float/2addr v10, v3

    iget-object v11, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 187
    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    .line 186
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget v10, v0, Landroid/graphics/PointF;->x:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v6, v8

    .line 188
    .local v6, "x":F
    float-to-double v8, v4

    iget-object v10, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAbsoluteAngles:[F

    aget v10, v10, v1

    add-float/2addr v10, v5

    sub-float/2addr v10, v3

    iget-object v11, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 190
    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float/2addr v10, v11

    float-to-double v10, v10

    .line 189
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    iget v10, v0, Landroid/graphics/PointF;->y:F

    float-to-double v10, v10

    add-double/2addr v8, v10

    double-to-float v7, v8

    .line 192
    .local v7, "y":F
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v7, v8, v9

    return-object v8
.end method

.method public getMaxAngle()F
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    return v0
.end method

.method public getRadius()F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 437
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCircleBox:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method

.method protected getRequiredBaseOffset()F
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x0

    return v0
.end method

.method protected getRequiredLegendOffset()F
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->getLabelPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public getTransparentCircleRadius()F
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->init()V

    .line 107
    new-instance v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;-><init>(Lcom/github/mikephil/charting/charts/PieChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    .line 108
    return-void
.end method

.method public isDrawCenterTextEnabled()Z
    .locals 1

    .prologue
    .line 422
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    return v0
.end method

.method public isDrawHoleEnabled()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    return v0
.end method

.method public isDrawRoundedSlicesEnabled()Z
    .locals 1

    .prologue
    .line 581
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawRoundedSlices:Z

    return v0
.end method

.method public isDrawSliceTextEnabled()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    return v0
.end method

.method public isHoleTransparent()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsePercentValuesEnabled()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    return v0
.end method

.method public needsHighlight(II)Z
    .locals 3
    .param p1, "xIndex"    # I
    .param p2, "dataSetIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->valuesToHighlight()Z

    move-result v2

    if-eqz v2, :cond_0

    if-gez p2, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 243
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v2

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    aget-object v2, v2, v0

    .line 247
    invoke-virtual {v2}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 248
    const/4 v1, 0x1

    goto :goto_0

    .line 243
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    instance-of v0, v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->releaseBitmap()V

    .line 647
    :cond_0
    invoke-super {p0}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDetachedFromWindow()V

    .line 648
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/github/mikephil/charting/charts/PieRadarChartBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 114
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mData:Lcom/github/mikephil/charting/data/ChartData;

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawData(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p0}, Lcom/github/mikephil/charting/charts/PieChart;->valuesToHighlight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    iget-object v1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mIndicesToHighlight:[Lcom/github/mikephil/charting/highlight/Highlight;

    invoke-virtual {v0, p1, v1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawExtras(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/DataRenderer;->drawValues(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mLegendRenderer:Lcom/github/mikephil/charting/renderer/LegendRenderer;

    invoke-virtual {v0, p1}, Lcom/github/mikephil/charting/renderer/LegendRenderer;->renderLegend(Landroid/graphics/Canvas;)V

    .line 128
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;->drawDescription(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/charts/PieChart;->drawMarkers(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setCenterText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    iput-object p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setCenterTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 495
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 496
    return-void
.end method

.method public setCenterTextRadiusPercent(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 609
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mCenterTextRadiusPercent:F

    .line 610
    return-void
.end method

.method public setCenterTextSize(F)V
    .locals 2
    .param p1, "sizeDp"    # F

    .prologue
    .line 476
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    .line 477
    invoke-static {p1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    .line 476
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 478
    return-void
.end method

.method public setCenterTextSizePixels(F)V
    .locals 1
    .param p1, "sizePixels"    # F

    .prologue
    .line 486
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 487
    return-void
.end method

.method public setCenterTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "t"    # Landroid/graphics/Typeface;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintCenterText()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 468
    return-void
.end method

.method public setDrawCenterText(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 413
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawCenterText:Z

    .line 414
    return-void
.end method

.method public setDrawHoleEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawHole:Z

    .line 373
    return-void
.end method

.method public setDrawSliceText(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mDrawXLabels:Z

    .line 563
    return-void
.end method

.method public setHoleColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 336
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 337
    return-void
.end method

.method public setHoleColorTransparent(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 349
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintHole()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_0
.end method

.method public setHoleRadius(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 505
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mHoleRadiusPercent:F

    .line 506
    return-void
.end method

.method public setMaxAngle(F)V
    .locals 1
    .param p1, "maxangle"    # F

    .prologue
    .line 632
    const/high16 v0, 0x43b40000    # 360.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 633
    const/high16 p1, 0x43b40000    # 360.0f

    .line 635
    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 636
    const/high16 p1, 0x42b40000    # 90.0f

    .line 638
    :cond_1
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mMaxAngle:F

    .line 639
    return-void
.end method

.method public setTransparentCircleAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 553
    iget-object v0, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v0, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintTransparentCircle()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 554
    return-void
.end method

.method public setTransparentCircleColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 524
    iget-object v2, p0, Lcom/github/mikephil/charting/charts/PieChart;->mRenderer:Lcom/github/mikephil/charting/renderer/DataRenderer;

    check-cast v2, Lcom/github/mikephil/charting/renderer/PieChartRenderer;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/renderer/PieChartRenderer;->getPaintTransparentCircle()Landroid/graphics/Paint;

    move-result-object v1

    .line 525
    .local v1, "p":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 526
    .local v0, "alpha":I
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 527
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 528
    return-void
.end method

.method public setTransparentCircleRadius(F)V
    .locals 0
    .param p1, "percent"    # F

    .prologue
    .line 539
    iput p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mTransparentCircleRadiusPercent:F

    .line 540
    return-void
.end method

.method public setUsePercentValues(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 592
    iput-boolean p1, p0, Lcom/github/mikephil/charting/charts/PieChart;->mUsePercentValues:Z

    .line 593
    return-void
.end method
