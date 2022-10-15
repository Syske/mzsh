.class public Lcom/github/mikephil/charting/renderer/LineChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "LineChartRenderer.java"


# instance fields
.field protected cubicFillPath:Landroid/graphics/Path;

.field protected cubicPath:Landroid/graphics/Path;

.field protected mBitmapCanvas:Landroid/graphics/Canvas;

.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

.field protected mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

.field protected mCirclePaintInner:Landroid/graphics/Paint;

.field protected mDrawBitmap:Landroid/graphics/Bitmap;

.field protected mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 57
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 48
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 58
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    return-void
.end method

.method private generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;II)Landroid/graphics/Path;
    .locals 10
    .param p1, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 408
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v8

    iget-object v9, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v8, p1, v9}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v3

    .line 409
    .local v3, "fillMin":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v5

    .line 410
    .local v5, "phaseX":F
    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    .line 412
    .local v6, "phaseY":F
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 413
    .local v4, "filled":Landroid/graphics/Path;
    invoke-interface {p1, p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v2

    .line 415
    .local v2, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4, v8, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 416
    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    mul-float/2addr v9, v6

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    add-int/lit8 v7, p2, 0x1

    .local v7, "x":I
    sub-int v8, p3, p2

    int-to-float v8, v8

    mul-float/2addr v8, v5

    int-to-float v9, p2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    .local v0, "count":I
    :goto_0
    if-ge v7, v0, :cond_0

    .line 421
    invoke-interface {p1, v7}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v1

    .line 422
    .local v1, "e":Lcom/github/mikephil/charting/data/Entry;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v9

    mul-float/2addr v9, v6

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "e":Lcom/github/mikephil/charting/data/Entry;
    :cond_0
    sub-int v8, p3, p2

    int-to-float v8, v8

    mul-float/2addr v8, v5

    int-to-float v9, p2

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 429
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    add-int/lit8 v8, v8, -0x1

    .line 430
    invoke-interface {p1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    .line 429
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 428
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 427
    invoke-interface {p1, v8}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v8

    .line 430
    invoke-virtual {v8}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v8

    int-to-float v8, v8

    .line 426
    invoke-virtual {v4, v8, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 432
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 434
    return-object v4
.end method


# virtual methods
.method protected drawCircles(Landroid/graphics/Canvas;)V
    .locals 26
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    sget-object v25, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v19

    .line 504
    .local v19, "phaseX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v20

    .line 506
    .local v20, "phaseY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v10

    .line 508
    .local v10, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_5

    .line 510
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 512
    .local v9, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 513
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v24

    if-nez v24, :cond_1

    .line 508
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 516
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleHoleColor()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    move-object/from16 v24, v0

    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v21

    .line 520
    .local v21, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v11

    .line 522
    .local v11, "entryCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v24, v0

    if-gez v24, :cond_3

    const/16 v24, 0x0

    :goto_1
    sget-object v25, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v9, v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 523
    .local v12, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    move/from16 v24, v0

    sget-object v25, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move/from16 v0, v24

    move-object/from16 v1, v25

    invoke-interface {v9, v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 525
    .local v13, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface {v9, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 526
    .local v18, "minx":I
    invoke-interface {v9, v13}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v24

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 528
    .local v17, "maxx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    move-object/from16 v24, v0

    aget-object v6, v24, v15

    .line 529
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->setPhases(FF)V

    .line 530
    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitFrom(I)V

    .line 531
    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->limitTo(I)V

    .line 532
    invoke-virtual {v6, v9}, Lcom/github/mikephil/charting/buffer/CircleBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 534
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 536
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleSize()F

    move-result v24

    const/high16 v25, 0x40000000    # 2.0f

    div-float v14, v24, v25

    .line 538
    .local v14, "halfsize":F
    const/16 v16, 0x0

    .local v16, "j":I
    sub-int v24, v17, v18

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    mul-int/lit8 v8, v24, 0x2

    .local v8, "count":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    .line 540
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    aget v22, v24, v16

    .line 541
    .local v22, "x":F
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/CircleBuffer;->buffer:[F

    move-object/from16 v24, v0

    add-int/lit8 v25, v16, 0x1

    aget v23, v24, v25

    .line 543
    .local v23, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v24

    if-nez v24, :cond_4

    .line 538
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x2

    goto :goto_2

    .line 522
    .end local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .end local v8    # "count":I
    .end local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "halfsize":F
    .end local v16    # "j":I
    .end local v17    # "maxx":I
    .end local v18    # "minx":I
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    move/from16 v24, v0

    goto/16 :goto_1

    .line 551
    .restart local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .restart local v8    # "count":I
    .restart local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v14    # "halfsize":F
    .restart local v16    # "j":I
    .restart local v17    # "maxx":I
    .restart local v18    # "minx":I
    .restart local v22    # "x":F
    .restart local v23    # "y":F
    :cond_4
    div-int/lit8 v24, v16, 0x2

    add-int v24, v24, v18

    move/from16 v0, v24

    invoke-interface {v9, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleColor(I)I

    move-result v7

    .line 553
    .local v7, "circleColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 555
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleSize()F

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 558
    invoke-interface {v9}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCircleHoleEnabled()Z

    move-result v24

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    .line 559
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    move-result v24

    move/from16 v0, v24

    if-eq v7, v0, :cond_2

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCirclePaintInner:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v14, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 565
    .end local v6    # "buffer":Lcom/github/mikephil/charting/buffer/CircleBuffer;
    .end local v7    # "circleColor":I
    .end local v8    # "count":I
    .end local v9    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .end local v11    # "entryCount":I
    .end local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v14    # "halfsize":F
    .end local v16    # "j":I
    .end local v17    # "maxx":I
    .end local v18    # "minx":I
    .end local v21    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v22    # "x":F
    .end local v23    # "y":F
    :cond_5
    return-void
.end method

.method protected drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v29

    .line 141
    .local v29, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v14

    .line 143
    .local v14, "entryCount":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v15

    .line 144
    .local v15, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    sget-object v3, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v16

    .line 146
    .local v16, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v13, 0x1

    .line 147
    .local v13, "diff":I
    :goto_1
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    sub-int/2addr v2, v13

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 148
    .local v20, "minx":I
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2, v14}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 150
    .local v19, "maxx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v22

    .line 151
    .local v22, "phaseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v23

    .line 153
    .local v23, "phaseY":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCubicIntensity()F

    move-result v17

    .line 155
    .local v17, "intensity":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 157
    sub-int v2, v19, v20

    int-to-float v2, v2

    mul-float v2, v2, v22

    move/from16 v0, v20

    int-to-float v3, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v28, v0

    .line 159
    .local v28, "size":I
    sub-int v2, v28, v20

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 161
    const/16 v25, 0x0

    .line 162
    .local v25, "prevDx":F
    const/16 v26, 0x0

    .line 163
    .local v26, "prevDy":F
    const/4 v11, 0x0

    .line 164
    .local v11, "curDx":F
    const/4 v12, 0x0

    .line 166
    .local v12, "curDy":F
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v27

    .line 167
    .local v27, "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v24, v27

    .line 168
    .local v24, "prev":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v10, v24

    .line 169
    .local v10, "cur":Lcom/github/mikephil/charting/data/Entry;
    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v21

    .line 172
    .local v21, "next":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    mul-float v4, v4, v23

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v25, v2, v17

    .line 175
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v26, v2, v17

    .line 177
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v17

    .line 178
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v17

    .line 181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v25

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v26

    mul-float v4, v4, v23

    .line 182
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 183
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v23

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v23

    .line 181
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 185
    add-int/lit8 v18, v20, 0x1

    .local v18, "j":I
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v28

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    .local v9, "count":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v9, :cond_3

    .line 187
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v27

    .line 188
    add-int/lit8 v2, v18, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v24

    .line 189
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 190
    add-int/lit8 v2, v18, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v21

    .line 192
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v25, v2, v17

    .line 193
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v26, v2, v17

    .line 194
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v17

    .line 195
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v17

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v25

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v26

    mul-float v4, v4, v23

    .line 198
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 199
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v23

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v23

    .line 197
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 185
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 143
    .end local v9    # "count":I
    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "curDx":F
    .end local v12    # "curDy":F
    .end local v13    # "diff":I
    .end local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v17    # "intensity":F
    .end local v18    # "j":I
    .end local v19    # "maxx":I
    .end local v20    # "minx":I
    .end local v21    # "next":Lcom/github/mikephil/charting/data/Entry;
    .end local v22    # "phaseX":F
    .end local v23    # "phaseY":F
    .end local v24    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .end local v25    # "prevDx":F
    .end local v26    # "prevDy":F
    .end local v27    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    .end local v28    # "size":I
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    goto/16 :goto_0

    .line 146
    .restart local v15    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v16    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 187
    .restart local v9    # "count":I
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .restart local v11    # "curDx":F
    .restart local v12    # "curDy":F
    .restart local v13    # "diff":I
    .restart local v17    # "intensity":F
    .restart local v18    # "j":I
    .restart local v19    # "maxx":I
    .restart local v20    # "minx":I
    .restart local v21    # "next":Lcom/github/mikephil/charting/data/Entry;
    .restart local v22    # "phaseX":F
    .restart local v23    # "phaseY":F
    .restart local v24    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v25    # "prevDx":F
    .restart local v26    # "prevDy":F
    .restart local v27    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v28    # "size":I
    :cond_2
    add-int/lit8 v2, v18, -0x2

    goto/16 :goto_3

    .line 202
    :cond_3
    add-int/lit8 v2, v14, -0x1

    move/from16 v0, v28

    if-le v0, v2, :cond_4

    .line 204
    const/4 v2, 0x3

    if-lt v14, v2, :cond_6

    add-int/lit8 v2, v14, -0x3

    :goto_4
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v27

    .line 206
    add-int/lit8 v2, v14, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v24

    .line 207
    add-int/lit8 v2, v14, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v10

    .line 208
    move-object/from16 v21, v10

    .line 210
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v25, v2, v17

    .line 211
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v27 .. v27}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v26, v2, v17

    .line 212
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v11, v2, v17

    .line 213
    invoke-virtual/range {v21 .. v21}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v2

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v12, v2, v17

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v3

    int-to-float v3, v3

    add-float v3, v3, v25

    invoke-virtual/range {v24 .. v24}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v4

    add-float v4, v4, v26

    mul-float v4, v4, v23

    .line 217
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v11

    .line 218
    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v6

    sub-float/2addr v6, v12

    mul-float v6, v6, v23

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v10}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v8

    mul-float v8, v8, v23

    .line 216
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 223
    .end local v9    # "count":I
    .end local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .end local v11    # "curDx":F
    .end local v12    # "curDy":F
    .end local v18    # "j":I
    .end local v21    # "next":Lcom/github/mikephil/charting/data/Entry;
    .end local v24    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .end local v25    # "prevDx":F
    .end local v26    # "prevDy":F
    .end local v27    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicFillPath:Landroid/graphics/Path;

    .line 229
    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v7

    invoke-virtual {v15}, Lcom/github/mikephil/charting/data/Entry;->getXIndex()I

    move-result v2

    add-int v8, v2, v28

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, v29

    .line 228
    invoke-virtual/range {v2 .. v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V

    .line 232
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->cubicPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 241
    return-void

    .line 204
    .restart local v9    # "count":I
    .restart local v10    # "cur":Lcom/github/mikephil/charting/data/Entry;
    .restart local v11    # "curDx":F
    .restart local v12    # "curDy":F
    .restart local v18    # "j":I
    .restart local v21    # "next":Lcom/github/mikephil/charting/data/Entry;
    .restart local v24    # "prev":Lcom/github/mikephil/charting/data/Entry;
    .restart local v25    # "prevDx":F
    .restart local v26    # "prevDy":F
    .restart local v27    # "prevPrev":Lcom/github/mikephil/charting/data/Entry;
    :cond_6
    add-int/lit8 v2, v14, -0x2

    goto/16 :goto_4
.end method

.method protected drawCubicFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Landroid/graphics/Path;Lcom/github/mikephil/charting/utils/Transformer;II)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .param p3, "spline"    # Landroid/graphics/Path;
    .param p4, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p5, "from"    # I
    .param p6, "to"    # I

    .prologue
    const/4 v2, 0x1

    .line 246
    sub-int v0, p6, p5

    if-gt v0, v2, :cond_0

    .line 262
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillFormatter()Lcom/github/mikephil/charting/formatter/FillFormatter;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    .line 250
    invoke-interface {v0, p2, v1}, Lcom/github/mikephil/charting/formatter/FillFormatter;->getFillLinePosition(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;)F

    move-result v8

    .line 252
    .local v8, "fillMin":F
    add-int/lit8 v0, p6, -0x1

    int-to-float v0, v0

    invoke-virtual {p3, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    int-to-float v0, p5

    invoke-virtual {p3, v0, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    invoke-virtual {p3}, Landroid/graphics/Path;->close()V

    .line 256
    invoke-virtual {p4, p3}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 257
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColorArray()Ljava/util/ArrayList;

    move-result-object v7

    .line 258
    .local v7, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 259
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result v3

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;IIII)V

    goto :goto_0

    .line 261
    :cond_1
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result v0

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result v1

    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method public drawData(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 82
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartWidth()F

    move-result v4

    float-to-int v3, v4

    .line 83
    .local v3, "width":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getChartHeight()F

    move-result v4

    float-to-int v0, v4

    .line 85
    .local v0, "height":I
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v3, :cond_0

    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 87
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v4, v0, :cond_1

    .line 89
    :cond_0
    if-lez v3, :cond_4

    if-lez v0, :cond_4

    .line 91
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 92
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 97
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 99
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 101
    .local v1, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 103
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 104
    invoke-virtual {p0, p1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_0

    .line 107
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    :cond_3
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 108
    .end local v1    # "lineData":Lcom/github/mikephil/charting/data/LineData;
    :cond_4
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .prologue
    .line 112
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getLineWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getDashPathEffect()Landroid/graphics/DashPathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 119
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCubicEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCubic(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    goto :goto_1
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawCircles(Landroid/graphics/Canvas;)V

    .line 497
    return-void
.end method

.method protected drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "filledPath"    # Landroid/graphics/Path;
    .param p3, "fillColor"    # I
    .param p4, "fillAlpha"    # I

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 379
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 381
    shl-int/lit8 v1, p4, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int v0, v1, v2

    .line 382
    .local v0, "color":I
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 383
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 384
    return-void
.end method

.method protected drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;IIII)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "filledPath"    # Landroid/graphics/Path;
    .param p3, "fillColor"    # I
    .param p4, "fillAlpha"    # I
    .param p5, "startColor"    # I
    .param p6, "endColor"    # I

    .prologue
    .line 388
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 389
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 391
    shl-int/lit8 v1, p4, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p3

    or-int v8, v1, v2

    .line 392
    .local v8, "color":I
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move/from16 v5, p6

    move v6, p5

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 393
    .local v0, "lg":Landroid/graphics/LinearGradient;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 394
    .local v9, "p":Landroid/graphics/Paint;
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 395
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 397
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 570
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p2

    if-ge v0, v6, :cond_2

    .line 572
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v6

    aget-object v7, p2, v0

    .line 573
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    .line 572
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 575
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isHighlightEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 570
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_1
    aget-object v6, p2, v0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v3

    .line 581
    .local v3, "xIndex":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getXChartMax()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 584
    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getYValForXIndex(I)F

    move-result v5

    .line 585
    .local v5, "yVal":F
    const/high16 v6, 0x7fc00000    # Float.NaN

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    .line 588
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    mul-float v4, v5, v6

    .line 592
    .local v4, "y":F
    const/4 v6, 0x2

    new-array v1, v6, [F

    const/4 v6, 0x0

    int-to-float v7, v3

    aput v7, v1, v6

    const/4 v6, 0x1

    aput v4, v1, v6

    .line 596
    .local v1, "pts":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 599
    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    goto :goto_1

    .line 601
    .end local v1    # "pts":[F
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .end local v3    # "xIndex":I
    .end local v4    # "y":F
    .end local v5    # "yVal":F
    :cond_2
    return-void
.end method

.method protected drawLinear(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V
    .locals 20
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .prologue
    .line 273
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v11

    .line 275
    .local v11, "entryCount":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineData;->getIndexOfDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)I

    move-result v10

    .line 277
    .local v10, "dataSetIndex":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v8

    .line 279
    .local v8, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v17

    .line 280
    .local v17, "phaseX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v18

    .line 282
    .local v18, "phaseY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 284
    const/4 v2, 0x0

    .line 287
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDashedLineEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mBitmapCanvas:Landroid/graphics/Canvas;

    .line 293
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v12

    .line 294
    .local v12, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    sget-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v13

    .line 296
    .local v13, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 297
    .local v16, "minx":I
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 299
    .local v15, "maxx":I
    sub-int v3, v15, v16

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v19, v3, -0x4

    .line 301
    .local v19, "range":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    aget-object v9, v3, v10

    .line 302
    .local v9, "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Lcom/github/mikephil/charting/buffer/LineBuffer;->setPhases(FF)V

    .line 303
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitFrom(I)V

    .line 304
    invoke-virtual {v9, v15}, Lcom/github/mikephil/charting/buffer/LineBuffer;->limitTo(I)V

    .line 305
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/github/mikephil/charting/buffer/LineBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;)V

    .line 307
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    invoke-virtual {v8, v3}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 310
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_8

    .line 312
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v4, v4, v14

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-nez v3, :cond_4

    .line 342
    .end local v14    # "j":I
    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 345
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawFilledEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v11, :cond_1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, v16

    move v7, v15

    .line 346
    invoke-virtual/range {v3 .. v8}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILcom/github/mikephil/charting/utils/Transformer;)V

    .line 348
    :cond_1
    return-void

    .line 290
    .end local v9    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .end local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v15    # "maxx":I
    .end local v16    # "minx":I
    .end local v19    # "range":I
    :cond_2
    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 293
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    goto/16 :goto_1

    .line 319
    .restart local v9    # "buffer":Lcom/github/mikephil/charting/buffer/LineBuffer;
    .restart local v12    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v13    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v14    # "j":I
    .restart local v15    # "maxx":I
    .restart local v16    # "minx":I
    .restart local v19    # "range":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x1

    aget v4, v4, v5

    .line 320
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x3

    aget v4, v4, v5

    .line 321
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x1

    aget v4, v4, v5

    .line 322
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x3

    aget v4, v4, v5

    .line 323
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v3

    if-nez v3, :cond_7

    .line 312
    :cond_6
    :goto_4
    add-int/lit8 v14, v14, 0x4

    goto/16 :goto_2

    .line 327
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v4, v14, 0x4

    add-int v4, v4, v16

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 329
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    aget v3, v3, v14

    iget-object v4, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v5, v14, 0x1

    aget v4, v4, v5

    iget-object v5, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v6, v14, 0x2

    aget v5, v5, v6

    iget-object v6, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    add-int/lit8 v7, v14, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 335
    .end local v14    # "j":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 338
    iget-object v3, v9, Lcom/github/mikephil/charting/buffer/LineBuffer;->buffer:[F

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    goto/16 :goto_3
.end method

.method protected drawLinearFill(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;IILcom/github/mikephil/charting/utils/Transformer;)V
    .locals 8
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .param p3, "minx"    # I
    .param p4, "maxx"    # I
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    .line 354
    invoke-direct {p0, p2, p3, p4}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->generateFilledPath(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;II)Landroid/graphics/Path;

    move-result-object v2

    .line 357
    .local v2, "filled":Landroid/graphics/Path;
    invoke-virtual {p5, v2}, Lcom/github/mikephil/charting/utils/Transformer;->pathValueToPixel(Landroid/graphics/Path;)V

    .line 359
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColorArray()Ljava/util/ArrayList;

    move-result-object v7

    .line 360
    .local v7, "colorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_0

    .line 361
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result v3

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result v4

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;IIII)V

    .line 366
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillColor()I

    move-result v0

    invoke-interface {p2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getFillAlpha()I

    move-result v1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawFilledPath(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V

    goto :goto_0
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getYValCount()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getMaxVisibleCount()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 441
    invoke-virtual {v7}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/mikephil/charting/data/LineData;->getDataSets()Ljava/util/List;

    move-result-object v15

    .line 445
    .local v15, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_6

    .line 447
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 449
    .local v2, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawValuesEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 445
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 453
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v1

    .line 458
    .local v1, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getCircleSize()F

    move-result v3

    const/high16 v4, 0x3fe00000    # 1.75f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v21, v0

    .line 460
    .local v21, "valOffset":I
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->isDrawCirclesEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    .line 461
    div-int/lit8 v21, v21, 0x2

    .line 463
    :cond_2
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v16

    .line 465
    .local v16, "entryCount":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    if-gez v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    sget-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->DOWN:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-interface {v2, v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v17

    .line 466
    .local v17, "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMaxX:I

    sget-object v4, Lcom/github/mikephil/charting/data/DataSet$Rounding;->UP:Lcom/github/mikephil/charting/data/DataSet$Rounding;

    invoke-interface {v2, v3, v4}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForXIndex(ILcom/github/mikephil/charting/data/DataSet$Rounding;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v18

    .line 468
    .local v18, "entryTo":Lcom/github/mikephil/charting/data/Entry;
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 469
    .local v5, "minx":I
    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryIndex(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v16

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 471
    .local v6, "maxx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 472
    invoke-virtual {v3}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v4}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v4

    .line 471
    invoke-virtual/range {v1 .. v6}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesLine(Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;FFII)[F

    move-result-object v20

    .line 474
    .local v20, "positions":[F
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_2
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_0

    .line 476
    aget v13, v20, v19

    .line 477
    .local v13, "x":F
    add-int/lit8 v3, v19, 0x1

    aget v22, v20, v3

    .line 479
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v3, v13}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v3

    if-nez v3, :cond_5

    .line 474
    :cond_3
    :goto_3
    add-int/lit8 v19, v19, 0x2

    goto :goto_2

    .line 465
    .end local v5    # "minx":I
    .end local v6    # "maxx":I
    .end local v13    # "x":F
    .end local v17    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v18    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v19    # "j":I
    .end local v20    # "positions":[F
    .end local v22    # "y":F
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mMinX:I

    goto :goto_1

    .line 485
    .restart local v5    # "minx":I
    .restart local v6    # "maxx":I
    .restart local v13    # "x":F
    .restart local v17    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .restart local v18    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .restart local v19    # "j":I
    .restart local v20    # "positions":[F
    .restart local v22    # "y":F
    :cond_5
    div-int/lit8 v3, v19, 0x2

    add-int/2addr v3, v5

    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v11

    .line 487
    .local v11, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v9

    invoke-virtual {v11}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v10

    move/from16 v0, v21

    int-to-float v3, v0

    sub-float v14, v22, v3

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_3

    .line 492
    .end local v1    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v2    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    .end local v5    # "minx":I
    .end local v6    # "maxx":I
    .end local v11    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v12    # "i":I
    .end local v13    # "x":F
    .end local v15    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;>;"
    .end local v16    # "entryCount":I
    .end local v17    # "entryFrom":Lcom/github/mikephil/charting/data/Entry;
    .end local v18    # "entryTo":Lcom/github/mikephil/charting/data/Entry;
    .end local v19    # "j":I
    .end local v20    # "positions":[F
    .end local v21    # "valOffset":I
    .end local v22    # "y":F
    :cond_6
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 68
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/LineDataProvider;->getLineData()Lcom/github/mikephil/charting/data/LineData;

    move-result-object v1

    .line 69
    .local v1, "lineData":Lcom/github/mikephil/charting/data/LineData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/LineBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    .line 70
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/LineData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/CircleBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 73
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/LineData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;

    .line 74
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mLineBuffers:[Lcom/github/mikephil/charting/buffer/LineBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/LineBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, -0x4

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/LineBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 75
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mCircleBuffers:[Lcom/github/mikephil/charting/buffer/CircleBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/CircleBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/CircleBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/ILineDataSet;
    :cond_0
    return-void
.end method

.method public releaseBitmap()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/renderer/LineChartRenderer;->mDrawBitmap:Landroid/graphics/Bitmap;

    .line 611
    :cond_0
    return-void
.end method
