.class public Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;
.super Lcom/github/mikephil/charting/renderer/BarChartRenderer;
.source "HorizontalBarChartRenderer.java"


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V
    .locals 2
    .param p1, "chart"    # Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;
    .param p2, "animator"    # Lcom/github/mikephil/charting/animation/ChartAnimator;
    .param p3, "viewPortHandler"    # Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/github/mikephil/charting/renderer/BarChartRenderer;-><init>(Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;Lcom/github/mikephil/charting/animation/ChartAnimator;Lcom/github/mikephil/charting/utils/ViewPortHandler;)V

    .line 33
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected drawDataSet(Landroid/graphics/Canvas;Lcom/github/mikephil/charting/data/BarDataSet;I)V
    .locals 12
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "dataSet"    # Lcom/github/mikephil/charting/data/BarDataSet;
    .param p3, "index"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v11

    .line 54
    .local v11, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarShadowColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v9

    .line 57
    .local v9, "phaseX":F
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v10

    .line 59
    .local v10, "phaseY":F
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getYVals()Ljava/util/List;

    move-result-object v7

    .line 62
    .local v7, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/data/BarEntry;>;"
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    aget-object v6, v0, p3

    .line 63
    .local v6, "buffer":Lcom/github/mikephil/charting/buffer/BarBuffer;
    invoke-virtual {v6, v9, v10}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setPhases(FF)V

    .line 64
    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getBarSpace()F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setBarSpace(F)V

    .line 65
    invoke-virtual {v6, p3}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setDataSet(I)V

    .line 66
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-virtual {p2}, Lcom/github/mikephil/charting/data/BarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/github/mikephil/charting/buffer/BarBuffer;->setInverted(Z)V

    .line 68
    invoke-virtual {v6, p2}, Lcom/github/mikephil/charting/buffer/BarBuffer;->feed(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;)V

    .line 70
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    invoke-virtual {v11, v0}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 72
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual {v6}, Lcom/github/mikephil/charting/buffer/BarBuffer;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    iget-object v1, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    :goto_1
    add-int/lit8 v8, v8, 0x4

    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawBarShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentLeft()F

    move-result v1

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 82
    invoke-virtual {v0}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->contentRight()F

    move-result v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 81
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    div-int/lit8 v1, v8, 0x4

    invoke-virtual {p2, v1}, Lcom/github/mikephil/charting/data/BarDataSet;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    aget v1, v0, v8

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v3, v8, 0x2

    aget v3, v0, v3

    iget-object v0, v6, Lcom/github/mikephil/charting/buffer/BarBuffer;->buffer:[F

    add-int/lit8 v4, v8, 0x3

    aget v4, v0, v4

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mRenderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "valueText"    # Ljava/lang/String;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 261
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 262
    return-void
.end method

.method public drawValues(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->passesCheck()Z

    move-result v30

    if-eqz v30, :cond_18

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/data/BarData;->getDataSets()Ljava/util/List;

    move-result-object v5

    .line 102
    .local v5, "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    const/high16 v30, 0x40a00000    # 5.0f

    invoke-static/range {v30 .. v30}, Lcom/github/mikephil/charting/utils/Utils;->convertDpToPixel(F)F

    move-result v25

    .line 103
    .local v25, "valueOffsetPlus":F
    const/16 v18, 0x0

    .line 104
    .local v18, "posOffset":F
    const/16 v16, 0x0

    .line 105
    .local v16, "negOffset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isDrawValueAboveBarEnabled()Z

    move-result v6

    .line 107
    .local v6, "drawValueAboveBar":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_18

    .line 109
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 111
    .local v4, "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isDrawValuesEnabled()Z

    move-result v30

    if-eqz v30, :cond_0

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryCount()I

    move-result v30

    if-nez v30, :cond_1

    .line 107
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 114
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->isInverted(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Z

    move-result v13

    .line 117
    .local v13, "isInverted":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->applyValueTextStyle(Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    const-string v31, "10"

    invoke-static/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/Utils;->calcTextHeight(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x40000000    # 2.0f

    div-float v10, v30, v31

    .line 120
    .local v10, "halfTextHeight":F
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getValueFormatter()Lcom/github/mikephil/charting/formatter/ValueFormatter;

    move-result-object v9

    .line 122
    .local v9, "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    move-object/from16 v30, v0

    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getAxisDependency()Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getTransformer(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)Lcom/github/mikephil/charting/utils/Transformer;

    move-result-object v20

    .line 124
    .local v20, "trans":Lcom/github/mikephil/charting/utils/Transformer;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4, v11}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)[F

    move-result-object v26

    .line 127
    .local v26, "valuePoints":[F
    invoke-interface {v4}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v30

    if-nez v30, :cond_8

    .line 129
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v32

    mul-float v31, v31, v32

    cmpg-float v30, v30, v31

    if-gez v30, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v30

    if-nez v30, :cond_3

    .line 129
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_1

    .line 137
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 140
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v30

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 141
    .local v7, "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v22

    .line 142
    .local v22, "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v9, v0, v7, v11, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 146
    .local v27, "valueTextWidth":F
    if-eqz v6, :cond_5

    move/from16 v18, v25

    .line 147
    :goto_3
    if-eqz v6, :cond_6

    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v16, v0

    .line 149
    :goto_4
    if-eqz v13, :cond_4

    .line 150
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v18, v30, v27

    .line 151
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v16, v30, v27

    .line 154
    :cond_4
    aget v31, v26, v14

    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-ltz v30, :cond_7

    move/from16 v30, v18

    :goto_5
    add-float v30, v30, v31

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    add-float v31, v31, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_2

    .line 146
    :cond_5
    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_3

    :cond_6
    move/from16 v16, v25

    .line 147
    goto :goto_4

    :cond_7
    move/from16 v30, v16

    .line 154
    goto :goto_5

    .line 161
    .end local v7    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "formattedValue":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v22    # "val":F
    .end local v27    # "valueTextWidth":F
    :cond_8
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_6
    int-to-float v0, v14

    move/from16 v30, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseX()F

    move-result v32

    mul-float v31, v31, v32

    cmpg-float v30, v30, v31

    if-gez v30, :cond_0

    .line 163
    div-int/lit8 v30, v14, 0x2

    move/from16 v0, v30

    invoke-interface {v4, v0}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->getEntryForIndex(I)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v7

    check-cast v7, Lcom/github/mikephil/charting/data/BarEntry;

    .line 165
    .restart local v7    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVals()[F

    move-result-object v23

    .line 170
    .local v23, "vals":[F
    if-nez v23, :cond_f

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    aget v31, v26, v14

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v30

    if-nez v30, :cond_a

    .line 161
    :cond_9
    :goto_7
    add-int/lit8 v14, v14, 0x2

    goto :goto_6

    .line 178
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    invoke-virtual/range {v30 .. v31}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 181
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v22

    .line 182
    .restart local v22    # "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v9, v0, v7, v11, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v8

    .line 185
    .restart local v8    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 186
    .restart local v27    # "valueTextWidth":F
    if-eqz v6, :cond_c

    move/from16 v18, v25

    .line 187
    :goto_8
    if-eqz v6, :cond_d

    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v16, v0

    .line 189
    :goto_9
    if-eqz v13, :cond_b

    .line 190
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v18, v30, v27

    .line 191
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v16, v30, v27

    .line 194
    :cond_b
    aget v31, v26, v14

    .line 195
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getVal()F

    move-result v30

    const/16 v32, 0x0

    cmpl-float v30, v30, v32

    if-ltz v30, :cond_e

    move/from16 v30, v18

    :goto_a
    add-float v30, v30, v31

    add-int/lit8 v31, v14, 0x1

    aget v31, v26, v31

    add-float v31, v31, v10

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_7

    .line 186
    :cond_c
    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_8

    :cond_d
    move/from16 v16, v25

    .line 187
    goto :goto_9

    :cond_e
    move/from16 v30, v16

    .line 195
    goto :goto_a

    .line 200
    .end local v8    # "formattedValue":Ljava/lang/String;
    .end local v22    # "val":F
    .end local v27    # "valueTextWidth":F
    :cond_f
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 202
    .local v21, "transformed":[F
    const/16 v19, 0x0

    .line 203
    .local v19, "posY":F
    invoke-virtual {v7}, Lcom/github/mikephil/charting/data/BarEntry;->getNegativeSum()F

    move-result v30

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v17, v0

    .line 205
    .local v17, "negY":F
    const/4 v15, 0x0

    .local v15, "k":I
    const/4 v12, 0x0

    .local v12, "idx":I
    :goto_b
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_11

    .line 207
    aget v24, v23, v12

    .line 210
    .local v24, "value":F
    const/16 v30, 0x0

    cmpl-float v30, v24, v30

    if-ltz v30, :cond_10

    .line 211
    add-float v19, v19, v24

    .line 212
    move/from16 v29, v19

    .line 218
    .local v29, "y":F
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v30

    mul-float v30, v30, v29

    aput v30, v21, v15

    .line 205
    add-int/lit8 v15, v15, 0x2

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 214
    .end local v29    # "y":F
    :cond_10
    move/from16 v29, v17

    .line 215
    .restart local v29    # "y":F
    sub-float v17, v17, v24

    goto :goto_c

    .line 221
    .end local v24    # "value":F
    .end local v29    # "y":F
    :cond_11
    invoke-virtual/range {v20 .. v21}, Lcom/github/mikephil/charting/utils/Transformer;->pointValuesToPixel([F)V

    .line 223
    const/4 v15, 0x0

    :goto_d
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v15, v0, :cond_9

    .line 225
    div-int/lit8 v30, v15, 0x2

    aget v22, v23, v30

    .line 226
    .restart local v22    # "val":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v9, v0, v7, v11, v1}, Lcom/github/mikephil/charting/formatter/ValueFormatter;->getFormattedValue(FLcom/github/mikephil/charting/data/Entry;ILcom/github/mikephil/charting/utils/ViewPortHandler;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .restart local v8    # "formattedValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mValuePaint:Landroid/graphics/Paint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-static {v0, v8}, Lcom/github/mikephil/charting/utils/Utils;->calcTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v27, v0

    .line 230
    .restart local v27    # "valueTextWidth":F
    if-eqz v6, :cond_14

    move/from16 v18, v25

    .line 231
    :goto_e
    if-eqz v6, :cond_15

    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v16, v0

    .line 233
    :goto_f
    if-eqz v13, :cond_12

    .line 234
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v18, v30, v27

    .line 235
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v30, v0

    sub-float v16, v30, v27

    .line 238
    :cond_12
    aget v31, v21, v15

    const/16 v30, 0x0

    cmpl-float v30, v22, v30

    if-ltz v30, :cond_16

    move/from16 v30, v18

    :goto_10
    add-float v28, v31, v30

    .line 240
    .local v28, "x":F
    add-int/lit8 v30, v14, 0x1

    aget v29, v26, v30

    .line 242
    .restart local v29    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsTop(F)Z

    move-result v30

    if-eqz v30, :cond_9

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsX(F)Z

    move-result v30

    if-nez v30, :cond_17

    .line 223
    :cond_13
    :goto_11
    add-int/lit8 v15, v15, 0x2

    goto :goto_d

    .line 230
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_14
    add-float v30, v27, v25

    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v18, v0

    goto :goto_e

    :cond_15
    move/from16 v16, v25

    .line 231
    goto :goto_f

    :cond_16
    move/from16 v30, v16

    .line 238
    goto :goto_10

    .line 248
    .restart local v28    # "x":F
    .restart local v29    # "y":F
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->isInBoundsBottom(F)Z

    move-result v30

    if-eqz v30, :cond_13

    .line 251
    add-float v30, v29, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, v30

    invoke-virtual {v0, v1, v8, v2, v3}, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->drawValue(Landroid/graphics/Canvas;Ljava/lang/String;FF)V

    goto :goto_11

    .line 258
    .end local v4    # "dataSet":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .end local v5    # "dataSets":Ljava/util/List;, "Ljava/util/List<Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;>;"
    .end local v6    # "drawValueAboveBar":Z
    .end local v7    # "e":Lcom/github/mikephil/charting/data/BarEntry;
    .end local v8    # "formattedValue":Ljava/lang/String;
    .end local v9    # "formatter":Lcom/github/mikephil/charting/formatter/ValueFormatter;
    .end local v10    # "halfTextHeight":F
    .end local v11    # "i":I
    .end local v12    # "idx":I
    .end local v13    # "isInverted":Z
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "negOffset":F
    .end local v17    # "negY":F
    .end local v18    # "posOffset":F
    .end local v19    # "posY":F
    .end local v20    # "trans":Lcom/github/mikephil/charting/utils/Transformer;
    .end local v21    # "transformed":[F
    .end local v22    # "val":F
    .end local v23    # "vals":[F
    .end local v25    # "valueOffsetPlus":F
    .end local v26    # "valuePoints":[F
    .end local v27    # "valueTextWidth":F
    .end local v28    # "x":F
    .end local v29    # "y":F
    :cond_18
    return-void
.end method

.method public getTransformedValues(Lcom/github/mikephil/charting/utils/Transformer;Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;I)[F
    .locals 2
    .param p1, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;
    .param p2, "data"    # Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    .param p3, "dataSetIndex"    # I

    .prologue
    .line 281
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    .line 282
    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v1}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v1

    .line 281
    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/github/mikephil/charting/utils/Transformer;->generateTransformedValuesHorizontalBarChart(Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;ILcom/github/mikephil/charting/data/BarData;F)[F

    move-result-object v0

    return-object v0
.end method

.method public initBuffers()V
    .locals 9

    .prologue
    .line 39
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v3}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    .line 40
    .local v0, "barData":Lcom/github/mikephil/charting/data/BarData;
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v3

    new-array v3, v3, [Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

    iput-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 43
    invoke-virtual {v0, v1}, Lcom/github/mikephil/charting/data/BarData;->getDataSetByIndex(I)Lcom/github/mikephil/charting/interfaces/datasets/IDataSet;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;

    .line 44
    .local v2, "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarBuffers:[Lcom/github/mikephil/charting/buffer/BarBuffer;

    new-instance v5, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;

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

    .line 45
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getGroupSpace()F

    move-result v6

    .line 46
    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getDataSetCount()I

    move-result v7

    invoke-interface {v2}, Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;->isStacked()Z

    move-result v8

    invoke-direct {v5, v3, v6, v7, v8}, Lcom/github/mikephil/charting/buffer/HorizontalBarBuffer;-><init>(IFIZ)V

    aput-object v5, v4, v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v3, 0x1

    goto :goto_1

    .line 48
    .end local v2    # "set":Lcom/github/mikephil/charting/interfaces/datasets/IBarDataSet;
    :cond_1
    return-void
.end method

.method protected passesCheck()Z
    .locals 3

    .prologue
    .line 287
    iget-object v0, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v0}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getBarData()Lcom/github/mikephil/charting/data/BarData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/mikephil/charting/data/BarData;->getYValCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mChart:Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;

    invoke-interface {v1}, Lcom/github/mikephil/charting/interfaces/dataprovider/BarDataProvider;->getMaxVisibleCount()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mViewPortHandler:Lcom/github/mikephil/charting/utils/ViewPortHandler;

    .line 288
    invoke-virtual {v2}, Lcom/github/mikephil/charting/utils/ViewPortHandler;->getScaleY()F

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
    .locals 6
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "barspaceHalf"    # F
    .param p5, "trans"    # Lcom/github/mikephil/charting/utils/Transformer;

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    .line 268
    sub-float v4, p1, v5

    add-float v3, v4, p4

    .line 269
    .local v3, "top":F
    add-float v4, p1, v5

    sub-float v0, v4, p4

    .line 270
    .local v0, "bottom":F
    move v1, p2

    .line 271
    .local v1, "left":F
    move v2, p3

    .line 273
    .local v2, "right":F
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 275
    iget-object v4, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mBarRect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/github/mikephil/charting/renderer/HorizontalBarChartRenderer;->mAnimator:Lcom/github/mikephil/charting/animation/ChartAnimator;

    invoke-virtual {v5}, Lcom/github/mikephil/charting/animation/ChartAnimator;->getPhaseY()F

    move-result v5

    invoke-virtual {p5, v4, v5}, Lcom/github/mikephil/charting/utils/Transformer;->rectValueToPixelHorizontal(Landroid/graphics/RectF;F)V

    .line 276
    return-void
.end method
