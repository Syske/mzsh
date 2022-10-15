.class public Lcom/github/mikephil/charting/renderer/RadarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "RadarChartRenderer.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/charts/RadarChart;

.field protected mWebPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/charts/RadarChart;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 5
    .param p1, "chart"    # Lcom/github/mikephil/charting/charts/RadarChart;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v4, 0x1

    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xbb

    const/16 v3, 0x73

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 55
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarData;

    .line 57
    .local v0, "radarData":Lcom/github/mikephil/charting/data/RadarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/RadarData;->getDataSets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 59
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;)V

    goto :goto_0

    .line 62
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .prologue
    const/16 v11, 0xff

    .line 66
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v6

    .line 70
    .local v6, "sliceangle":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v2

    .line 72
    .local v2, "factor":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v0

    .line 74
    .local v0, "center":Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 76
    .local v7, "surface":Landroid/graphics/Path;
    const/4 v3, 0x0

    .line 78
    .local v3, "hasMovedToPoint":Z
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 80
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-interface {p2, v4}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 84
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v9}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v8, v2

    int-to-float v9, v4

    mul-float/2addr v9, v6

    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 85
    invoke-virtual {v10}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v10

    add-float/2addr v9, v10

    .line 84
    invoke-static {v0, v8, v9}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v5

    .line 87
    .local v5, "p":Landroid/graphics/PointF;
    iget v8, v5, Landroid/graphics/PointF;->x:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 78
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 90
    :cond_0
    if-nez v3, :cond_1

    .line 91
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 92
    const/4 v3, 0x1

    goto :goto_1

    .line 94
    :cond_1
    iget v8, v5, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 97
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v5    # "p":Landroid/graphics/PointF;
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 100
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawFilledEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 101
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillAlpha()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 104
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    :cond_3
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getLineWidth()F

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawFilledEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getFillAlpha()I

    move-result v8

    if-ge v8, v11, :cond_5

    .line 112
    :cond_4
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 113
    :cond_5
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawWeb(Landroid/graphics/Canvas;)V

    .line 153
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 205
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v9

    .line 206
    .local v9, "sliceangle":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v3

    .line 208
    .local v3, "factor":F
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v1

    .line 210
    .local v1, "center":Landroid/graphics/PointF;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v4, v12, :cond_2

    .line 212
    iget-object v12, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v12}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/RadarData;

    aget-object v13, p2, v4

    .line 214
    invoke-virtual {v13}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v13

    .line 213
    invoke-virtual {v12, v13}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 216
    .local v8, "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isHighlightEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 220
    :cond_1
    aget-object v12, p2, v4

    invoke-virtual {v12}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v10

    .line 222
    .local v10, "xIndex":I
    invoke-interface {v8, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 223
    .local v2, "e":Lcom/github/mikephil/charting/data/Entry;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v12

    if-ne v12, v10, :cond_0

    .line 226
    invoke-interface {v8, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v5

    .line 227
    .local v5, "j":I
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v12

    iget-object v13, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v13}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v13

    sub-float v11, v12, v13

    .line 229
    .local v11, "y":F
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-nez v12, :cond_0

    .line 232
    mul-float v12, v11, v3

    int-to-float v13, v5

    mul-float/2addr v13, v9

    iget-object v14, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 233
    invoke-virtual {v14}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v14

    add-float/2addr v13, v14

    .line 232
    invoke-static {v1, v12, v13}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v6

    .line 235
    .local v6, "p":Landroid/graphics/PointF;
    const/4 v12, 0x2

    new-array v7, v12, [F

    const/4 v12, 0x0

    iget v13, v6, Landroid/graphics/PointF;->x:F

    aput v13, v7, v12

    const/4 v12, 0x1

    iget v13, v6, Landroid/graphics/PointF;->y:F

    aput v13, v7, v12

    .line 240
    .local v7, "pts":[F
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v7, v8}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    goto :goto_1

    .line 242
    .end local v2    # "e":Lcom/github/mikephil/charting/data/Entry;
    .end local v5    # "j":I
    .end local v6    # "p":Landroid/graphics/PointF;
    .end local v7    # "pts":[F
    .end local v8    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    .end local v10    # "xIndex":I
    .end local v11    # "y":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v13

    .line 122
    .local v13, "sliceangle":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v10

    .line 124
    .local v10, "factor":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v8

    .line 126
    .local v8, "center":Landroid/graphics/PointF;
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v14

    .line 128
    .local v14, "yoffset":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetCount()I

    move-result v0

    if-ge v5, v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/data/RadarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;

    .line 132
    .local v9, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->isDrawValuesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {p0, v9}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 138
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryCount()I

    move-result v0

    if-ge v11, v0, :cond_0

    .line 140
    invoke-interface {v9, v11}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 142
    .local v4, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, v10

    int-to-float v1, v11

    mul-float/2addr v1, v13

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    .line 143
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v2

    add-float/2addr v1, v2

    .line 142
    invoke-static {v8, v0, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 145
    .local v12, "p":Landroid/graphics/PointF;
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    iget v6, v12, Landroid/graphics/PointF;->x:F

    iget v0, v12, Landroid/graphics/PointF;->y:F

    sub-float v7, v0, v14

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 148
    .end local v4    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IRadarDataSet;
    .end local v11    # "j":I
    .end local v12    # "p":Landroid/graphics/PointF;
    :cond_2
    return-void
.end method

.method protected drawWeb(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSliceAngle()F

    move-result v17

    .line 161
    .local v17, "sliceangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getFactor()F

    move-result v8

    .line 162
    .local v8, "factor":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getRotationAngle()F

    move-result v16

    .line 164
    .local v16, "rotationangle":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getCenterOffsets()Landroid/graphics/PointF;

    move-result-object v7

    .line 167
    .local v7, "center":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getSkipWebLineCount()I

    move-result v1

    add-int/lit8 v18, v1, 0x1

    .line 173
    .local v18, "xIncrements":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getXValCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYRange()F

    move-result v1

    mul-float/2addr v1, v8

    int-to-float v2, v9

    mul-float v2, v2, v17

    add-float v2, v2, v16

    invoke-static {v7, v1, v2}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v12

    .line 178
    .local v12, "p":Landroid/graphics/PointF;
    iget v2, v7, Landroid/graphics/PointF;->x:F

    iget v3, v7, Landroid/graphics/PointF;->y:F

    iget v4, v12, Landroid/graphics/PointF;->x:F

    iget v5, v12, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 173
    add-int v9, v9, v18

    goto :goto_0

    .line 182
    .end local v12    # "p":Landroid/graphics/PointF;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebLineWidthInner()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebColorInner()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getWebAlpha()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget v11, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntryCount:I

    .line 188
    .local v11, "labelCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v11, :cond_2

    .line 190
    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getData()Lcom/github/mikephil/charting/data/ChartData;

    move-result-object v1

    check-cast v1, Lcom/github/mikephil/charting/data/RadarData;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/RadarData;->getXValCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/charts/RadarChart;->getYAxis()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v1

    iget-object v1, v1, Lcom/github/mikephil/charting/components/YAxis;->mEntries:[F

    aget v1, v1, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mChart:Lcom/github/mikephil/charting/charts/RadarChart;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/RadarChart;->getYChartMin()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float v15, v1, v8

    .line 194
    .local v15, "r":F
    int-to-float v1, v9

    mul-float v1, v1, v17

    add-float v1, v1, v16

    invoke-static {v7, v15, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v13

    .line 195
    .local v13, "p1":Landroid/graphics/PointF;
    add-int/lit8 v1, v9, 0x1

    int-to-float v1, v1

    mul-float v1, v1, v17

    add-float v1, v1, v16

    invoke-static {v7, v15, v1}, Lcom/github/mikephil/charting/utils/Utils;->getPosition(Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v14

    .line 197
    .local v14, "p2":Landroid/graphics/PointF;
    iget v2, v13, Landroid/graphics/PointF;->x:F

    iget v3, v13, Landroid/graphics/PointF;->y:F

    iget v4, v14, Landroid/graphics/PointF;->x:F

    iget v5, v14, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 190
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 188
    .end local v13    # "p1":Landroid/graphics/PointF;
    .end local v14    # "p2":Landroid/graphics/PointF;
    .end local v15    # "r":F
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 200
    :cond_2
    return-void
.end method

.method public getWebPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/RadarChartRenderer;->mWebPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
