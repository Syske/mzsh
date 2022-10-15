.class public Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BarChartRenderer.java"


# instance fields
.field protected mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

.field protected mBarRect:Landroid/graphics/RectF;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

.field protected mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 4
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    .line 38
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 67
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 69
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 71
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 73
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 74
    invoke-virtual {p0, p1, v2, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V

    .line 69
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v10

    .line 83
    .local v10, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    .line 86
    .local v8, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v9

    .line 89
    .local v9, "phaseY":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 90
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v8, v9}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 91
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 92
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 93
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 95
    invoke-virtual {v6, p2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 97
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v10, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 100
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 102
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v7, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    :goto_1
    add-int/lit8 v7, v7, 0x4

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 145
    :cond_1
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v7

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 113
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v7, 0x4

    invoke-interface {p2, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v7

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 125
    .end local v7    # "j":I
    :cond_4
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_2
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v7, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-nez v0, :cond_5

    .line 127
    :goto_3
    add-int/lit8 v7, v7, 0x4

    goto :goto_2

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v7

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 138
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 141
    :cond_6
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v7

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v7, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v7, 0x2

    aget v3, v0, v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v7, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 396
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 26
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v20

    .line 306
    .local v20, "setCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p2

    array-length v2, v0

    if-ge v15, v2, :cond_5

    .line 308
    aget-object v14, p2, v15

    .line 309
    .local v14, "h":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v16

    .line 311
    .local v16, "index":I
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v11

    .line 312
    .local v11, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v19

    check-cast v19, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 314
    .local v19, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    if-eqz v19, :cond_0

    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isHighlightEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 306
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 317
    :cond_1
    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarSpace()F

    move-result v2

    const/high16 v24, 0x40000000    # 2.0f

    div-float v6, v2, v24

    .line 319
    .local v6, "barspaceHalf":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v7

    .line 321
    .local v7, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightColor()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getHighLightAlpha()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 325
    if-ltz v16, :cond_0

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v24, v0

    .line 326
    invoke-interface/range {v24 .. v24}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getXChartMax()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v25

    mul-float v24, v24, v25

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    cmpg-float v2, v2, v24

    if-gez v2, :cond_0

    .line 328
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BarEntry;

    .line 330
    .local v12, "e":Lcom/github/mikephil/charting/data/BarEntry;
    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getXIndex()I

    move-result v2

    move/from16 v0, v16

    if-ne v2, v0, :cond_0

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v13

    .line 334
    .local v13, "groupspace":F
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getStackIndex()I

    move-result v2

    if-gez v2, :cond_3

    const/16 v17, 0x0

    .line 337
    .local v17, "isStack":Z
    :goto_2
    mul-int v2, v16, v20

    add-int/2addr v2, v11

    int-to-float v2, v2

    const/high16 v24, 0x40000000    # 2.0f

    div-float v24, v13, v24

    add-float v2, v2, v24

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v13

    add-float v3, v2, v24

    .line 343
    .local v3, "x":F
    if-eqz v17, :cond_4

    .line 344
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getRange()Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v2

    iget v4, v2, Lcom/github/mikephil/charting/highlight/Range;->from:F

    .line 345
    .local v4, "y1":F
    invoke-virtual {v14}, Lcom/github/mikephil/charting/highlight/Highlight;->getRange()Lcom/github/mikephil/charting/highlight/Range;

    move-result-object v2

    iget v5, v2, Lcom/github/mikephil/charting/highlight/Range;->to:F

    .local v5, "y2":F
    :goto_3
    move-object/from16 v2, p0

    .line 351
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawHighlightArrowEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/16 v24, 0xff

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    const v24, 0x3d8f5c29    # 0.07f

    mul-float v18, v2, v24

    .line 362
    .local v18, "offsetY":F
    const/16 v2, 0x9

    new-array v0, v2, [F

    move-object/from16 v21, v0

    .line 363
    .local v21, "values":[F
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/Transformer;->getPixelToValueMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 364
    const/4 v2, 0x4

    aget v2, v21, v2

    const/16 v24, 0x0

    aget v24, v21, v24

    div-float v2, v2, v24

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v22

    .line 366
    .local v22, "xToYRel":F
    invoke-interface/range {v19 .. v19}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getBarSpace()F

    move-result v2

    const/high16 v24, 0x40000000    # 2.0f

    div-float v10, v2, v24

    .line 367
    .local v10, "arrowWidth":F
    mul-float v9, v10, v22

    .line 369
    .local v9, "arrowHeight":F
    neg-float v2, v5

    cmpl-float v2, v4, v2

    if-lez v2, :cond_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v2

    mul-float v23, v4, v2

    .line 371
    .local v23, "yArrow":F
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 372
    .local v8, "arrow":Landroid/graphics/Path;
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float v24, v23, v18

    move/from16 v0, v24

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 373
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float/2addr v2, v10

    add-float v24, v23, v18

    sub-float v24, v24, v9

    move/from16 v0, v24

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 374
    const v2, 0x3ecccccd    # 0.4f

    add-float/2addr v2, v3

    add-float/2addr v2, v10

    add-float v24, v23, v18

    add-float v24, v24, v9

    move/from16 v0, v24

    invoke-virtual {v8, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 376
    invoke-virtual {v7, v8}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 334
    .end local v3    # "x":F
    .end local v4    # "y1":F
    .end local v5    # "y2":F
    .end local v8    # "arrow":Landroid/graphics/Path;
    .end local v9    # "arrowHeight":F
    .end local v10    # "arrowWidth":F
    .end local v17    # "isStack":Z
    .end local v18    # "offsetY":F
    .end local v21    # "values":[F
    .end local v22    # "xToYRel":F
    .end local v23    # "yArrow":F
    :cond_3
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 347
    .restart local v3    # "x":F
    .restart local v17    # "isStack":Z
    :cond_4
    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v4

    .line 348
    .restart local v4    # "y1":F
    const/4 v5, 0x0

    .restart local v5    # "y2":F
    goto/16 :goto_3

    .line 381
    .end local v3    # "x":F
    .end local v4    # "y1":F
    .end local v5    # "y2":F
    .end local v6    # "barspaceHalf":F
    .end local v7    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v11    # "dataSetIndex":I
    .end local v12    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v13    # "groupspace":F
    .end local v14    # "h":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v16    # "index":I
    .end local v17    # "isStack":Z
    .end local v19    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_5
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 35
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->passesCheck()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v18

    .line 178
    .local v18, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v3, 0x40900000    # 4.5f

    invoke-static {v3}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v32

    .line 179
    .local v32, "valueOffsetPlus":F
    const/16 v26, 0x0

    .line 180
    .local v26, "posOffset":F
    const/16 v24, 0x0

    .line 181
    .local v24, "negOffset":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v19

    .line 183
    .local v19, "drawValueAboveBar":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    if-ge v8, v3, :cond_12

    .line 185
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 187
    .local v17, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 183
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 191
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v21

    .line 197
    .local v21, "isInverted":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v4, "8"

    invoke-static {v3, v4}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v3

    int-to-float v0, v3

    move/from16 v34, v0

    .line 198
    .local v34, "valueTextHeight":F
    if-eqz v19, :cond_4

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v26, v0

    .line 199
    :goto_1
    if-eqz v19, :cond_5

    add-float v24, v34, v32

    .line 201
    :goto_2
    if-eqz v21, :cond_2

    .line 202
    move/from16 v0, v26

    neg-float v3, v0

    sub-float v26, v3, v34

    .line 203
    move/from16 v0, v24

    neg-float v3, v0

    sub-float v24, v3, v34

    .line 206
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v28

    .line 208
    .local v28, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)[F

    move-result-object v33

    .line 211
    .local v33, "valuePoints":[F
    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v3

    if-nez v3, :cond_8

    .line 213
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_3
    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, v33

    array-length v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v4, v33, v22

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v4, v22, 0x1

    aget v4, v33, v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v4, v33, v22

    .line 219
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-nez v3, :cond_6

    .line 213
    :cond_3
    :goto_4
    add-int/lit8 v22, v22, 0x2

    goto :goto_3

    .line 198
    .end local v22    # "j":I
    .end local v28    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v33    # "valuePoints":[F
    :cond_4
    add-float v26, v34, v32

    goto :goto_1

    .line 199
    :cond_5
    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v24, v0

    goto :goto_2

    .line 222
    .restart local v22    # "j":I
    .restart local v28    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .restart local v33    # "valuePoints":[F
    :cond_6
    div-int/lit8 v3, v22, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 223
    .local v7, "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v6

    .line 225
    .local v6, "val":F
    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v5

    aget v9, v33, v22

    add-int/lit8 v3, v22, 0x1

    aget v4, v33, v3

    const/4 v3, 0x0

    cmpl-float v3, v6, v3

    if-ltz v3, :cond_7

    move/from16 v3, v26

    :goto_5
    add-float v10, v4, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_4

    :cond_7
    move/from16 v3, v24

    goto :goto_5

    .line 232
    .end local v6    # "val":F
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v22    # "j":I
    :cond_8
    const/16 v22, 0x0

    .restart local v22    # "j":I
    :goto_6
    move/from16 v0, v22

    int-to-float v3, v0

    move-object/from16 v0, v33

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 234
    div-int/lit8 v3, v22, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 236
    .restart local v7    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v30

    .line 241
    .local v30, "vals":[F
    if-nez v30, :cond_c

    .line 243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v4, v33, v22

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v4, v22, 0x1

    aget v4, v33, v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v4, v33, v22

    .line 247
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-nez v3, :cond_a

    .line 232
    :cond_9
    :goto_7
    add-int/lit8 v22, v22, 0x2

    goto :goto_6

    .line 250
    :cond_a
    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v11

    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v12

    aget v15, v33, v22

    add-int/lit8 v3, v22, 0x1

    aget v4, v33, v3

    .line 251
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_b

    move/from16 v3, v26

    :goto_8
    add-float v16, v4, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v13, v7

    move v14, v8

    .line 250
    invoke-virtual/range {v9 .. v16}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_7

    :cond_b
    move/from16 v3, v24

    .line 251
    goto :goto_8

    .line 256
    :cond_c
    move-object/from16 v0, v30

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [F

    move-object/from16 v29, v0

    .line 258
    .local v29, "transformed":[F
    const/16 v27, 0x0

    .line 259
    .local v27, "posY":F
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v3

    neg-float v0, v3

    move/from16 v25, v0

    .line 261
    .local v25, "negY":F
    const/16 v23, 0x0

    .local v23, "k":I
    const/16 v20, 0x0

    .local v20, "idx":I
    :goto_9
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_e

    .line 263
    aget v31, v30, v20

    .line 266
    .local v31, "value":F
    const/4 v3, 0x0

    cmpl-float v3, v31, v3

    if-ltz v3, :cond_d

    .line 267
    add-float v27, v27, v31

    .line 268
    move/from16 v16, v27

    .line 274
    .local v16, "y":F
    :goto_a
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    mul-float v4, v4, v16

    aput v4, v29, v3

    .line 261
    add-int/lit8 v23, v23, 0x2

    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 270
    .end local v16    # "y":F
    :cond_d
    move/from16 v16, v25

    .line 271
    .restart local v16    # "y":F
    sub-float v25, v25, v31

    goto :goto_a

    .line 277
    .end local v16    # "y":F
    .end local v31    # "value":F
    :cond_e
    invoke-virtual/range {v28 .. v29}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 279
    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v23

    if-ge v0, v3, :cond_9

    .line 281
    aget v15, v33, v22

    .line 282
    .local v15, "x":F
    add-int/lit8 v3, v23, 0x1

    aget v4, v29, v3

    div-int/lit8 v3, v23, 0x2

    aget v3, v30, v3

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_10

    move/from16 v3, v26

    :goto_c
    add-float v16, v4, v3

    .line 285
    .restart local v16    # "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 289
    invoke-virtual {v3, v15}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-nez v3, :cond_11

    .line 279
    :cond_f
    :goto_d
    add-int/lit8 v23, v23, 0x2

    goto :goto_b

    .end local v16    # "y":F
    :cond_10
    move/from16 v3, v24

    .line 282
    goto :goto_c

    .line 292
    .restart local v16    # "y":F
    :cond_11
    invoke-interface/range {v17 .. v17}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v11

    div-int/lit8 v3, v23, 0x2

    aget v12, v30, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v13, v7

    move v14, v8

    invoke-virtual/range {v9 .. v16}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_d

    .line 299
    .end local v7    # "entry":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "i":I
    .end local v15    # "x":F
    .end local v16    # "y":F
    .end local v17    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v18    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v19    # "drawValueAboveBar":Z
    .end local v20    # "idx":I
    .end local v21    # "isInverted":Z
    .end local v22    # "j":I
    .end local v23    # "k":I
    .end local v24    # "negOffset":F
    .end local v25    # "negY":F
    .end local v26    # "posOffset":F
    .end local v27    # "posY":F
    .end local v28    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v29    # "transformed":[F
    .end local v30    # "vals":[F
    .end local v32    # "valueOffsetPlus":F
    .end local v33    # "valuePoints":[F
    .end local v34    # "valueTextHeight":F
    :cond_12
    return-void
.end method

.method public getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)[F
    .locals 2
    .param p1, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p2, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "dataSetIndex"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 386
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 387
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 385
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBarChart(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 53
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 54
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/BarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 57
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 58
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/BarBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v3

    mul-int/lit8 v6, v3, 0x4

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getStackSize()I

    move-result v3

    :goto_1
    mul-int/2addr v3, v6

    .line 59
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    .line 60
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/BarBuffer;-><init>(IFIZ)V

    aput-object v5, v4, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 62
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 391
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 392
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareBarHighlight(FFFFLcom/github/mikephil/charting/utils/Transformer;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barspaceHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 159
    const/high16 v0, 0x3f000000    # 0.5f

    .line 161
    .local v0, "barWidth":F
    sub-float v5, p1, v0

    add-float v2, v5, p4

    .line 162
    .local v2, "left":F
    add-float v5, p1, v0

    sub-float v3, v5, p4

    .line 163
    .local v3, "right":F
    move v4, p2

    .line 164
    .local v4, "top":F
    move v1, p3

    .line 166
    .local v1, "bottom":F
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 168
    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/BarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    invoke-virtual {p5, v5, v6}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixel(Landroid/graphics/RectF;F)V

    .line 169
    return-void
.end method
