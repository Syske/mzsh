.class public Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;
.super Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;
.source "ScatterChartRenderer.java"


# instance fields
.field protected mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

.field protected mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 30
    invoke-direct {p0, p2, p3}, Lcom/github/mikephil/charting/renderer/LineScatterCandleRadarRenderer;-><init>(Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 31
    iput-object p1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    return-void
.end method


# virtual methods
.method public drawData(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 52
    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    .line 54
    .local v0, "scatterData":Lcom/github/mikephil/charting/data/ScatterData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

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

    check-cast v1, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 56
    .local v1, "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-virtual {p0, p1, v1}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    goto :goto_0

    .line 59
    .end local v1    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    :cond_1
    return-void
.end method

.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v13

    .line 65
    .local v13, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 66
    .local v9, "phaseX":F
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 68
    .local v10, "phaseY":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 70
    .local v12, "shapeHalf":F
    invoke-interface/range {p2 .. p2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShape()Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;

    move-result-object v11

    .line 72
    .local v11, "shape":Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/data/ScatterData;->getIndexOfDataSet(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)I

    move-result v2

    aget-object v7, v1, v2

    .line 74
    .local v7, "buffer":Lcom/github/mikephil/charting/buffer/ScatterBuffer;
    invoke-virtual {v7, v9, v10}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->setPhases(FF)V

    .line 75
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;)V

    .line 77
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    invoke-virtual {v13, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 79
    sget-object v1, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer$1;->$SwitchMap$com$github$mikephil$charting$charts$ScatterChart$ScatterShape:[I

    invoke-virtual {v11}, Lcom/github/mikephil/charting/charts/ScatterChart$ScatterShape;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 195
    :cond_0
    return-void

    .line 82
    :pswitch_0
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    .line 90
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    sub-float v2, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v1, v1, v3

    sub-float v3, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    add-float v4, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v8, 0x1

    aget v1, v1, v5

    add-float v5, v1, v12

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 102
    .end local v8    # "i":I
    :pswitch_1
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    .line 110
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 113
    :cond_4
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 120
    .end local v8    # "i":I
    :pswitch_2
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    new-instance v14, Landroid/graphics/Path;

    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 125
    .local v14, "tri":Landroid/graphics/Path;
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    .line 131
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_6

    .line 125
    :cond_5
    :goto_5
    add-int/lit8 v8, v8, 0x2

    goto :goto_4

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    sub-float/2addr v2, v12

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 136
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    add-float/2addr v1, v12

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v12

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    sub-float/2addr v1, v12

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    add-float/2addr v2, v12

    invoke-virtual {v14, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 138
    invoke-virtual {v14}, Landroid/graphics/Path;->close()V

    .line 140
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 141
    invoke-virtual {v14}, Landroid/graphics/Path;->reset()V

    goto :goto_5

    .line 146
    .end local v8    # "i":I
    .end local v14    # "tri":Landroid/graphics/Path;
    :pswitch_3
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_6
    invoke-virtual {v7}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v2, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v2, v2, v3

    .line 154
    invoke-virtual {v1, v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v1

    if-nez v1, :cond_8

    .line 148
    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x2

    goto :goto_6

    .line 157
    :cond_8
    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    sub-float v2, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v3, v1, v3

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v1, v1, v8

    add-float v4, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v8, 0x1

    aget v5, v1, v5

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 162
    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v2, v1, v8

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x1

    aget v1, v1, v3

    sub-float v3, v1, v12

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    aget v4, v1, v8

    iget-object v1, v7, Lcom/github/mikephil/charting/buffer/ScatterBuffer;->buffer:[F

    add-int/lit8 v5, v8, 0x1

    aget v1, v1, v5

    add-float v5, v1, v12

    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_7

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public drawExtras(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    return-void
.end method

.method public drawHighlighted(Landroid/graphics/Canvas;[Lcom/github/mikephil/charting/highlight/Highlight;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "indices"    # [Lcom/github/mikephil/charting/highlight/Highlight;

    .prologue
    .line 248
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, p2

    if-ge v0, v6, :cond_2

    .line 250
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v6}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v6

    aget-object v7, p2, v0

    .line 251
    invoke-virtual {v7}, Lcom/github/mikephil/charting/highlight/Highlight;->getDataSetIndex()I

    move-result v7

    .line 250
    invoke-virtual {v6, v7}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 253
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->isHighlightEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 248
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    aget-object v6, p2, v0

    invoke-virtual {v6}, Lcom/github/mikephil/charting/highlight/Highlight;->getXIndex()I

    move-result v3

    .line 260
    .local v3, "xIndex":I
    int-to-float v6, v3

    iget-object v7, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getXChartMax()F

    move-result v7

    iget-object v8, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v8}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v8

    mul-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_0

    .line 263
    invoke-interface {v2, v3}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getYValForXIndex(I)F

    move-result v5

    .line 264
    .local v5, "yVal":F
    const/high16 v6, 0x7fc00000    # Float.NaN

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_0

    .line 267
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v6}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v6

    mul-float v4, v5, v6

    .line 269
    .local v4, "y":F
    const/4 v6, 0x2

    new-array v1, v6, [F

    const/4 v6, 0x0

    int-to-float v7, v3

    aput v7, v1, v6

    const/4 v6, 0x1

    aput v4, v1, v6

    .line 273
    .local v1, "pts":[F
    iget-object v6, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 276
    invoke-virtual {p0, p1, v1, v2}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawHighlightLines(Landroid/graphics/Canvas;[FLcom/github/mikephil/charting/interfaces/datasets/ILineScatterCandleRadarDataSet;)V

    goto :goto_1

    .line 278
    .end local v1    # "pts":[F
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .end local v3    # "xIndex":I
    .end local v4    # "y":F
    .end local v5    # "yVal":F
    :cond_2
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 202
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSets()Ljava/util/List;

    move-result-object v9

    .line 206
    .local v9, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetCount()I

    move-result v0

    if-ge v5, v0, :cond_4

    .line 208
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 210
    .local v8, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->isDrawValuesEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 206
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-virtual {p0, v8}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 216
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    .line 218
    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 217
    invoke-virtual {v0, v8, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesScatter(Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;F)[F

    move-result-object v11

    .line 220
    .local v11, "positions":[F
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getScatterShapeSize()F

    move-result v12

    .line 222
    .local v12, "shapeSize":F
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    int-to-float v0, v10

    array-length v1, v11

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v2}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v2

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v1, v11, v10

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsRight(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    aget v1, v11, v10

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsLeft(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    add-int/lit8 v1, v10, 0x1

    aget v1, v11, v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsY(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    :cond_2
    :goto_2
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 232
    :cond_3
    div-int/lit8 v0, v10, 0x2

    invoke-interface {v8, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v4

    .line 234
    .local v4, "entry":Lcom/github/mikephil/charting/data/Entry;
    invoke-interface {v8}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v2

    invoke-virtual {v4}, Lcom/github/mikephil/charting/data/Entry;->getVal()F

    move-result v3

    aget v6, v11, v10

    add-int/lit8 v0, v10, 0x1

    aget v0, v11, v0

    sub-float v7, v0, v12

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->drawValue(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/formatter/ValueFormatter;FLcom/github/mikephil/charting/data/Entry;IFF)V

    goto :goto_2

    .line 239
    .end local v4    # "entry":Lcom/github/mikephil/charting/data/Entry;
    .end local v5    # "i":I
    .end local v8    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    .end local v9    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;>;"
    .end local v10    # "j":I
    .end local v11    # "positions":[F
    .end local v12    # "shapeSize":F
    :cond_4
    return-void
.end method

.method public initBuffers()V
    .locals 6

    .prologue
    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/ScatterDataProvider;->getScatterData()Lcom/github/mikephil/charting/data/ScatterData;

    move-result-object v1

    .line 41
    .local v1, "scatterData":Lcom/github/mikephil/charting/data/ScatterData;
    invoke-virtual {v1}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 44
    invoke-virtual {v1, v0}, Lcom/github/mikephil/charting/data/ScatterData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;

    .line 45
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/ScatterChartRenderer;->mScatterBuffers:[Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    new-instance v4, Lcom/github/mikephil/charting/buffer/ScatterBuffer;

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;->getEntryCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Lcom/github/mikephil/charting/buffer/ScatterBuffer;-><init>(I)V

    aput-object v4, v3, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IScatterDataSet;
    :cond_0
    return-void
.end method
