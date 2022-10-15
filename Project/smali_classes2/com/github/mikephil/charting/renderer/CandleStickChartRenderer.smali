.class public Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "CandleStickChartRenderer.java"


# instance fields
.field private mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

.field private mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 0
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 31
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 32
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    .line 33
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 53
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

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

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 55
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 56
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    goto :goto_0

    .line 58
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V
    .locals 27
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v9

    invoke-interface {v4, v9}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v26

    .line 64
    .local v26, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v21

    .line 65
    .local v21, "phaseX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v22

    .line 67
    .local v22, "phaseY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/github/mikephil/charting/data/CandleData;->getIndexOfDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)I

    move-result v16

    .line 69
    .local v16, "dataSetIndex":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    const/4 v9, 0x0

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 70
    .local v20, "minx":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    add-int/lit8 v4, v4, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 72
    .local v19, "maxx":I
    sub-int v4, v19, v20

    mul-int/lit8 v23, v4, 0x4

    .line 73
    .local v23, "range":I
    sub-int v4, v19, v20

    int-to-float v4, v4

    mul-float v4, v4, v21

    move/from16 v0, v20

    int-to-float v9, v0

    add-float/2addr v4, v9

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v0, v10

    move/from16 v25, v0

    .line 75
    .local v25, "to":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    aget-object v15, v4, v16

    .line 76
    .local v15, "bodyBuffer":Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getBodySpace()F

    move-result v4

    invoke-virtual {v15, v4}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setBodySpace(F)V

    .line 77
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->setPhases(FF)V

    .line 78
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitFrom(I)V

    .line 79
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->limitTo(I)V

    .line 80
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    .line 82
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 84
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    aget-object v24, v4, v16

    .line 85
    .local v24, "shadowBuffer":Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;
    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->setPhases(FF)V

    .line 86
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitFrom(I)V

    .line 87
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->limitTo(I)V

    .line 88
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;)V

    .line 90
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 92
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowWidth()F

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 95
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 98
    div-int/lit8 v4, v18, 0x4

    add-int v4, v4, v20

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 100
    .local v17, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    int-to-float v9, v9

    move/from16 v0, v25

    int-to-float v10, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9, v10}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->fitsBounds(FFF)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    :goto_1
    add-int/lit8 v18, v18, 0x4

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColorSameAsCandle()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 105
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2

    .line 106
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 107
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_1

    .line 108
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v4

    .line 106
    :goto_2
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    aget v5, v4, v18

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x1

    aget v6, v4, v9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x2

    aget v7, v4, v9

    move-object/from16 v0, v24

    iget-object v4, v0, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x3

    aget v8, v4, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 141
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    aget v5, v4, v18

    .line 142
    .local v5, "leftBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x1

    aget v8, v4, v9

    .line 143
    .local v8, "open":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x2

    aget v7, v4, v9

    .line 144
    .local v7, "rightBody":F
    iget-object v4, v15, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;->buffer:[F

    add-int/lit8 v9, v18, 0x3

    aget v6, v4, v9

    .line 147
    .local v6, "close":F
    cmpl-float v4, v8, v6

    if-lez v4, :cond_9

    .line 149
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_8

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v18, 0x4

    add-int v9, v9, v20

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 109
    .end local v5    # "leftBody":F
    .end local v6    # "close":F
    .end local v7    # "rightBody":F
    .end local v8    # "open":F
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v4

    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getOpen()F

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/CandleEntry;->getClose()F

    move-result v9

    cmpg-float v4, v4, v9

    if-gez v4, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 114
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_3

    .line 115
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v4

    .line 113
    :goto_5
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 116
    :cond_3
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v4

    goto :goto_5

    .line 120
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 121
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_5

    .line 122
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v4

    .line 120
    :goto_6
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 123
    :cond_5
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_6

    .line 127
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    .line 128
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v4

    const/4 v10, -0x1

    if-ne v4, v10, :cond_7

    .line 129
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v4

    .line 127
    :goto_7
    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 130
    :cond_7
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v4

    goto :goto_7

    .line 152
    .restart local v5    # "leftBody":F
    .restart local v6    # "close":F
    .restart local v7    # "rightBody":F
    .restart local v8    # "open":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getDecreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 159
    :cond_9
    cmpg-float v4, v8, v6

    if-gez v4, :cond_b

    .line 161
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_a

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v9, v18, 0x4

    add-int v9, v9, v20

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 167
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingPaintStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 164
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getIncreasingColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_8

    .line 172
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getShadowColor()I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move v10, v5

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 176
    .end local v5    # "leftBody":F
    .end local v6    # "close":F
    .end local v7    # "rightBody":F
    .end local v8    # "open":F
    .end local v17    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    :cond_c
    return-void
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 233
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, p2

    if-ge v2, v10, :cond_2

    .line 235
    aget-object v10, p2, v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v8

    .line 238
    .local v8, "xIndex":I
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v10

    aget-object v11, p2, v2

    .line 239
    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v11

    .line 238
    invoke-virtual {v10, v11}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 241
    .local v7, "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isHighlightEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 244
    :cond_1
    invoke-interface {v7, v8}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    check-cast v0, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 246
    .local v0, "e":Lcom/github/mikephil/charting/data/CandleEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getXIndex()I

    move-result v10

    if-ne v10, v8, :cond_0

    .line 249
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getLow()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v3, v10, v11

    .line 250
    .local v3, "low":F
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    iget-object v11, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v11}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v11

    mul-float v1, v10, v11

    .line 251
    .local v1, "high":F
    add-float v10, v3, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float v9, v10, v11

    .line 253
    .local v9, "y":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getYChartMin()F

    move-result v5

    .line 254
    .local v5, "min":F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v10}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getYChartMax()F

    move-result v4

    .line 257
    .local v4, "max":F
    const/4 v10, 0x2

    new-array v6, v10, [F

    const/4 v10, 0x0

    int-to-float v11, v8

    aput v11, v6, v10

    const/4 v10, 0x1

    aput v9, v6, v10

    .line 261
    .local v6, "pts":[F
    iget-object v10, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 264
    invoke-virtual {p0, p1, v6, v7}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    goto :goto_1

    .line 266
    .end local v0    # "e":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v1    # "high":F
    .end local v3    # "low":F
    .end local v4    # "max":F
    .end local v5    # "min":F
    .end local v6    # "pts":[F
    .end local v7    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    .end local v8    # "xIndex":I
    .end local v9    # "y":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleData;->getYValCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getMaxVisibleCount()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 183
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/CandleData;->getDataSets()Ljava/util/List;

    move-result-object v15

    .line 187
    .local v15, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_4

    .line 189
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 191
    .local v2, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->isDrawValuesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 187
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 195
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 199
    .local v1, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMinX:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 200
    .local v5, "minx":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mMaxX:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 202
    .local v6, "maxx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 203
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 202
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesCandle(Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;FFII)[F

    move-result-object v17

    .line 205
    .local v17, "positions":[F
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v19

    .line 207
    .local v19, "yOffset":F
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_0

    .line 209
    aget v13, v17, v16

    .line 210
    .local v13, "x":F
    add-int/lit8 v3, v16, 0x1

    aget v18, v17, v3

    .line 212
    .local v18, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-nez v3, :cond_3

    .line 207
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x2

    goto :goto_1

    .line 218
    :cond_3
    div-int/lit8 v3, v16, 0x2

    add-int/2addr v3, v5

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    check-cast v11, Lcom/github/mikephil/charting/data/CandleEntry;

    .line 220
    .local v11, "entry":Lcom/github/mikephil/charting/data/CandleEntry;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v9

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/CandleEntry;->getHigh()F

    move-result v10

    sub-float v14, v18, v19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_2

    .line 224
    .end local v1    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    .end local v5    # "minx":I
    .end local v6    # "maxx":I
    .end local v11    # "entry":Lcom/github/mikephil/charting/data/CandleEntry;
    .end local v12    # "i":I
    .end local v13    # "x":F
    .end local v15    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;>;"
    .end local v16    # "j":I
    .end local v17    # "positions":[F
    .end local v18    # "y":F
    .end local v19    # "yOffset":F
    :cond_4
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 37
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/CandleDataProvider;->getCandleData()Lcom/github/mikephil/charting/data/CandleData;

    move-result-object v0

    .line 38
    .local v0, "candleData":Lcom/github/mikephil/charting/data/CandleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    .line 39
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    .line 41
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 42
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/CandleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;

    .line 43
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mShadowBuffers:[Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleShadowBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 44
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/CandleStickChartRenderer;->mBodyBuffers:[Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CandleBodyBuffer;-><init>(I)V

    aput-object v4, v3, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ICandleDataSet;
    :cond_0
    return-void
.end method
