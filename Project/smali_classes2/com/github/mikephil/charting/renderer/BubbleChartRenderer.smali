.class public Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;
.super Lcom/github/mikephil/charting/renderer/DataRenderer;
.source "BubbleChartRenderer.java"


# instance fields
.field private _hsvBuffer:[F

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

.field private pointBuffer:[F

.field private sizeBuffer:[F


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/DataRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    .line 185
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 36
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 47
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v0

    .line 49
    .local v0, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

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

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 51
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V

    goto :goto_0

    .line 54
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .prologue
    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v19, v0

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v18

    .line 69
    .local v18, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v14

    .line 70
    .local v14, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v15

    .line 72
    .local v15, "phaseY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 73
    .local v7, "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 75
    .local v8, "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 76
    .local v13, "minx":I
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 78
    .local v12, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    const/high16 v21, 0x3f800000    # 1.0f

    aput v21, v19, v20

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 85
    .local v11, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v20

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 86
    .local v10, "maxBubbleHeight":F
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 88
    .local v16, "referenceSize":F
    move v9, v13

    .local v9, "j":I
    :goto_0
    if-ge v9, v12, :cond_2

    .line 90
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v6

    check-cast v6, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 92
    .local v6, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v21

    sub-int v21, v21, v13

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    int-to-float v0, v13

    move/from16 v22, v0

    add-float v21, v21, v22

    aput v21, v19, v20

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v21

    mul-float v21, v21, v15

    aput v21, v19, v20

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 96
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v19

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v19

    const/high16 v20, 0x40000000    # 2.0f

    div-float v17, v19, v20

    .line 98
    .local v17, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-float v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    sub-float v20, v20, v17

    .line 99
    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v19

    if-nez v19, :cond_1

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-float v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    sub-float v20, v20, v17

    invoke-virtual/range {v19 .. v20}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v19

    if-nez v19, :cond_3

    .line 113
    .end local v6    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v17    # "shapeHalf":F
    :cond_2
    return-void

    .line 108
    .restart local v6    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v17    # "shapeHalf":F
    :cond_3
    invoke-virtual {v6}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v5

    .line 110
    .local v5, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 183
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 28
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v5

    .line 192
    .local v5, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v17

    .line 193
    .local v17, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v18

    .line 195
    .local v18, "phaseY":F
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_2

    aget-object v11, p2, v22

    .line 197
    .local v11, "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 199
    .local v7, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isHighlightEnabled()Z

    move-result v24

    if-nez v24, :cond_1

    .line 195
    :cond_0
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v7, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 203
    .local v9, "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-interface {v7, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    check-cast v10, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 205
    .local v10, "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-interface {v7, v9}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v15

    .line 206
    .local v15, "minx":I
    invoke-interface {v7, v10}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 208
    .local v14, "maxx":I
    invoke-virtual {v5, v11}, Lcom/github/mikephil/charting/data/BubbleData;->getEntryForHighlight(Lcom/github/mikephil/charting/highlight/Highlight;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 209
    .local v8, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v24

    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    move-object/from16 v24, v0

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v21

    .line 214
    .local v21, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    aput v26, v24, v25

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    const/high16 v26, 0x3f800000    # 1.0f

    aput v26, v24, v25

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->sizeBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 221
    .local v13, "maxBubbleWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentBottom()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentTop()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 222
    .local v12, "maxBubbleHeight":F
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v19

    .line 224
    .local v19, "referenceSize":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v26

    sub-int v26, v26, v15

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v26, v26, v17

    int-to-float v0, v15

    move/from16 v27, v0

    add-float v26, v26, v27

    aput v26, v24, v25

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getVal()F

    move-result v26

    mul-float v26, v26, v18

    aput v26, v24, v25

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 228
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v24

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getMaxSize()F

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->getShapeSize(FFF)F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v20, v24, v25

    .line 230
    .local v20, "shapeHalf":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    add-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    sub-float v25, v25, v20

    .line 231
    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    add-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    sub-float v25, v25, v20

    invoke-virtual/range {v24 .. v25}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v24

    if-nez v24, :cond_3

    .line 254
    .end local v7    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .end local v8    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v9    # "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v10    # "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v11    # "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    .end local v12    # "maxBubbleHeight":F
    .end local v13    # "maxBubbleWidth":F
    .end local v14    # "maxx":I
    .end local v15    # "minx":I
    .end local v19    # "referenceSize":F
    .end local v20    # "shapeHalf":F
    .end local v21    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_2
    return-void

    .line 240
    .restart local v7    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    .restart local v8    # "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v9    # "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v10    # "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v11    # "indice":Lcom/github/mikephil/charting/highlight/Highlight;
    .restart local v12    # "maxBubbleHeight":F
    .restart local v13    # "maxBubbleWidth":F
    .restart local v14    # "maxx":I
    .restart local v15    # "minx":I
    .restart local v19    # "referenceSize":F
    .restart local v20    # "shapeHalf":F
    .restart local v21    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    :cond_3
    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    if-lt v0, v15, :cond_0

    invoke-virtual {v11}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    if-ge v0, v14, :cond_0

    .line 243
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/BubbleEntry;->getXIndex()I

    move-result v24

    move/from16 v0, v24

    invoke-interface {v7, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getColor(I)I

    move-result v16

    .line 245
    .local v16, "originalColor":I
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v24

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v25

    .line 246
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v27, v0

    .line 245
    invoke-static/range {v24 .. v27}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget v26, v24, v25

    const/high16 v27, 0x3f000000    # 0.5f

    mul-float v26, v26, v27

    aput v26, v24, v25

    .line 248
    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->alpha(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->_hsvBuffer:[F

    move-object/from16 v25, v0

    invoke-static/range {v24 .. v25}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 250
    .local v6, "color":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getHighlightCircleWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->pointBuffer:[F

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v20

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getBubbleData()Lcom/github/mikephil/charting/data/BubbleData;

    move-result-object v17

    .line 120
    .local v17, "bubbleData":Lcom/github/mikephil/charting/data/BubbleData;
    if-nez v17, :cond_1

    .line 179
    :cond_0
    return-void

    .line 124
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BubbleData;->getYValCount()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getMaxVisibleCount()I

    move-result v8

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 125
    invoke-virtual {v9}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-double v8, v8

    .line 124
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    if-ge v2, v8, :cond_0

    .line 127
    invoke-virtual/range {v17 .. v17}, Lcom/github/mikephil/charting/data/BubbleData;->getDataSets()Ljava/util/List;

    move-result-object v18

    .line 129
    .local v18, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    const-string v8, "1"

    invoke-static {v2, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v2

    int-to-float v0, v2

    move/from16 v22, v0

    .line 131
    .local v22, "lineHeight":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 133
    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;

    .line 135
    .local v3, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->isDrawValuesEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 131
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 139
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v4

    .line 142
    .local v4, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    .line 144
    .local v5, "phaseY":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-nez v2, :cond_5

    move/from16 v16, v5

    .line 145
    .local v16, "alpha":F
    :goto_1
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueTextColor()I

    move-result v24

    .line 146
    .local v24, "valueTextColor":I
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 147
    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static/range {v24 .. v24}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    .line 146
    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v24

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMinX:I

    invoke-interface {v3, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v19

    check-cast v19, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 152
    .local v19, "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mMaxX:I

    invoke-interface {v3, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForXIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v20

    check-cast v20, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 154
    .local v20, "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    move-object/from16 v0, v19

    invoke-interface {v3, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v6

    .line 155
    .local v6, "minx":I
    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryCount()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 157
    .local v7, "maxx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/github/mikephil/charting/interfaces/dataprovider/BubbleDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v2

    .line 158
    invoke-virtual/range {v2 .. v7}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesBubble(Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;FFII)[F

    move-result-object v23

    .line 160
    .local v23, "positions":[F
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_2
    move-object/from16 v0, v23

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 162
    aget v14, v23, v21

    .line 163
    .local v14, "x":F
    add-int/lit8 v2, v21, 0x1

    aget v25, v23, v2

    .line 165
    .local v25, "y":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v2, v14}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 160
    :cond_4
    :goto_3
    add-int/lit8 v21, v21, 0x2

    goto :goto_2

    .end local v6    # "minx":I
    .end local v7    # "maxx":I
    .end local v14    # "x":F
    .end local v16    # "alpha":F
    .end local v19    # "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v20    # "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    .end local v21    # "j":I
    .end local v23    # "positions":[F
    .end local v24    # "valueTextColor":I
    .end local v25    # "y":F
    :cond_5
    move/from16 v16, v4

    .line 144
    goto/16 :goto_1

    .line 171
    .restart local v6    # "minx":I
    .restart local v7    # "maxx":I
    .restart local v14    # "x":F
    .restart local v16    # "alpha":F
    .restart local v19    # "entryFrom":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v20    # "entryTo":Lcom/github/mikephil/charting/data/BubbleEntry;
    .restart local v21    # "j":I
    .restart local v23    # "positions":[F
    .restart local v24    # "valueTextColor":I
    .restart local v25    # "y":F
    :cond_6
    div-int/lit8 v2, v21, 0x2

    add-int/2addr v2, v6

    invoke-interface {v3, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    check-cast v12, Lcom/github/mikephil/charting/data/BubbleEntry;

    .line 173
    .local v12, "entry":Lcom/github/mikephil/charting/data/BubbleEntry;
    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/datasets/IBubbleDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v10

    invoke-virtual {v12}, Lcom/github/mikephil/charting/data/BubbleEntry;->getSize()F

    move-result v11

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v22

    add-float v15, v25, v2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v15}, Lcom/github/mikephil/charting/renderer/BubbleChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_3
.end method

.method protected getShapeSize(FFF)F
    .locals 4
    .param p1, "entrySize"    # F
    .param p2, "maxSize"    # F
    .param p3, "reference"    # F

    .prologue
    .line 60
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 61
    .local v0, "factor":F
    :goto_0
    mul-float v1, p3, v0

    .line 62
    .local v1, "shapeSize":F
    return v1

    .line 60
    .end local v0    # "factor":F
    .end local v1    # "shapeSize":F
    :cond_0
    div-float v2, p1, p2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_0
.end method

.method public initBuffers()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
